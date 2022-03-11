<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
   <%String email=session.getAttribute("email").toString(); %>
   <div class="logo"><img src="../Images/logo.png"/></div>
            <center><h2>Police Complaints</h2></center>
            
            <a href="fir.jsp">FIR <i class='fas fa-plus-square'></i></a>
            <a href="Complaitns.jsp">COMPLAINTS<i class='fab fa-elementor'></i></a>
            <a href="Permission.jsp">PERMISSION <i class="fas fa-archive"></i></a>
            <a href="Services.jsp">SERVICES <i class='fas fa-window-close'></i></a>
            <a href="Informations.jsp">INFORMATION<i class='fas fa-dolly'></i></a>
            <a href="../login.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->
