<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Participants</title>
</head>
<body>
<center>
<h2>List of Registered Participants</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Event</th>
    </tr>
    <c:forEach var="p" items="${participants}">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.email}</td>
            <td>${p.eventName}</td>
        </tr>
    </c:forEach>
</table>

<p><a href="/">Add New Participant</a></p>
</center>

</body>
</html>
