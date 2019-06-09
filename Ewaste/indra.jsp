

<%@page import="java.util.*,java.io.*" session="true" %>
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
<html>
<head>
<script>
function check()
{
if(document.getElementById('sdevice').checked==true)
{
document.getElementById('sdevice')

}
}
</script>
</head>
<body>
<form action="Sell.jsp" method="get">
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
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM sell";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr bgcolor="green">

<td><%=resultSet.getString("sdevice") %></td>
<td><%=resultSet.getString("scompany") %></td>
<td><%=resultSet.getString("price") %></td><td>
<%int amt=parseInt(resultSet.getString("price") %>
<center><input type="checkbox" name="sdevice" id="sdevice"  >
</center></td>
</tr>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<input type="submit" value="Add To Cart">
</form>
</body>
</html>



/*<%@page import="java.util.*,java.io.*" %>
<%
//String uname=(String)session.getAttribute("uname");
if(uname.equals("null"))
{
response.sendRedirect("http://localhost:8080/examples/jsp/Ewaste/page1.jsp");
}
%>*/

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%
if(request.getParameter("submit")!=null)
{
String sdevice[]=request.getParameter("sdevice");
Statement stmt=null;
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
try{
Class.forName("org.postgresql.Driver");
con=DriverManager.getConnection("jdbc:postgresql:ep","postgres","postgres");
stmt=con.createStatement();
 for(int i=0;i<sdevice.length;i++){ 
stmt.executeUpdate("insert into usersell (username,sdevice) values('"+uname+"','"+sdevice[i]+"')");

	   	        out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Stored');");
			out.println("location='thanku.jsp';");
			out.println("</script>");
			String site=new String("http://localhost:8080/examples/jsp/Ewaste/Sell.jsp");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location",site);
}//forcomplete
}
catch(Exception e){
        out.println(e);
                 out.println("<script type=\"text/javascript\">");
                out.println("alert('fail to update');");
                out.println("location='Sell.jsp';");
                out.println("</script>");

}
}
else {
	 out.println("<script type=\"text/javascript\">");
		out.println("alert('update failed');");
		out.println("location='Sell.jsp';");
		out.println("</script>");

}		
%>

