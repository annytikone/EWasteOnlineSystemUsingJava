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
rs=stmt.executeQuery("select password from customer where username='"+user+"' and mobnum='"+mobnum+"'");
	while(rs.next())
	{
		un=rs.getString(1);
		 ps=rs.getString(2);
		out.println("Your Password is:"+ps);

	}
	if(un.equals(user)&& ps.equals(pass))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('now you know your password');");
			out.println("location='loginAction.jsp';");
			out.println("</script>");
			session.setAttribute("uname",user);
			response.sendRedirect("http://localhost:8080/examples/jsp/Ewaste/page1.jsp");
		}
	else{
		out.println("<script type=\"text/javascript\"> ");
		out.print("alert('Invalid Username or Mobile Number Contact Admin in Contact us');");
		out.println("location='page1.jsp';");
		out.println("</script>");
	}
}
catch(Exception e){
	out.println(e);
}
}
%>
