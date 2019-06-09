<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%
if(request.getParameter("signup")!=null){
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String mobnum=request.getParameter("mobnum");
String add=request.getParameter("add");
String pass=request.getParameter("pass");
String username=request.getParameter("username");
Statement stmt=null;
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
try{
Class.forName("org.postgresql.Driver");
con=DriverManager.getConnection("jdbc:postgresql:ep","postgres","postgres");
stmt=con.createStatement();
stmt.executeUpdate("insert into customer (fname,lname,add,mobnum,username,password) values('"+fname+"','"+lname+"','"+add+"','"+mobnum+"','"+username+"','"+pass+"')");

	   	        out.println("<script type=\"text/javascript\">");
			out.println("alert('Now go to home page to login');");
			out.println("location='page1.html';");
			out.println("</script>");
			String site=new String("http://localhost:8080/examples/jsp/Ewaste/page1.jsp");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location",site);
}
catch(Exception e){
        out.println(e);
                 out.println("<script type=\"text/javascript\">");
                out.println("alert('Enter All Details');");
                out.println("location='signUp.jsp';");
                out.println("</script>");

}
}
else {
	 out.println("<script type=\"text/javascript\">");
		out.println("alert('enter unique username as well');");
		out.println("location='signUp.html';");
		out.println("</script>");

}		
%>
