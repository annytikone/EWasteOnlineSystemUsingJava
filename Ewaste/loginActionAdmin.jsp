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
rs=stmt.executeQuery("select username,password from admin where username='"+user+"' and password='"+pass+"'");
	while(rs.next())
	{
		un=rs.getString(1);
		 ps=rs.getString(2);

	}
	if(un.equals(user)&& ps.equals(pass))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Login Successful');");
			out.println("location='loginActionAdmin.jsp';");
			out.println("</script>");
			session.setAttribute("uname",user);
			response.sendRedirect("http://localhost:8080/examples/jsp/Ewaste/adminOption.jsp");
		}
	else{
		out.println("<script type=\"text/javascript\"> ");
		out.print("alert('Invalid Username or Password');");
		out.println("location='adminLog.jsp';");
		out.println("</script>");
	}
}
catch(Exception e){
	out.println(e);
}
}
%>

