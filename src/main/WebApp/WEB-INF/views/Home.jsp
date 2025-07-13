<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Dashboard</title>
<link rel="stylesheet" type="text/css" href="/css/auth-home.css">
</head>
<body>
<div class="navbar">
    <div class="title">GCE-ERODE</div>
    <div class="links">
        <a href="/home">Home</a>
        <a href="/home_add">Add Student</a>
        <a href="/view">View Students</a>
        <a href="/logout">Logout</a>
    </div>
</div>

<div class="container">
    <h2>Welcome, ${sessionScope.user}</h2>
    <p>This is GCE Erode Student Management System.Government College of Engineering (GCE), Erode is one of the prestigious engineering institutions in Tamil Nadu, established in 1985. Affiliated to Anna University, Chennai, and approved by AICTE, GCE Erode offers undergraduate and postgraduate programs in various engineering disciplines such as Computer Science, Electronics and Communication, Electrical and Electronics, Mechanical, and Civil Engineering. Located in a serene campus near Chithode on the Erode-Perundurai highway, the college is known for its strong academic environment, well-equipped laboratories, dedicated faculty, and active student communities. GCE Erode emphasizes both academic excellence and practical learning, encouraging students to participate in research, innovation, and social outreach. The college has consistently produced skilled engineers who contribute to leading industries and research sectors in India and abroad. With its commitment to quality education and holistic development, GCE Erode stands as a symbol of pride and opportunity for aspiring engineers across the state.

    </p>
    <p>You can add students and view their data.</p>
</div>
</body>
</html>
