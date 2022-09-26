<html>
<head>
<title>GOHTWP</title>
<link rel="stylesheet" type="text/css" href="css/tutor_subjects.css">
</head>
<body>
<header>
<div class="main">
<div class="logo">
<img alt="" src="images/logo.png">
</div>
<ul >
<li ><a href="tutor_home.jsp">Home</a></li>
<li ><a href="update_tutor.jsp">Update Profile</a></li>
<li ><a class="active"
href="tutor_subjects.jsp">Subjects</a></li>
<li ><a href="payment.jsp">Payment</a></li>
<li ><a href="tutor_about_us.jsp">About Us</a></li>
<li ><a href="logout.jsp">Log Out</a></li>
</ul>
</div>
<form action="tutor_subject_added.jsp">
<div class="title">
 <input type="text" name="name" placeholder="Tutor Email"
required>
 <input type="text" name="sub" placeholder="Enter Subjects You 
Want To teach" required>
 <input type="text" name="pass" placeholder="Password" required>
 
</div>
<div class="button">
<input type="submit" class="btn" value="ADD">
</div>
</form>
</header>
</body>
</html>
