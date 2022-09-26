<%@page import="java.sql.*" %>
<html>
<head>
<title>request submitted</title>
</head>
<body>
<% try
{ 
String name= request.getParameter("name"); 
String email= request.getParameter("email"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
PreparedStatement ps =c.prepareStatement("select * from gohtwp where name=? 
and email=?"); ps.setString(1,name); ps.setString(2,email); 
 ResultSet rs=ps.executeQuery(); 
if(rs.next()) 
{ 
PreparedStatement ps1 =c.prepareStatement("DELETE from gohtwp WHERE 
name=? and email=?"); ps1.setString(1,name); 
ps1.setString(2,email); 
ps1.executeUpdate(); 
response.sendRedirect("staff_home.jsp");
}else { 
out.println("record not found."); 
 } 
} catch(Exception ex){ 
out.println(ex); 
} 
 %>
</body> 
</html> 
