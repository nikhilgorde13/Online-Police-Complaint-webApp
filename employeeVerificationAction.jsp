<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>
<%
String name=request.getParameter("name");
String email=session.getAttribute("email").toString();
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String presentaddress=request.getParameter("presentaddress");
String birthdate=request.getParameter("birthdate");
String birthPlace=request.getParameter("birthPlace");
String Criminallayer=request.getParameter("Criminallayer");
String Ans=request.getParameter("Ans");
String Birefdetail=request.getParameter("Birefdetail");
String status="";

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into services (name,email,age,gender,presentaddress,birthdate,birthPlace,Criminallayer,Ans,Birefdetail,status) values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,age);
	ps.setString(4,gender);
	ps.setString(5,presentaddress);
	ps.setString(6,birthdate);
	ps.setString(7,birthPlace);
	ps.setString(8,Criminallayer);
	ps.setString(9,Ans);
	ps.setString(10,Birefdetail);
	ps.setString(11,status);

	ps.executeUpdate();
	response.sendRedirect("employeeVerification.jsp?msg=valid");
}
catch (Exception e)
{
	System.out.println(e);
	response.sendRedirect("employeeVerification.jsp?msg=invalid");
}
%>