<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Register</title></head>
<body>
	<center>
<h2>Student Registration</h2>
<form action="/register" method="post">
    Name: <input type="text" name="name"/><br/><br/>
    Email: <input type="email" name="email"/><br/><br/>
    Course: <input type="text" name="course"/><br/><br/>
    <input type="submit" value="Register"/>
</form>

<a href="/students">Show Students</a><br/><br/>
</center>
</body>
</html>