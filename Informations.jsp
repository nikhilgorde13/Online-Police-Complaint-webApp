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
<div style="color: white; text-align: center; font-size: 30px;">INFORMATIONS <i class="fas fa-archive"></i></div>
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
                    <th>Name</th>
                    <th>Mobile Number</th>
          
          <th>Email</th>
            <th scope="col"> Name Persons</th>
            <th scope="col">Age</th>
            <th scope="col"></i> Gender </th>
            <th>Date</th>
            <th>Cloths</th>
            <th scope="col">Body Marks</th>
              <th scope="col">Address</th>
            
              <th scope="col">Status</th>
              <th scope="col">Cancel <i class='fas fa-window-close'></i></th>
              <th scope="col">Accepted <i class='fas fa-dolly'></i></i></th>
          </tr>
        <%
        int sno=0;
        try
        {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from users inner join lost ");
       while(rs.next())
       {  
        %>
       <tr>
        <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(3) %></td> 
          <td><%=rs.getString(6) %></td>
           <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %></td>
            <td></i><%=rs.getString(9) %>  </td>
              <td><%=rs.getString(10) %></td>
               <td><%=rs.getString(11) %></td>
                <td><%=rs.getString(12) %></td>
                  <td><%=rs.getString(13) %></td>
                    <td><%=rs.getString(14) %></td>
              <td><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel<i class='fas fa-window-close'></i></a></td>
               <td><a href="deliveredOrsdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Accepted</i></a></td>            
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