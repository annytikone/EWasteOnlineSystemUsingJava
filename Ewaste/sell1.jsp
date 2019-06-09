<%@page import="java.util.*,java.io.*,java.sql.*"%>
<%
try
{
	Statement stmt=null;
	Connection con=null;
	ResultSet rs=null;
	String [] chkboxs=request.getParameterValues("sdevice");
	String [] options=request.getParameterValues("options");
	
	int [] arr= new int[100];
	int i=0,j=0,k=0;	
	String sd="",sc="",sp="";
		for(i=0;i<chkboxs.length;i++)
		{
			String chk =chkboxs[i];
			
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql:ep","postgres","postgres");
			stmt=con.createStatement();
			rs=stmt.executeQuery("select sdevice,scompany,price from sell where sdevice='"+chk+"'");
			while(rs.next())
			{
				sd=rs.getString(1);
				sc=rs.getString(2);
				sp=rs.getString(3);
				out.println(sd);
				out.println(sc);
				out.println(sp);
			}			
	
		}

}
catch(Exception e)
{
	out.println(e);
}
		
%>

