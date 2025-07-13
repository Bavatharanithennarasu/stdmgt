<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <link rel="stylesheet" href="/css/auth-home.css">
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

<div class="card-container">
    <h2>Edit Student</h2>
    <form action="/update" method="post">
        <!-- hidden id keeps the same primary key -->
        <input type="hidden" name="id" value="${student.id}" />
        <input type="text" name="name"  value="${student.name}"  placeholder="Name"  required /><br>
        <input type="text" name="grade" value="${student.grade}" placeholder="Grade" required /><br>
        <button type="submit">Update</button>
    </form>
</div>
</body>
</html>
