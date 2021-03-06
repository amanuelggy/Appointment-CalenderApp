<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" type = "text/css" href = "css/style.css">
<title>Home</title>
</head>
<body>
	<div class = "headers">
		<label class = "info">Please sign up for a time and we will reach out to you by phone</label>
	</div>
	
	<div class = "slideshow_container">
		<div class = "monthWeeks">
			<form action = "/book" method = "POST" modelAttribute = "book">
				<div class = "weeks">
					<table>
						<tr>
							<th>Mon</th>
							<th>Tue</th>
							<th>Wed</th>
							<th>Thu</th>
							<th>Fri</th>
							<th>Sat</th>
							<th>Sun</th>
						</tr>
						<tr>
							<td><button name = "username" formaction = "/book" value = "7:00 AM Monday, July 16, 2018">7:00 AM</button></td>
							<td><button name = "username" formaction = "/book" value = "8:00 AM Monday, July 23, 2018">8:00 AM</button></td>
							<td><button name = "username" formaction = "/book" value = "9:00 AM Monday, July 30, 2018"> 9:00 AM</button></td>
							<td>10:00 AM</td>
							<td>8:00 AM</td>
							<td>8:00 AM</td>
							<td>8:00 AM</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>