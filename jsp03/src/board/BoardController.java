package board;

import board.dao.BoardDAO;
import board.dto.BoardCommentDTO;
import board.dto.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import common.Constants;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;


@WebServlet("/board_servlet/*")
public class BoardController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String url = request.getRequestURL().toString();
        BoardDAO dao = new BoardDAO();
        if (url.contains("list.do")) {
            List<BoardDTO> list = dao.list();
            request.setAttribute("list", list);
            String page = "/board/list.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
        } else if (url.contains("insert.do")) {
            BoardDTO dto = new BoardDTO();
            File uploadDir = new File(Constants.UPLOAD_PATH);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD, "utf-8", new DefaultFileRenamePolicy());
            String filename = " ";
            int filesize = 0;
            try {
                Enumeration files = multi.getFileNames();
                while (files.hasMoreElements()) {
                    String file1 = (String) files.nextElement();
                    filename = multi.getFilesystemName(file1);
                    File f1 = multi.getFile(file1);
                    if (f1 != null) filesize = (int) f1.length();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            String writer = multi.getParameter("writer");
            String subject = multi.getParameter("subject");
            System.out.println(">>>>>>>>>>>>>>>>>>" + subject);
            String content = multi.getParameter("content");
            String passwd = multi.getParameter("passwd");
            String ip = request.getRemoteAddr();
            dto.setWriter(writer);
            dto.setSubject(subject);
            dto.setContent(content);
            dto.setPasswd(passwd);
            dto.setIp(ip);
            if (filename == null || filename.trim().equals("")) {
                filename = "-";
            }
            dto.setFilename(filename);
            dto.setFilesize(filesize);
            dao.insert(dto);
            response.sendRedirect("/board_servlet/list.do");
        } else if (url.contains("download.do")) {
            int num = Integer.parseInt(request.getParameter("num"));
            System.out.println("게시물 번호 : " + num);
            String filename = dao.getFileName(num);
            System.out.println("첨부 파일 이름 : " + filename);

            String path = Constants.UPLOAD_PATH + filename;
            byte[] b = new byte[4096];
            FileInputStream fis = new FileInputStream(path);
            String mimeType = getServletContext().getMimeType(path);
            if (mimeType == null) {
                mimeType = "application/octet-stream; charset=utf-8";
            }
            filename = new String(filename.getBytes("ms949"), "8859_1");
            response.setHeader("Content-Disposition", "attachment;filename=" + filename);
            ServletOutputStream out = response.getOutputStream();
            int numRead;
            while (true) {
                numRead = fis.read(b, 0, b.length);
                if (numRead == -1) break;
                out.write(b, 0, numRead);
            }
            out.flush();
            out.close();
            fis.close();
            dao.plusDown(num);
        } else if (url.contains("view.do")) {
            int num = Integer.parseInt(request.getParameter("num"));
            dao.plusReadCount(num);
            BoardDTO dto = dao.view(num);
            request.setAttribute("dto", dto);
            String page = "/board/view.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
        } else if (url.contains("comment_add.do")) {
            BoardCommentDTO dto = new BoardCommentDTO();
            dto.setBoard_num(Integer.parseInt(request.getParameter("board_num")));
            dto.setWriter(request.getParameter("writer"));
            dto.setContent(request.getParameter("content"));
            dao.commentAdd(dto);
        } else if (url.contains("commentList.do")) {
            int num = Integer.parseInt(request.getParameter("num"));
            List<BoardCommentDTO> list = dao.commentList(num);
            request.setAttribute("list", list);
            String page = "/board/comment_list.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
        } else if (url.contains("pass_check.do")) {
            int num = Integer.parseInt(request.getParameter("num"));
            System.out.println(">>>>>>" + num);
            String passwd = request.getParameter("passwd");
            String result = dao.passwdCheck(num, passwd);
            String page = "";
            if (result != null) {
                page = "/board/edit.jsp";
                request.setAttribute("dto", dao.view(num));
                RequestDispatcher rd = request.getRequestDispatcher(page);
                rd.forward(request, response);
            } else {
                page = "/board_servlet/view.do?num=" + num + "&message=error";
                response.sendRedirect(page);
            }
        } else if (url.contains("update.do")) {
            BoardDTO dto = new BoardDTO();
            MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD, "utf-8", new DefaultFileRenamePolicy());
            String filename = " ";
            int filesize = 0;
            try {
                Enumeration files = multi.getFileNames();
                while (files.hasMoreElements()) {
                    String file1 = (String) files.nextElement();
                    filename = multi.getFilesystemName(file1);
                    File f1 = multi.getFile(file1);
                    if (f1 != null) {
                        filesize = (int) f1.length();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            String writer = multi.getParameter("writer");
            String subject = multi.getParameter("subject");
            String content = multi.getParameter("content");
            String passwd = multi.getParameter("passwd");
            String ip = request.getRemoteAddr();
            int num = Integer.parseInt(multi.getParameter("num"));
            dto.setNum(num);
            dto.setWriter(writer);
            dto.setSubject(subject);
            dto.setContent(content);
            dto.setPasswd(passwd);
            dto.setIp(ip);

            if (filename == null || filename.trim().equals("")) {
                BoardDTO dto2 = dao.view(num);
                String fName = dto2.getFilename();
                int fSize = dto2.getFilesize();
                int fDown = dto2.getDown();
                dto.setFilename(fName);
                dto.setFilesize(fSize);
                dto.setDown(fDown);
            } else {
                dto.setFilename(filename);
                dto.setFilesize(filesize);
            }
            String result = dao.passwdCheck(num, passwd);
            if (result != null) {
                dao.update(dto);
                String page = "/board_servlet/list.do";
                response.sendRedirect(page);
            } else {
                request.setAttribute("dto", dto);
                String page = "/board/edit.jsp?pwd_error=y";
                RequestDispatcher rd = request.getRequestDispatcher(page);
                rd.forward(request, response);
            }
        } else if (url.contains("delete.do")) {
            MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD, "utf-8", new DefaultFileRenamePolicy());
            //삭제할 게시물 번호
            int num = Integer.parseInt(multi.getParameter("num"));
            //레코드가 삭제됨
            dao.delete(num);
            response.sendRedirect("/board_servlet/list.do");
        } else if (url.contains("reply.do")) {
            int num = Integer.parseInt(request.getParameter("num"));
            BoardDTO dto = dao.view(num);
            dto.setContent("===게시물의 내용===\n" + dto.getContent());
            request.setAttribute("dto", dto);
            //답변 작성 페이지로 이동
            String page = "/board/reply.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
        } else if (url.contains("insertReply.do")) {
            request.setCharacterEncoding("utf-8");
            int num = Integer.parseInt(request.getParameter("num")); //원글 번호
            BoardDTO dto = dao.view(num); //원글 내용
            int ref = dto.getRef(); //원글의 ref값(게시물 그룹 번호)
            int re_step = dto.getRe_step() + 1; // 원글의 출력순번 + 1
            int re_level = dto.getRe_level() + 1; //원글의 답변단계 + 1
            String writer = request.getParameter("writer");
            String subject = request.getParameter("subject");
            String content = request.getParameter("content");
            String passwd = request.getParameter("passwd");
            dto.setWriter(writer);
            dto.setSubject(subject);
            dto.setContent(content);
            dto.setPasswd(passwd);
            dto.setRef(ref);
            dto.setRe_step(re_step);
            dto.setRe_level(re_level);
            dto.setFilename("-"); //첨부파일 관련 정보는 기본값으로 처리(파일 업로드 기능 생략)
            dto.setFilesize(0);
            dto.setDown(0);
            dao.updateStep(ref, re_step); //답변글들의 출력 순번 조정
            dao.reply(dto); //답변글 저장
            response.sendRedirect("/board_servlet/list.do"); //목록으로 이동
        } else if (url.contains("search.do")) {
            request.setCharacterEncoding("utf-8");
            //검색 옵션
            String search_option = request.getParameter("search_option");
            //검색 키워드
            String keyword = request.getParameter("keyword");
            //검색된 목록이 리스트로 넘어옴
            List<BoardDTO> list = dao.searchList(search_option, keyword);
            //출력 페이지로 넘기기 전에 저장
            request.setAttribute("list", list);
            //출력 페이지로 이동
            String page = "/board/list.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
        }

    }//doGet()의 끝

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doGet(request, response);
    }
}
