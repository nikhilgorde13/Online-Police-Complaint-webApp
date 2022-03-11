<%@page import= "project.ConnectionProvider" %>
<%@include file="header.jsp"%>
<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<title>Tenant Verifications</title>
</head>
<body>
<div class="topnav sticky">
<div id='container'>


<form action="TenantVerificationAction.jsp" method="post">
<div style="color: black; text-align: center; font-size: 30px;">Tenant Verification<i class='fas fa-window-close'></i></div>

<div class="col-md-6">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name">
  </div>
  
  <div class="col-md-6">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" name="email">
  </div>
  <div class="col-md-6">
    <label for="age" class="form-label">Age</label>
    <input type="number" class="form-control" name="age">
  </div>
 <div class="col-md-6">
    <label for="gender" class="form-label">Gender</label>
    <select name="gender" class="form-select">
      <option >Select</option>
      <option>Male</option>
        <option>Female</option>
          <option>Other</option>
    </select>
  </div>
  <div class="col-6">
    <label for="presentaddress" class="form-label">Address</label>
    <input type="text" class="form-control" name="presentaddress" placeholder="1234 Main St">
  </div>
  
  <div class="col-md-6">
    <label for="birthdate" class="form-label">Date</label>
    <input type="text" class="form-control" name="birthdate">
  </div>
   <div class="col-md-6">
    <label for="birthPlace" class="form-label">Birth Place</label>
    <input type="text" class="form-control" name="birthPlace">
  </div>
  <div class="col-md-6">
    <label for="Criminallayer" class="form-label">Any Criminal Record or Any Criminal Proceeding against you?</label>
    <select name="Criminallayer" class="form-select">
      <option >yes</option>
      <option>no</option>
    </select>
  </div>
  <div class="col-md-6">
    <label for="Ans" class="form-label">Answer</label>
    <input type="text" class="form-control" name="Ans">
  </div>
  <div class="col-md-6">
    <label for="Birefdetail" class="form-label">Detail Information</label>
    <input type="text" class="form-control" name="Birefdetail">
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