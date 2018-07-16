<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/booking.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking Page</title>
</head>
<body>
	
	<label>Booking:</label>&nbsp;<label><c:out value="${ user }"></c:out></label>
	<form action="/bookme" method = "POST" modelAttribute = "user">
		<table>
			<tr>
				<td>First Name: </td>
				<td><input type = "text" name = "firstname">
			</tr>
			<tr>
				<td>Last Name: </td>
				<td><input type = "text" name = "lastname"></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type = "text" name = "email"></td>
			</tr>
			
		</table>
		<label>Please choose meeting type:</label><br>
		<input type = "radio" name = "inperson" value = "In Person"> In Person<br>
		<input type = "radio" name = "over_phone" value = "Phone"> Over Phone<br>
		<input type = "radio" name = "skype" value = "Skype"> Skype<br>
		<label>In Person: Starbucks</label><br>
		<label>Phone: 999-999-9999</label><br>
		<label>Skype: Connect with Thomas prior to meeting(Username: thomaspps)</label><br><br>
		<label>
			Information you would like Thomas to know prior to meeting:
		</label><br>
		<textarea rows="10" cols="70"></textarea><br><br>
		
		<label>General Topics of Interest:</label><br>
		<input type = "checkbox" > Academic Advising<br>
		<input type = "checkbox" > Leadership and Student Organization<br>
		<input type = "checkbox" > Learning Strategies<br>
		<input type = "checkbox" > Time Managment<br>
		<input type = "checkbox" > Prospective Student<br>
		<input type = "checkbox" > University Resources<br>
		<input type = "checkbox" > Other<br>
		
		<p>----put the "I am not robot thing" here---</p>
		<input type = "submit" name = "submit" value = "Confirm Booking">
		<input type = "submit" name = "cancel" value = "cancel">
		
	</form>
	
</body>
</html>