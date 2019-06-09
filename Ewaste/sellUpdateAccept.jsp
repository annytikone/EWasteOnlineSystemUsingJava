

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
<title>Options For Admin</title>
    <link rel="stylesheet" type="text/css" href="sellUpdateAccept.css">

</head>

<ul>
  <li><a class="active" href="page1.jsp">Home</a></li>
  <li><a href="https://www.youtube.com/watch?v=2REsMF3PfvA">Why E-waste</a></li>
  <li><a href="process.html">Process</a></li>
  <li><a href="#contact">Contact us</a></li>
  <li><a href="#about">About</a></li>
</ul>
<body>
    <div class="loginbox">
<form action="updateCart.jsp">
<centre><h1> Add devices to sell </h1>
Device Name:<input type="text" name="sdevice">
Company Name:<input type="text" name="scompany">
Price:<input type="text" name="price">
<input type="submit" name="submit" value="submit">
</form></centre>

<center><button class="button" id="myButton" type="submit" onclick="location.href = 'custDet.jsp';">All Customers Details</button></center><br>
<center><button class="button" id="myButton" type="submit" onclick="location.href = 'updateCart.jsp';">Update Cart List</button></center>
</body>
