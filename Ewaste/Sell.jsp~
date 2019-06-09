

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
<%@page import="java.sql.*"%>
<form action="totalAmount.jsp" method="post">
<h2 align="center"><font><strong>Available Products</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Device Name</b></td>
<td><b>Company Name</b></td>
<td><b>Price</b></td>
<td><b>Check To Buy</b></td>
</tr>
<%
Connection con;
Statement stmt;
ResultSet rs;
con = DriverManager.getConnection("jdbc:postgresql:ep","postgres","postgres");
stmt=con.createStatement();
String sql ="SELECT * FROM sell";
int i=0;
rs = stmt.executeQuery(sql);
while(rs.next())
{
	i++;
	%>

<tr bgcolor="green">

<td id="dname"><%=rs.getString("sdevice") %></td>
<td id="comp"><%=rs.getString("scompany") %></td>
<td name="p"><%=rs.getString("price") %></td>
<td>
<center><input type="checkbox" name="sdevice" value=<%=rs.getString("sdevice") %>>

</center></td>

</tr>
<% 
}

%>

</table>
<center><input type="submit" value="Add To Cart" name="submit"></center>
</form>
