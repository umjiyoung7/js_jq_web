<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 3:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>ex08</title>
</head>
<body>
<sql:setDataSource url="jdbc:oracle:thin:@localhost:1521/XE"
                   driver="oracle.jdbc.OracleDriver"
                   user="Spring"
                   password="1234"
                   var="ds1"
                   scope="page"/>  <!-- sql 명령어 -->
<sql:query var="rs" dataSource="${ds1}">
    select empno,ename,sal,deptno from emp
</sql:query>
<table border="1">
    <tr>
        <th>번호</th>   <!-- Table Header 제목셀 -->
        <th>사번</th>
        <th>이름</th>
        <th>급여</th>
        <th>부서코드</th>
    </tr>
    <c:forEach var="row" items="${rs.rows}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${row.empno}</td>
            <td>${row.ename}</td>
            <td>${row.sal}</td>
            <td>${row.deptno}</td>
        </tr>
    </c:forEach></table>
</body>
</html>
