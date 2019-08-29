<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%--<%@ page import="common.Constants"%>--%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<% String upload_path = "c:/upload"; //파일을 업로드할 디렉토리(미리 만들어야 함)
    final int SIZE = 10 * 1024 * 1024; //파일 업로드 제한 용량(MB)  10MB
    String name = "";
    String subject = "";
    String filename = "", filename2 = "";
    int filesize = 0, filesize2 = 0;
    try {
        // request 객체를 확장하여 파일 업로드가 가능한 객체
        MultipartRequest multi = new MultipartRequest(request, upload_path, SIZE, "utf-8", new DefaultFileRenamePolicy());
        // 파일 중복시 파일명에 숫자가 붙어서 처리함.
        name = multi.getParameter("name");
        subject = multi.getParameter("subject");
        Enumeration files = multi.getFileNames(); //첨부파일 집합


        String file1 = (String) files.nextElement();
        filename = multi.getFilesystemName(file1);
        File f1 = multi.getFile(file1);
        filesize = (int) f1.length(); //파일의 크기
        System.out.println(">>>>>>" + f1);

//            String file2 = (String) files.nextElement();
//            filename2 = multi.getFilesystemName(file2);
//            File f2 = multi.getFile(file2);
//            filesize2 = (int) f2.length();
//            System.out.println(">>>>>>" + f2);



    } catch (Exception e) {
        e.printStackTrace();
    }
%>
이름 : <%=name%><br>
제목 : <%=subject%><br>
파일 1 이름 : <%=filename%><br>
파일 1 크기 : <%=filesize%><br>
파일 2 이름 : <%=filename2%><br>
파일 2 크기 : <%=filesize2%><br>
</body>
</html>
