<html>
<head>
<title>GOHTWP</title>
<link rel="stylesheet" type="text/css" href="css/add_staff.css">
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
<li ><a class="active" href="add_staff.jsp">Add 
Staff</a></li>
<li ><a href="delete_staff.jsp">Delete Staff</a></li>
<li ><a href="index.jsp">Log Out</a></li>
</ul>
</div>
<form action="staff_added.jsp">
<div class="title">
 <input type="text" name="name" placeholder="Name" required>
 <input type="text" name="phno" placeholder="Number" required>
 <input type="text" name="email" placeholder="Email" required>
 <input type="text" name="pass" placeholder="Password" required>
 <input type="text" name="state" placeholder="State" required>
 <input type="text" name="zip" placeholder="Pin Code" required>
 
</div>
<div class="button">
<input type="submit" class="btn" value="ADD STAFF">
</div>
</form>
</header>
</body>
</html>
