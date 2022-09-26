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
String state= request.getParameter("state"); 
String add= request.getParameter("add"); 
String zip= request.getParameter("zip"); 
String pass= request.getParameter("pass"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
PreparedStatement ps=c.prepareStatement("update gohtwp set state=?, 
address=?, pin_code=? where email=? and pass=?"); 
ps.setString(1,state); 
ps.setString(2,add); 
ps.setString(3,zip); 
ps.setString(4,email); 
ps.setString(5,pass);
int i=ps.executeUpdate(); 
if(i>0) 
{ 
response.sendRedirect("student_home.jsp"); 
}else{ 
out.println("error"); 
} 
}catch(Exception ex){ 
out.println(ex); 
} 
%> 
 
</body>
</html>