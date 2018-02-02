<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="connection.jsp" %>

<%-- <%
String is_post_request = request.getParameter("post_request");
if(is_post_request!=null){
%> --%>
<c:set var="name" value='<%= request.getParameter("name")%>'/>
<c:set var="location" value='<%= request.getParameter("location")%>'/>
<c:set var="food" value='<%= request.getParameter("food")%>'/>
<c:set var="cost" value='<%= request.getParameter("cost")%>'/>
<c:set var="rank" value='<%= request.getParameter("rank")%>'/>

<sql:update dataSource="${snapshot}" var="result">
INSERT INTO restaurant_tb (name, location,food, ranking,costing) VALUES ( ?, ?, ?,?,?)
  <sql:param value="${name}" />
  <sql:param value="${location}" />
  <sql:param value="${food}" />
  <sql:param value="${rank}" />
  <sql:param value="${cost}" />
</sql:update>
<c:redirect url="Display.jsp"/>

</body>
</html>