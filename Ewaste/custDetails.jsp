<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%
if(request.getParameter("login")!=null)
{
String user=request.getParameter("user");
String pass=request.getParameter("pass");
Statement stmt=null;
Connection con=null;
ResultSet rs=null;
String ps="";
String un="";
try{
Class.forName("org.postgresql.Driver");
con=DriverManager.getConnection("jdbc:postgresql:ep","postgres","postgres");
stmt=con.createStatement();
rs=stmt.executeQuery("select * from customer ;");
	while(rs.next())
	{
		String fname=rs.getString("fname");
		 String lname=rs.getString("lname");
		String add=rs.getString("add");
		 String mobnum=rs.getString("mobnum");
		  username=rs.getString(1);
		 password=rs.getString(2);
		

	}


out.println("Details Of Customer :"+fname+" "+lname+" "+add+" "+mobnum+""+username+" "+password);
}
catch(Exception e){
	out.println(e);
}
}
%>
