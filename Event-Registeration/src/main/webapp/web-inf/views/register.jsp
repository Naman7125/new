<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            border-collapse: collapse;
        }
        td {
            padding: 8px;
        }
    </style>
</head>
<body>

    <h2>Register for an Event</h2>

    <!-- Spring Form Binding -->
    <form:form action="${pageContext.request.contextPath}/register" modelAttribute="event" method="post">
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><form:input path="name" id="name" /></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><form:input path="email" id="email" /></td>
            </tr>
            <tr>
                <td><label for="eventName">Event Name:</label></td>
                <td><form:input path="eventName" id="eventName" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Register" />
                </td>
            </tr>
        </table>
    </form:form>

</body>
</html>
