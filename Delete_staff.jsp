<html>
<head>
<title>GOHTWP</title>
<link rel="stylesheet" type="text/css" href="css/delete_staff.css">
</head>
<body>
<header>
<div class="main">
<div class="logo">
<img alt="" src="images/logo.png">
</div>
<ul >
<li ><a href="admin_home.jsp">Home</a></li>
<li ><a href="admin_about_us.jsp">About us</a></li>
<li ><a href="add_staff.jsp">Add Staff</a></li>
<li ><a class="active" href="delete_staff.jsp">Delete 
Staff</a></li>
<li ><a href="index.jsp">Log Out</a></li>
</ul>
</div>
<form action="deleted.jsp">
<div class="title">
 <input type="text" name="name" placeholder="Staff Name"
required>
 <input type="text" name="phno" placeholder="Staff number"
required>
</div>
<div class="button">
<input type="submit" class="btn" value="DELETE">
</div>
</form>
</header>
</body>
</html> 