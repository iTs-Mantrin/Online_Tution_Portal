<html>
<head>
<title>GOHTWP</title>
<link rel="stylesheet" type="text/css" href="css/update_staff.css">
</head>
<body>
<header>
<div class="main">
<div class="logo">
<img alt="" src="images/logo.png">
</div>
<ul >
<li ><a href="staff_home.jsp">Home</a></li>
<li ><a class="active" href="update_staff.jsp">Update 
Profile</a></li>
<li ><a href="delete_student.jsp">Delete Student</a></li>
<li ><a href="delete_tutor.jsp">Delete Tutor</a></li>
<li ><a href="index.jsp">Log Out</a></li>
</ul>
</div>
<form action="update_done_staff.jsp">
<div class="title">
 <input type="text" name="email" placeholder="Email" required>
 <input type="text" name="name" placeholder="Change Name"
required>
 <input type="text" name="state" placeholder="State" required>
 <input type="text" name="add" placeholder="Address" required>
 <input type="text" name="dob" placeholder="Date Of Birth(ddmmyyyy)" required>
 <input type="text" name="pass" placeholder="Password" required> 
</div>
<div class="button">
<input type="submit" class="btn" value="UPDATE PROFILE">
</div>
</form>
</header>
</body>
</html> 