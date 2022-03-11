<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>
<%
String name=request.getParameter("name");
String email=session.getAttribute("email").toString();
String firno=request.getParameter("firno");
String IpcSection=request.getParameter("IpcSection");
String crimetype=request.getParameter("crimetype");
String crimebrief=request.getParameter("crimebrief");
String address=request.getParameter("address");
String status="";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into fir(name,email,firno,IpcSection,crimetype,crimebrief,address,status) values(?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,firno);
	ps.setString(4,IpcSection);
	ps.setString(5,crimetype);
	ps.setString(6,crimebrief);
	ps.setString(7,address);
	ps.setString(8,status);
	ps.executeUpdate();
	response.sendRedirect("rgisterLostArticle.jsp?msg=valid");
}
catch (Exception e)
{
	System.out.println(e);
	response.sendRedirect("rgisterLostArticle.jsp?msg=invalid");
}
%>