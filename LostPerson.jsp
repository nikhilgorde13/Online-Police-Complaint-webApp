<%@include file="header.jsp"%>
<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">

<meta charset="ISO-8859-1">
<title>Lost Persons</title>
</head>
<body>
<div class="topnav sticky">
<div id='container'>
<form action="LostPersonAction.jsp" method="post">
<div style="color: black; text-align: center; font-size: 30px;">LOST PERSONS<i class='fas fa-window-close'></i></div>

  <div class="col-md-6">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" name="email">
  </div>
  <div class="col-md-6">
    <label for="lostname" class="form-label">Persons Name</label>
    <input type="text" class="form-control" name="lostname">
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
    <label for="date" class="form-label">Date</label>
    <input type="text" class="form-control" name="date">
  </div>
  <div class="col-md-6">
    <label for="cloth" class="form-label">Wearing Cloths</label>
    <input type="text" class="form-control" name="cloth">
  </div>
  <div class="col-md-6">
    <label for="bodyMark" class="form-label">Body Marks</label>
    <input type="text" class="form-control" name="bodyMark">
  </div>
   <div class="col-md-6">
    <label for="address" class="form-label">Address</label>
    <input type="text" class="form-control" name="address">
  </div>
 <div class="col-24">
    <button type="submit" class="btn btn-primary">submit</button>
     </div>
     <div class="col-24">
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