<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
    <center>
        <h2>Edit Student</h2>
        <form action="${pageContext.request.contextPath}/update" method="post">
            <input type="hidden" name="id" value="${student.id}" />

            <label>Name:</label>
            <input type="text" name="name" value="${student.name}" required/><br/><br/>

            <label>Email:</label>
            <input type="email" name="email" value="${student.email}" required/><br/><br/>

            <label>Course:</label>
            <input type="text" name="course" value="${student.course}" required/><br/><br/>

            <input type="submit" value="Update Student"/>
        </form>
        <br/>
        <a href="${pageContext.request.contextPath}/students">Back to Student List</a>
    </center>
</body>
</html>
