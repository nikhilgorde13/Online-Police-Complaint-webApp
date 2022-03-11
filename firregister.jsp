<%@include file="header.jsp"%>
<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">

<meta charset="ISO-8859-1">
<title>FIR REGISTER</title>
</head>
<body>
<div class="topnav sticky">
<div id='container'>
<form action="firregisterAction.jsp" method="post">
<div style="color: black; text-align: center; font-size: 30px;">FIR<i class='fas fa-window-close'></i></div>

  <div class="col-md-6">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name">
  </div>
 
  <div class="col-md-6">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" name="email">
  </div>
   <div class="col-md-6">
    <label for="firno" class="form-label">Fir NO</label>
    <input type="number" class="form-control" name="firno">
  </div>
  <div class="col-6">
    <label for="IpcSection" class="form-label">IPC section</label>
    <input type="text" class="form-control" name="IpcSection" placeholder="IPC section">
  </div>
  <div class="col-6">
    <label for="crimetype" class="form-label">Crime Type</label>
    <input type="text" class="form-control" name="crimetype">
  </div>
  <div class="col-md-6">
    <label for="address" class="form-label">Address</label>
    <input type="text" class="form-control" name="address">
  </div>
  <div class="col-md-6">
    <label for="crimebrief" class="form-label">Fir Detail</label>
    <input type="text" class="form-control" name="crimebrief">
  </div>
 <div class="col-24">
    <a onclick="window.print();"><button type="submit" class="btn btn-primary">submit</button></a>
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