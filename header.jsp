<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  
<link href="assets/css/style.css" rel="stylesheet">

    <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">
           <a href="index.html" class="logo me-auto"><img src="assets/img/" alt=""></a>
      <h1 class="logo me-auto"><a href="index.html">MH POLICE<span>.</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
<%String email=session.getAttribute("email").toString(); %>
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul> 
        <li><a class="nav-link scrollto active" href="Home.jsp">Home</a></li>
              <li class="dropdown"><a href="#"><span>FIR</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="firregister.jsp">Register FIR</a></li>
              <li><a href="rgisterLostArticle.jsp">Register Lost Article</a></li>
              <li><a href="ipcsections.jsp">IPC SECTION FOR FIR</a></li>
              
              <li><a href="#">View/Download</a></li>
            </ul>
          </li>   
           </ul>
            <ul>
              <li class="dropdown"><a href="#"><span>COMPLAINTS</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="seniarCitizenComplaint.jsp">Senior Citizen Complaint</a></li>
              <li><a href="Divyang.jsp">Complaint By Divyang </a>
              </li>
              <li><a href="womensafety.jsp">Women Safety</a></li>
              <li><a href="anynegligible.jsp">Any Negligible</a></li>
                            <li><a href="#">View/Download</a></li>
              
            </ul>
          </li>
           </ul>
          <ul>
              <li class="dropdown"><a href="#"><span>PERMISSION</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="ProcessioinRequest.jsp">Permission Request</a></li>
              <li><a href="strikeRequest.jsp">Protest/Strike Request</a>
              </li>
              <li><a href="Event.jsp">Event Performance</a></li>
              <li><a href="FilmShootin.jsp">Film Shooting</a></li>
              <li><a href="#">View/Download</a></li>
              
         
            </ul>
          </li>
           </ul>
          <ul>
              <li class="dropdown"><a href="#"><span>SERVIES</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="CharacterCertification.jsp">Character Certification</a></li>
              <li><a href="DomasticHelpVerification.jsp">Domastic Help Verification</a>
              </li>
              <li><a href="employeeVerification.jsp">Employee Verification</a></li>
              <li><a href="TenantVerification.jsp">Tenant Verification</a></li>
              <li><a href="#">View/Download</a></li>
              
            </ul>
          </li>
           </ul>
          
          <ul>
              <li class="dropdown"><a href="#"><span>INFORMATION</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="LostPerson.jsp">Lost Person</a></li>
              <li><a href="unidentfiedBody.jsp">Unidentfied Body</a>
              </li>
              <li><a href="cyberawarness.jsp">Cyber Awarness</a></li>
             <li><a href="#">View/Download</a></li>
              
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          <li><a class="nav-link scrollto" href="login.jsp">Log Out</a></li>
           </ul>
          
         
        
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
