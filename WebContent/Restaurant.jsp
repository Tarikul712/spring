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
  
 
          <form method="POST" action="Insert.jsp">
          
		<div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Name" name="name">
    </div>
    <div class="form-group">
      <label for="location">Location:</label>
      <input type="text" class="form-control" id="location" placeholder="Enter Location" name="location">
    </div>
		
		Ranking:<input type="number"  min=0 max=5 name="rank"  >  </br>
		Costing:<input type="number" " name="cost"> </br>
		
		</select> </br>

		<div class="row">
			<div class="col-md-2">Food :</div>
			<div class="col-md-8">
				<input type="radio" name="food" value="bangladehi_food" checked required> Bangladehi Food
			    <input type="radio" name="food" value="japaness_food" > Japaness Food
			</div>
		</div>

		</br>
	    </br>
	    </br>
		<input type="submit" value="Submit"/>
		
	</form>
         
      
    </div>
 
</body>
</html>