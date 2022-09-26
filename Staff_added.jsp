<%@page import="java.sql.*" %>
<html>
<head>
<title>request submitted</title>
</head>
<body>
<% 
try
{ 
String name= request.getParameter("name"); 
String phno= request.getParameter("phno"); 
String email= request.getParameter("email"); 
String pass= request.getParameter("pass"); 
String state= request.getParameter("state"); 
String zip= request.getParameter("zip"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
PreparedStatement ps=c.prepareStatement("insert into gohtwp 
values(?,?,?,?,?,?,?,?,?,?,?)"); 
ps.setString(1,name); 
ps.setString(2,phno); 
ps.setString(3,email); 
ps.setString(4,state); 
ps.setString(5,""); 
ps.setString(6,zip); 
ps.setString(7,""); 
ps.setString(8,"staff"); 
ps.setString(9,pass); ps.setString(10,"");
ps.setString(11,""); ps.executeUpdate(); 
response.sendRedirect("admin_home.jsp"); 
}catch(Exception ex){ 
} 
out.println(ex); 
%> 
</body>
</html> 