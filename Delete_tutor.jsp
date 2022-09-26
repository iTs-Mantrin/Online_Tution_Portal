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
<li ><a href="staff_home">Home</a></li>
<li ><a href="update_staff.jsp" >Update Profile</a></li>
<li ><a href="delete_student.jsp">Delete Student</a></li>
<li ><a class="active" href="delete_tutor.jsp">Delete 
Tutor</a></li>
<li ><a href="logout.jsp">Log Out</a></li>
</ul>
</div>
<form action="tutor_deleted.jsp">
<div class="title">
 <input type="text" name="name" placeholder="Tutor Name"
required>
 <input type="text" name="email" placeholder="Tutor Email"
required>
</div>
<div class="button">
<input type="submit" class="btn" value="DELETE">
</div>
</form>
</header>
</body>
</html>