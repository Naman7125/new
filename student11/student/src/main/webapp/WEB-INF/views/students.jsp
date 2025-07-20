<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student List</title>
</head>
<body>
	
	<center>
    <h2>Registered Students</h2>
    <a href="/">Add New Student</a><br/><br/>

    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Course</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="s" items="${students}">
            <tr>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.email}</td>
                <td>${s.course}</td>
                <td>
                    <a href="edit/${s.id}">Edit</a> |
                    <a href="delete/${s.id}" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
	
	</center>
</body>
</html>
