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
String email= request.getParameter("email"); 
String number= request.getParameter("number"); 
String message= request.getParameter("message"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
PreparedStatement ps=c.prepareStatement("insert into messages 
values(?,?,?,?)"); 
ps.setString(1,name); 
ps.setString(2,email); 
ps.setString(3,number); 
ps.setString(4,message); 
ps.executeUpdate(); 
}catch(Exception ex){ 
out.println(ex); } 
%> 
<h3>Thank you we will contact you soon</h3>
<h3>click <a href="index.jsp">here</a> to go back</h3>
 
</body>
</html> 