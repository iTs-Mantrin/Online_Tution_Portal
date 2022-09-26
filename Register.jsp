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
String role= request.getParameter("role"); 
String email= request.getParameter("email"); 
String dob= request.getParameter("dob"); 
String pass= request.getParameter("pass"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
PreparedStatement ps=c.prepareStatement("insert into gohtwp 
values(?,?,?,?,?,?,?,?,?,?,?)"); 
ps.setString(1,name); 
ps.setString(2,phno); 
ps.setString(3,email); 
ps.setString(4,""); 
ps.setString(5,""); 
ps.setString(6,""); 
ps.setString(7,dob); ps.setString(8,role); 
ps.setString(9,pass); 
ps.setString(10,""); 
ps.setString(11,"");
ps.executeUpdate(); 
}catch(Exception ex){ 
out.println(ex); 
} 
%> 
<h3>submitted</h3>
<h3>click <a href="index.jsp">here</a> to go back</h3>
</body> 
</html> 