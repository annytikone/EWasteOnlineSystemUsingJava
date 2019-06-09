
<%@page import="java.util.*,java.io.*" session="true"%>
<%
String user=(String)session.getAttribute("uname");
if(user.equals("null"))
{
response.sendRedirect("http://localhost:8080/examples/jsp/Ewaste/page1.jsp");
}
%>
<html>
<head>
<title>donar</title>
<link rel="stylesheet" href="donar.css">
<ul>

  <li><a href="https://www.youtube.com/watch?v=2REsMF3PfvA">Why E-waste</a></li>
  <li><a href="process.jsp">Process</a></li>
  <li><a href="Contact.html">Contact us</a></li>
  <li><a href="AboutUs.html">About</a></li>
  <li><a class="active" href="page1.jsp">LogOut</a></li>
</ul>
</head>
<h2>we appreciate that you have taken a step to save this world by giving your e-waste at proper place..</h2>
<body>
<div class="loginbox">
<h1><b>Donation Details</b></h1>
<div class="container">
<form action="donarDataSucc.jsp" method="get">
<centre><p>Device Name:</p><input type="text" name="wname"><br></centre>
<centre><p>Condition Of Device:</p>
<select name="options"><option value="Working"><b>Working</b></option>
<option value="NotWorking"><b>Not working</b></option>
<option value="NeedToRecycle"><b>Need To Recycle</b></option>
</select><br></centre>
<br>
<centre><p>Weight Of Device:</p><input type="text" name="wweight"><br></centre>
<centre><p>Quantity:</p><input type="text" name="wqnt"><br></centre>
<input  class="submit" type="submit" name="submit" value="submit"></center><br>
</body>
</div>
</div>
</html>
