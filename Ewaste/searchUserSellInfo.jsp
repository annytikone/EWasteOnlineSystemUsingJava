

<%@page import="java.util.*,java.io.*"%>
<%
String uname=(String)session.getAttribute("uname");
if(uname.equals("null"))
{
response.sendRedirect("http://localhost:8080/examples/jsp/Ewaste/page1.jsp");
}
%>
<html>
<head>
<title>cust Details</title>
    <link rel="stylesheet" type="text/css" href="page1.css">
<ul>

  <li><a href="https://www.youtube.com/watch?v=2REsMF3PfvA">Why E-waste</a></li>
  <li><a href="process.html">Process</a></li>
  <li><a href="#contact">Contact us</a></li>
  <li><a href="#about">About</a></li>
  <li><a class="active" href="page1.jsp">LogOut</a></li>
</ul>
</head>
</html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String user=request.getParameter("user");
String driverName = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql:";
String dbName = "ep";
String userId = "postgres";
String password = "postgres";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Customer Order Details</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Username</b></td>
<td><b>Buying</b></td>


</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select * from usersell where username='"+user+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="red">
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("sdevice") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

