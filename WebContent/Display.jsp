<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Restaurant Information</title>
</head>
<body bgcolor="#E6E6FA">

<%@include file="connection.jsp" %>

              <sql:query var="listUsers"   dataSource="${snapshot}">
        SELECT * FROM restaurant_tb;
    </sql:query>
     
    <div align="center">
      
        <table border="1" cellpadding="5" >
            <caption><h2>Restaurant Information</h2></caption>
           <a herf="Restaurant.jsp">Add</a> 
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Location</th>
                <th>Food</th>
                <th>Ranking</th>
                <th>Costing</th>
                <th colspan=2>Action</th>
               
                
            </tr>
        <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.location}" /></td>
                    <td><c:out value="${user.food}" /></td>
                    <td><c:out value="${user.ranking}" /></td>
                    <td><c:out value="${user.costing}" /></td>
                    <td><c:out value="${user.action}" /></td>
                    
                    
<td><a href='Delete.jsp?id=<c:out value="${row.id}"/>' onclick="if(confirm('Want to delete?')){ return true; }else { return false; }">Delete</a> <a href='edit.jsp?id=<c:out value="${row.id}"/>'>Edit</a></td>
                </tr>
        </c:forEach>
        </table>
           
</body>
</html>