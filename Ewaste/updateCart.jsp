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
String sdevice=request.getParameter("sdevice");
String scompany=request.getParameter("scompany");
String price=request.getParameter("price");
Statement stmt=null;
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
try{
Class.forName("org.postgresql.Driver");
con=DriverManager.getConnection("jdbc:postgresql:ep","postgres","postgres");
stmt=con.createStatement();
stmt.executeUpdate("insert into sell (sdevice,scompany,price) values('"+sdevice+"','"+scompany+"','"+price+"')");

	   	        out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Stored');");
			out.println("location='thanku.jsp';");
			out.println("</script>");
			String site=new String("http://localhost:8080/examples/jsp/Ewaste/sellList.jsp");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location",site);
}
catch(Exception e){
        out.println(e);
                 out.println("<script type=\"text/javascript\">");
                out.println("alert('Product already exist for sell');");
                out.println("location='adminOption.jsp';");
                out.println("</script>");

}
}
else {
	 out.println("<script type=\"text/javascript\">");
		out.println("alert('Insert something in cart');");
		out.println("location='sellUpdateAccept.jsp';");
		out.println("</script>");

}		
%>

