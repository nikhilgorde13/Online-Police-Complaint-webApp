<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>
<%
String name=request.getParameter("name");
String email=session.getAttribute("email").toString();
String placedetail=request.getParameter("placedetail");
String typeofpermission=request.getParameter("typeofpermission");
String formdate=request.getParameter("formdate");
String todate="";
String Orgnizername="";
String expectedCrowed=request.getParameter("expectedCrowed");
String startPoint=request.getParameter("startPoint");
String endPoint=request.getParameter("endPoint");
String status="";

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into permission(name,email,placedetail,typeofpermission,formdate,todate,Orgnizername,expectedCrowed,startPoint,endPoint,status) values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,placedetail);
	ps.setString(4,typeofpermission);
	ps.setString(5,formdate);
	ps.setString(6,todate);
	ps.setString(7,Orgnizername);
	ps.setString(8,expectedCrowed);
	ps.setString(9,startPoint);
	ps.setString(10,endPoint);
	ps.setString(11,status);
	ps.executeUpdate();
	response.sendRedirect("ProcessioinRequest.jsp?msg=valid");
}
catch (Exception e)
{
	System.out.println(e);
	response.sendRedirect("ProcessioinRequest.jsp?msg=invalid");
}
%>