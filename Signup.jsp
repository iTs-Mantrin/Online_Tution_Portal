<html>
 <head>
 <title>Sign Up</title>
 <link rel="stylesheet" type="text/css" href="css/signup.css">
 </head>
<body>
<div class="form-wrap">
 <form action="register.jsp">
 <h1>Sign Up</h1>
 <input type="text" name="name" placeholder="Name" required>
 <input type="text" name="phno" placeholder="Mobile Number" required>
 <tr class="option">
 <td>Student</td><input type="radio" name="role" value="student"> 
<td>Teacher</td><input type="radio" name="role" value="tutor">
 </tr>
<input type="email" name="email" placeholder="Email" required>
 <input type="date" name="dob" placeholder="Date Of Birth" required> 
<input type="password" name="pass" placeholder="Password" required>
 <input type="submit" value="Send">
</form>
</div>
</body>
</html>