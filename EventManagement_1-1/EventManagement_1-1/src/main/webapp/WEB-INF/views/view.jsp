<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Registration List</title>
<style>
    table {
        width: 60%;
        margin: 20px auto;
        border-collapse: collapse;
        border: 1px solid black;
    }

    th, td {
        padding: 10px;
        border: 1px solid black;
        text-align: left;
    }

    caption {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 10px;
    }
</style>
</head>
<body>

    <table>
        <caption>Registered Participants</caption>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Event Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="p" items="${list}">
                <tr>
                    <td>${p.name}</td>
                    <td>${p.email}</td>
                    <td>${p.eventName}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
