

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Sign Up</title>
<link rel="stylesheet" type="text/css" href="/css/auth-home.css">
</head>
<body>
<div class="card-container">
    <h2>Create Account</h2>
    <form method="post" action="/signup">
        <input type="text" name="username" placeholder="Username" required /><br/>
        <input type="password" name="password" placeholder="Password" required /><br/>
        <button type="submit">Sign Up</button>
    </form>
    <p>Already have an account? <a href="/signin">Sign in</a></p>
</div>
</body>
</html>
