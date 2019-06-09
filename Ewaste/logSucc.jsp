<%@page import="java.util.*,java.io.*"%>
<%
String uname=(String)session.getAttribute("uname");
if(uname.equals("null"))
{
response.sendRedirect("http://localhost:8080/examples/jsp/Ewaste/page1.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="styles.css">
<ul>

  <li><a href="https://www.youtube.com/watch?v=2REsMF3PfvA">Why E-waste</a></li>
  <li><a href="process.jsp">Process</a></li>
  <li><a href="Contact.html">Contact us</a></li>
  <li><a href="AboutUs.html">About</a></li>
  <li><a class="active" href="page1.jsp">LogOut</a></li>
</ul>
<title>
</title>
</head>
<body background="h1.jpg">

<h1>Choose Your Side</h1><br>

<center><button class="button" id="myButton" type="submit" onclick="location.href = 'donar.jsp';">Donar</button></center><br><br><br><br><br><br>
<center><button class="button" id="myButton" type="submit" onclick="location.href = 'Sell.jsp';">Buyer</button></center>

</body>
</html>
