<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>
<%@include file="adminHeader.jsp" %>

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
<div style="color: white; text-align: center; font-size: 30px;">FIR<i class='fas fa-window-close'></i></div>

<table id="customers">
          <tr>
           <th>NAME</th>
           <th>MOBILE NUMBER</th>
          <th>EMAIL</th>
            <th scope="col">FIR NO</th>
            <th scope="col">IPC SECTION</th>
            <th scope="col"> CRIME TYPE</th>
            <th>CIRME BRIFE</th>
            
            <th>ADDRESS</th>
          
            
              
          </tr>
        
       
         <%
        try
        {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from users inner join fir   ");
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
              
              </tr>
         <%
        }
        }
        catch(Exception e)
        {
        	
        }
         %>
        </table>
      <br>
      <br>
      <br>

</body>
</html>