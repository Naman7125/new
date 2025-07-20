<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/register" method="post">
		Name : <input type="text" name="name">
		Email : <input type="text" name="email">
		EventName : <input type="text" name="eventName">
		
		<button type="submit">Submit</button>
		<a href="/admin">Admin Log</a>
	</form>
</body>
</html>