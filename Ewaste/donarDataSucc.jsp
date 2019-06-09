<%@page import="java.util.*,java.io.*" %>
<%
String uname=(String)session.getAttribute("uname");
if(uname.equals("null"))
{
response.sendRedirect("http://localhost:8080/examples/jsp/Ewaste/page1.jsp");
}
%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%
if(request.getParameter("submit")!=null){
String wname=request.getParameter("wname");
String wcondition=request.getParameter("options");
String wweight=request.getParameter("wweight");
String wqnt=request.getParameter("wqnt");
//String wid=request.getParameter("wid");
Double wid=Math.random();
Statement stmt=null;
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
try{
Class.forName("org.postgresql.Driver");
con=DriverManager.getConnection("jdbc:postgresql:ep","postgres","postgres");
stmt=con.createStatement();
stmt.executeUpdate("insert into waste (wname,wcondition,wweight,wqnt,wid,username) values('"+wname+"','"+wcondition+"','"+wweight+"','"+wqnt+"','"+wid+"','"+uname+"')");

	   	        out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Stored');");
			out.println("location='thanku.jsp';");
			out.println("</script>");
			String site=new String("http://localhost:8080/examples/jsp/Ewaste/thanku.jsp");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location",site);
}
catch(Exception e){
        out.println(e);
                 out.println("<script type=\"text/javascript\">");
                out.println("alert('fail to donate try different unique id');");
                out.println("location='donar.jsp';");
                out.println("</script>");

}
}
else {
	 out.println("<script type=\"text/javascript\">");
		out.println("alert('Press SignUp Button');");
		out.println("location='page1.jsp';");
		out.println("</script>");

}		
%>
