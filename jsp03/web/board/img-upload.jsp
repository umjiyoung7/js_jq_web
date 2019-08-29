<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.FileUpload" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%


    final int MEMORY_THRESHOLD = 1024 * 1024 * 3;
    final int MAX_FILE_SIZE = 1024 * 1024 * 40;

    // request 로 들어온 데이터 저장할 변수 선언
    Map<String, String> user = new HashMap<String, String>();

    // 이미지는 서버에 저장
    String saveDir = application.getRealPath("/image/"); // 저장할 경로 지정
    System.out.println("이미지 저장경로 : " + saveDir);

    // 유효한 request 인지 확인
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    String fileName = ""; // 업로드한 파일의 이름을 저장할 변수 설정

    try {
        if (isMultipart) {
            DiskFileItemFactory factory = new DiskFileItemFactory();

            factory.setSizeThreshold(MEMORY_THRESHOLD);

            //보안측면에서 코딩함.
            ServletContext servletContext = this.getServletConfig().getServletContext();
            File repository = (File)
                    servletContext.getAttribute("javax.servlet.context.tempdir");
            System.out.println(">>>> repository : " + repository);
            factory.setRepository(repository);

            // 파일 업로드 핸들러 생성
            ServletFileUpload upload = new ServletFileUpload(factory);
            // 업로드 파일 사이즈 제한 설정
            upload.setFileSizeMax(MAX_FILE_SIZE);
            // 한글 인코딩
            upload.setHeaderEncoding("UTF-8");

            // request parsing
            List<FileItem> items;
            items = upload.parseRequest(request);
            Iterator<FileItem> iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = iter.next();
                System.out.println("item.isFormField() : " + item.isFormField());
                // 한글 인코딩
                item.getString("UTF-8");

                if (item.isFormField()) {
                    // file 형식이 아닐 때
                    String name = item.getFieldName(); // 필드 이름
                    System.out.println("name : " + name);
                    String value = new String((item.getString()).getBytes("8859_1"), "utf-8"); // 필드 값, 한글 인코딩
                    System.out.println("value : " + value);
                    user.put(name, value);
                } else {
                    // file 형식일 때
                    String fieldName = item.getFieldName();
                    String file_name = item.getName();
                    String contentType = item.getContentType();
                    boolean isInMemoy = item.isInMemory();
                    long sizeInBytes = item.getSize();

                    System.out.println(" fieldName : " + fieldName);
                    System.out.println(" file_name : " + file_name);
                    System.out.println(" contentType : " + contentType);
                    System.out.println(" isInMemoy : " + isInMemoy);
                    System.out.println(" sizeInBytes : " + sizeInBytes);
                    // uuid 생성(Universal Unique IDentifier, 범용 고유 식별자)
                    UUID uuid = UUID.randomUUID();

                    fileName = new File(item.getName()).getName();
                    // 랜덤생성+파일이름 저장
                    fileName = uuid.toString() + "_" + fileName;

                    File storeFile = new File(saveDir + "/" + fileName);
                    user.put("user_img", fileName);
                    // saves the file on disk
                    item.write(storeFile);

                    request.setAttribute("user", user);
                    request.setAttribute("result", "파일업로드 성공");
                }
            }
        }
    } catch (Exception e) {
        request.setAttribute("result", e.getMessage());
        e.printStackTrace();
    }
    RequestDispatcher rd = request.getRequestDispatcher("fileupload_result.jsp");
    rd.forward(request, response);
%>
</body>
</html>
