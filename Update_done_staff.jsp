<%@page import="java.sql.*" %>
<html>
<head>
<title>request submitted</title>
</head>
<body>
<% 
try
{ 
String email= request.getParameter("email"); 
String name= request.getParameter("name"); 
String state= request.getParameter("state"); 
String add= request.getParameter("add"); 
String dob= request.getParameter("dob"); 
String pass= request.getParameter("pass"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
PreparedStatement ps=c.prepareStatement("update gohtwp set name=?, state=?, 
address=?, dob=?, where email=? and pass=? "); 
ps.setString(1,name); 
ps.setString(2,state); 
ps.setString(3,add); 
ps.setString(4,dob); 
ps.setString(5,email); 
ps.setString(6,pass); 
int i=ps.executeUpdate(); 
if(i>0) 
{ 
response.sendRedirect("staff_home.jsp"); 
}else{ 
out.println("error"); 
} 
}catch(Exception ex){ 
out.println(ex); 
} 
%> 
 
</body>
</html>
