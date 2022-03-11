<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>
<%@include file="adminHeader.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">PERMISSIONS <i class="fas fa-archive"></i></div>
<%
String msg=request.getParameter("msg");
if("cancle".equals(msg))
{
%>
<h3 class="alert">Order Cancel Successfully!</h3>
<%}%><%
if("delivered".equals(msg))
{
%>
<h3 class="alert">Successfully Updated!</h3>
<%}%><%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>

<table id="customers">
          <tr>
           <th>NAME</th>
            <th>MOBILE NUMBER</th>
          <th>EMAIL</th>
            <th scope="col">PLACE DETAIL</th>
            <th scope="col">TYPE OF PERMISSION</th>
            <th scope="col">FROM DATE</th>
            <th>TO DATE</th>
            
            <th scope="col">ORANIZER NAME</th>
              <th scope="col">EXPECTED CROWED</th>
              <th scope="col">START PONT</th>
               <th scope="col">END PONT</th>
              
              <th scope="col">Status</th>
              <th scope="col">Cancel  <i class='fas fa-window-close'></i></th>
              <th scope="col">ACCEPTED </th>
          </tr>
        <%
        int sno=0;
        try
        {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from users inner join permission  ");
       while(rs.next())
       {  
        %>
       <tr>
        <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(3) %></td> 
          
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td> <%=rs.getString(8) %> </td>
                <td><%=rs.getString(9) %></td>
               <td><%=rs.getString(10) %></td>
                <td><%=rs.getString(11) %></td>
                 <td><%=rs.getString(12) %></td>
             <td><%=rs.getString(13) %></td>
           <td><%=rs.getString(14) %></td>
           <td><%=rs.getString(15) %></td>
              <td><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel<i class='fas fa-window-close'></i></a></td>
               <td><a href="deliveredOrsdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">ACCEPTED</a></td>            
            </tr>
       <%}
        }
        catch(Exception e)
        {
        
        }%>
        </table>
      <br>
      <br>
      <br>

</body>
</html>