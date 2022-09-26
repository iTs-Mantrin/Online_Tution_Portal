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
String sub= request.getParameter("sub"); 
String pass= request.getParameter("pass"); 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection c = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234"); 
 PreparedStatement ps=c.prepareStatement("update gohtwp set sub=? where email=? and 
pass=?"); 
ps.setString(1,sub); 
ps.setString(2,email); 
ps.setString(3,pass); 
int i=ps.executeUpdate(); 
if(i>0) 
{ 
response.sendRedirect("tutor_home.jsp"); 
}else{ 
out.println("error"); 
} 
}catch(Exception ex){ 
out.println(ex); 
} 
%> 
</body>
</html>
