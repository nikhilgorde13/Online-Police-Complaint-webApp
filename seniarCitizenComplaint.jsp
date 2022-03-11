<%@page import= "project.ConnectionProvider" %>
<%@include file="header.jsp"%>
<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<title>Senior Citizen</title>
</head>
<body>
<div class="topnav sticky">
<div id='container'>


<form action="citizenActioin.jsp" method="post">
<div style="color: black; text-align: center; font-size: 30px;">Seniar Citizen Complaint<i class='fas fa-window-close'></i></div>


  <div class="col-md-6">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name">
  </div>
  
  <div class="col-md-6">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" name="email">
  </div>
  <div class="col-6">
    <label for="gender" class="form-label">Gender</label>
    <input type="text" class="form-control" name="gender" >
  </div>
  <div class="col-md-6">
    <label for="age" class="form-label">Age</label>
    <input type="number" class="form-control" name="age">
  </div>
 
  
 
  <div class="col-md-6">
    <label for="Naturecomplaint" class="form-label">Nature of Complaint</label>
    <select name="Naturecomplaint" class="form-select">
      <option >yes</option>
      <option>no</option>
    </select>
  </div>
  <div class="col-md-6">
    <label for="Incidentdate" class="form-label">Date</label>
    <input type="text" class="form-control" name="Incidentdate">
  </div>
   <div class="col-6">
    <label for="place" class="form-label">Place of Incident</label>
    <input type="text" class="form-control" name="place">
  </div>
  <div class="col-md-6">
    <label for="problemdetail" class="form-label">Brief</label>
    <input type="text" class="form-control" name="problemdetail">
  </div>
   <div class="col-6">
    <label for="address" class="form-label">Address</label>
    <input type="text" class="form-control" name="address">
  </div>
  
 <div class="col-24">
    <button type="submit" class="btn btn-primary">submit</button>
     <a onclick="window.print();"><button class="btn btn-primary">Print</button></a>
  </div>
<div class='whysign'>
			<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>
			<h1>Successfully</h1>
			<%
			}
			%>
			<%
			if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
			}
			%>
			
		</div>
</form>
</div>
</body>
<%@include file="footer.jsp"%>

</html>