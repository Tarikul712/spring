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
        <sql:query dataSource="${snapshot}" var="result">
           SELECT columns
  FROM table
  ORDER BY sort_column [ASC ];
            
            <sql:param value="${param.id}" />
        </sql:query>
      <!-- <form action="updatedb.jsp" method="post"> -->
            <table border="0" width="40%">
                <caption>Update Product</caption>
                <tr>
                    <th>Food</th>
                    <th>Ranking</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.id}" name="id"/>
                            <input type="text" value="${row.food}" name="food"/></td>
                        <td><input type="number" value="${row.ranking}" name="rank"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            //<c:redirect url="Restaurant.jsp"/>
        //</form>
    </body>
</html>