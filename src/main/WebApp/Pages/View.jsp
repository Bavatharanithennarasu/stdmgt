<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student List - View</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<body>

<div class="navbar">
    <div class="title">GCE-ERODE</div>
    <div class="links">
        <a href="/home">Home</a>
        <a href="/view">View Students</a>
        <a href="/logout">Logout</a>
        
    </div>
</div>

<div class="container">
    <h2>Student List</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Grade</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="s" items="${students}">
            <tr>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.grade}</td>
                <td>
                <a href="/edit/${s.id}">Edit</a> |
                <a href="/delete/${s.id}"
                   onclick="return confirm('Delete this student?');">Delete</a>
            </td>
            </tr>
        </c:forEach>
    </table>
   <!--  
    <table>
    <tr>
        <th>ID</th><th>Name</th><th>Grade</th><th>Action</th>
    </tr>
    <c:forEach var="s" items="${students}">
        <tr>
            <td>${s.id}</td>
            <td>${s.name}</td>
            <td>${s.grade}</td>
            <td>
                <a href="/edit/${s.id}">Edit</a> |
                <a href="/delete/${s.id}"
                   onclick="return confirm('Delete this student?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
-->
    
</div>

</body>
</html>
