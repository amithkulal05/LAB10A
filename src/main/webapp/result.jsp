<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Submission Result</title>
</head>
<body>
    <h2>Submitted User Data</h2>
    <table border="1">
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Username</td>
            <td><%= request.getAttribute("uName") %></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><%= request.getAttribute("uEmail") %></td>
        </tr>
        <tr>
            <td>Designation</td>
            <td><%= request.getAttribute("uDesig") %></td>
        </tr>
    </table>
    <br>
    <a href="index.jsp">Back to Form</a>
</body>
</html>
