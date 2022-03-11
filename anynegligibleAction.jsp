<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>
<%
String name=request.getParameter("name");
String email=session.getAttribute("email").toString();
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String Naturecomplaint="";
String Incidentdate=request.getParameter("Incidentdate");
String place=request.getParameter("place");
String problemdetail=request.getParameter("problemdetail");
String address="";
String status="";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into complaint(name,email,gender,age,Naturecomplaint,Incidentdate,place,problemdetail,address,status) values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,gender);
	ps.setString(4,age);
	ps.setString(5,Naturecomplaint);
	ps.setString(6,Incidentdate);
	ps.setString(7,place);
	ps.setString(8,problemdetail);
	ps.setString(9,address);
	ps.setString(10,status);
	ps.executeUpdate();
	response.sendRedirect("womensafety.jsp?msg=valid");
}
catch (Exception e)
{
	System.out.println(e);
	response.sendRedirect("womensafety.jsp?msg=invalid");
}
%>