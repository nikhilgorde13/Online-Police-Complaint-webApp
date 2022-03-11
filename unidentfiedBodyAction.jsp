<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>
<%
String email=session.getAttribute("email").toString();
String lostname="";

String age=request.getParameter("age");
String gender=request.getParameter("gender");
String date=request.getParameter("date");
String cloth=request.getParameter("cloth");
String bodyMark=request.getParameter("bodyMark");

String address=request.getParameter("address");
String status="";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into lost(email,lostname,age,gender,date,cloth,bodyMark,address,status) values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,email);
	ps.setString(2,lostname);
	ps.setString(3,age);
	ps.setString(4,gender);
	ps.setString(5,date);
	ps.setString(6,cloth);
	ps.setString(7,bodyMark);
	ps.setString(8,address);
	ps.setString(9,status);
	ps.executeUpdate();
	response.sendRedirect("LostPerson.jsp?msg=valid");
}
catch (Exception e)
{
	System.out.println(e);
	response.sendRedirect("LostPerson.jsp?msg=invalid");
}
%>