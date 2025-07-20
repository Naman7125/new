<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Registration</title>
</head>
<body>
<center>
<h2>Register for an Event</h2>

<form:form method="POST" action="/register" modelAttribute="event">
    <p>Name: <form:input path="name" /></p>
    <p>Email: <form:input path="email" /></p>
    
    <p>Event Name: 
        <form:select path="eventName">
            <form:option value="" label="-- Select Event --" />
            <form:option value="Tech Talk" label="Tech Talk" />
            <form:option value="Hackathon" label="Hackathon" />
            <form:option value="Workshop" label="Workshop" />
            <form:option value="Webinar" label="Webinar" />
        </form:select>
    </p>
    
    <p><input type="submit" value="Register" /></p>
</form:form>

<p><a href="/participants">Show Participant</a></p>

</center>
</body>
</html>
