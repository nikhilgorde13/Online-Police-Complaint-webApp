<%@page import= "project.ConnectionProvider" %>
<%@page import= "java.sql.*"  %>

<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Login</title>
</head>
<body>


  <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
     <form action="loginAction.jsp" method="post">
     <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>
     
  <div class="form-outline form-white mb-4">
                <input type="email" name="email" class="form-control form-control-lg" />
                <label class="form-label" for="typeEmailX">Email</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input type="password" name="password" class="form-control form-control-lg" />
                <label class="form-label" for="typePasswordX">Password</label>
              </div>
          <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
        
     </form>
      <div>
              <p class="mb-0">Don't have an account? <a href="signup.jsp" class="text-white-60 fw-bold">Sign Up</a></p>
            </div>
              <p class="small mb-5 pb-lg-2"><a class="text-white-60 fw-bold" href="forgotpassword.jsp">Forgot password?</a></p>
  </div>
  <div class='whysignLogin'>
<%
String msg=request.getParameter("msg");
if ("notexist".equals(msg))
{
%>
  <h1>Incorrect Username or Password</h1>
  <%} %>
  <%if("invalid".equals(msg))
  {%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
  </div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>