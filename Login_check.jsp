<%@page import="java.sql.*" %>
<html>
<head>
<title>request submitted</title>
</head>
<body>
<% try
{ 
String email= request.getParameter("email"); 
String pass= request.getParameter("pass"); 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
PreparedStatement ps =c.prepareStatement("select * from gohtwp where email=? 
and pass=?"); ps.setString(1,email); ps.setString(2,pass); 
ResultSet rs= ps.executeQuery(); 
if (rs.next() == true) { 
String role = rs.getString("role"); 
session.setAttribute("email", email); 
if (role.equals("admin")) { 
session.setAttribute("role", role); 
response.sendRedirect("admin_home.jsp"); 
} 
else if (role.equals("student")) { 
session.setAttribute("role", role); 
response.sendRedirect("student_home.jsp"); 
} 
else if(role.equals("tutor")) 
{ 
session.setAttribute("role", role); 
response.sendRedirect("tutor_home.jsp"); 
} 
else if(role.equals("staff"))
{ 
session.setAttribute("role", role); 
response.sendRedirect("staff_home.jsp"); 
} 
} else { 
out.println("invalid username or password"); 
} 
} 
catch(Exception e) 
{ 
out.println(e); 
} 
%>
</body>
</html>
