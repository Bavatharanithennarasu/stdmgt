<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Sign In</title>
<link rel="stylesheet" type="text/css" href="/css/auth-home.css">
</head>
<body>
<div class="card-container">
    <h2>Login</h2>
    <c:if test="${not empty sessionScope.msg}">
        <p style="color:red">${sessionScope.msg}</p>
        <c:remove var="msg" scope="session"/>
    </c:if>
    <form method="post" action="/signin">
        <input type="text" name="username" placeholder="Username" required /><br/>
        <input type="password" name="password" placeholder="Password" required /><br/>
        <button type="submit">Sign In</button>
    </form>
    <p>New user? <a href="/signup">Create account</a></p>
</div>
</body>
</html>
>