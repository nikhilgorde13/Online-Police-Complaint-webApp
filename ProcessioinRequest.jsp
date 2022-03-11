<%@page import= "project.ConnectionProvider" %>
<%@include file="header.jsp"%>
<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<title>Processioin Request</title>
</head>
<body>
<div class="topnav sticky">
<div id='container'>


<form action="ProcessioinRequestAction.jsp" method="post">
<div style="color: black; text-align: center; font-size: 30px;">Processioin Request Permission<i class='fas fa-window-close'></i></div>

  <div class="col-md-6">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name">
  </div>
  <div class="col-md-6">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" name="email">
  </div>
  <div class="col-6">
    <label for="placedetail" class="form-label">Place Detail</label>
    <input type="text" class="form-control" name="address" placeholder="1234 Main St">
  </div>
  <div class="col-6">
    <label for="typeofpermission" class="form-label">Procession Details</label>
    <input type="text" class="form-control" name="typeofpermission">
  </div>
  <div class="col-md-6">
    <label for="formdate" class="form-label">Date</label>
    <input type="text" class="form-control" name="formdate">
  </div>
  
  <div class="col-6">
    <label for="expectedCrowed" class="form-label">Expected Persons</label>
    <input type="text" class="form-control" name="expectedCrowed">
  </div>
  <div class="col-6">
    <label for="startPoint" class="form-label">Start Point</label>
    <input type="text" class="form-control" name="startPoint">
  </div>
  <div class="col-6">
    <label for="endPoint" class="form-label">End Point</label>
    <input type="text" class="form-control" name="endPoint">
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