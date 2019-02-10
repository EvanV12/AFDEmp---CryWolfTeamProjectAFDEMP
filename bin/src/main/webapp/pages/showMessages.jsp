<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="demo.css">
<link rel="stylesheet" href="showMessages.css">
<meta charset="UTF-8">
<title>Show Messages</title>
</head>
<body>

<div class="imgcontainer">
    <img src="pictures/dog-footprint.png" alt="login_icon" class="login_icon">
  </div>

	<div style="text-align: center">
		<table border="1" style="display: inline-block">
			<tr>
				<td colspan="10" style="border: none; text-align: center;">
					<h2 class="codrops-demos a">Messages</h2>
				</td>
			</tr>
			<tr>
				<th>Sender</th>
				<th>Receiver</th>
				<th>Date Sent</th>
				<th>Date Updated</th>
				<th>Subject</th>
				<th>Text Content</th>
			</tr>
			<c:forEach items="${messageList}" var="item">
				<tr>
					<td>${item.senderName}</td>
					<td>${item.receiverName}</td>
					<td>${item.sent_at}</td>
					<td>${item.updated_at}</td>
					<td>${item.subject}</td>
					<td>${item.text_content}</td>
				</tr>
			</c:forEach>


		</table>
	</div>

	<form method = "get" action ="/loggedIn">
		<button type = "submit" id="returnButton"  style="margin:auto;">Go Back</button>
		</form>
	<br />
	

	
</body>
</html>