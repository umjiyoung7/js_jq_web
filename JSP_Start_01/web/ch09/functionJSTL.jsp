<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="name" value=" Orcle dbms 오라클클럽"></c:set>
<p>name : ${fn:replace(name,' ' ,'*' )}</p>
<c:set var="name" value="${fn:trim(name)}"></c:set>
<p>trim name : ${fn:replace(name, ' ', '*')}</p>

<p>length(name) : ${fn:length(name)}</p>
<p>toUpperCase(name) : ${fn:toUpperCase(name)}</p>
<p>toLowerCase(name) : ${fn:toUpperCase(name)}</p>
<p>substring(name,3,6): ${fn:substring(name,3,6)}</p>
<p>substringBefore(name,'dbms'): ${fn:substringBefore(name, 'dbms')}</p>
<p>substringAfter(name,'dbms'): ${fn:substringAfter(name, 'dbms')}</p>
<p>replace(name, '오라클클럽', 'OracleClub'): ${fn:replace(name, '오라클클럽', 'OracleClub')}</p>
<p>indexOf(name, 'dbms'): ${fn:indexOf(name,'dbms')}</p>
<p>contains(name, 'Oracle'): ${fn:contains(name, 'Oracle')}</p>
<p>containsIgnoreCase(name, 'opracle'): ${fn:containsIgnoreCase(name, 'oracle')}</p>
<p>startsWith(name, 'Oracle'): ${fn:startsWith(name, 'Oracle')}</p>
<p>startsWith(name, 'dbms'): ${fn:startsWith(name, 'dbms')}</p>
<p>endsWith(name, '오라클클럽'): ${fn:endsWith(name, '오라클클럽')}</p> <c:remove var="name"/>

<c:set var="dbname" value="ORACLE, DB2, MSSQL, MYSQL, SYSBASE"/>
<c:set var="db_arr" value="${fn:split(dbname,',')}"/>
<c:forEach var="db" items="${db_arr}">
    ${db}<br/>
</c:forEach>
<p>join : ${fn:join(db_arr, ',')}</p>

</body>
</html>
