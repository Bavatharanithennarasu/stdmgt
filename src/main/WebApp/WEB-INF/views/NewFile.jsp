<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Management - Add</title>
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
    <h2>Add Student</h2>
 <form action="/submit" method="post" modelAttribute="student">
 
        <label>Name:</label><br>
        <input type="text" name="name" required /><br><br>
        <label>Grade:</label><br>
        <input type="text" name="grade" required /><br><br>
        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
