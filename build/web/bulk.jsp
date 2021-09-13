<%-- 
    Document   : bulk
    Created on : Jan 23, 2020, 8:52:59 PM
    Author     : anjali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
     Bootstrap 
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
   slick slider 
  <link rel="stylesheet" href="plugins/slick/slick.css">
   themefy-icon 
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
   animation css 
  <link rel="stylesheet" href="plugins/animate/animate.css">
   aos 
  <link rel="stylesheet" href="plugins/aos/aos.css">
   venobox popup 
  <link rel="stylesheet" href="plugins/venobox/venobox.css">

   Main Stylesheet 
  <link href="css/style.css" rel="stylesheet">
  
  Favicon
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">

</head>
<body>
     header 
<header class="fixed-top header">
   top header 
 
  </div>
   navbar 
  <div class="navigation w-100">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
        <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
          aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navigation">
          <ul class="navbar-nav ml-auto text-center">
            <li class="nav-item active">
              <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item @@about">
              <a class="nav-link" href="about.html">About</a>
            </li>
             <li class="nav-item dropdown view">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Courses
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="dac.jsp">PG-DAC</a>
                <a class="dropdown-item" href="dmc.jsp">PG-DMC</a>
                <a class="dropdown-item" href="dvlsi.jsp">PG-DVLSI</a>
                <a class="dropdown-item" href="desd.jsp">PG-DESD</a>
                <a class="dropdown-item" href="ditiss.jsp">PG-DITISS</a>
                <a class="dropdown-item" href="dbihi.jsp">PG-DBIHI</a>
                <a class="dropdown-item" href="dssd.jsp">PG-DSSD</a>
                <a class="dropdown-item" href="diot.jsp">PG-DIOT</a>
                <a class="dropdown-item" href="dbda.jsp">PG-DBDA</a>
                <a class="dropdown-item" href="dhpcsa.jsp">PG-HPCSA</a>
                <a class="dropdown-item" href="dassd.jsp">PG-DASSD</a>
                <a class="dropdown-item" href="dgi.jsp">PG-DGI</a>
                <a class="dropdown-item" href="dai.jsp">PG-DAI</a>
              </div>
            </li>
            
            <li class="nav-item @@contact">
              <a class="nav-link" href="bulk.jsp">CONTACT US</a>
            </li>
            
            <li class="nav-item @@events">
              <a class="nav-link" href="login.jsp">LOGOUT</a>
            </li>
            
            <li class="nav-item @@upload">
              <a class="nav-link" href="upload.jsp">Upload</a>
            </li>
            
            <li class="nav-item @@download">
              <a class="nav-link" href="download.jsp">Download</a>
            </li>
            
          </ul>
        </div>
      </nav>
    </div>
  </div>
</header>
 /header 
 Modal 
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">
            <div class="modal-header border-0">
                <h3>Register</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="login">
                    <form action="#" class="row">
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupPhone" name="signupPhone" placeholder="Phone">
                        </div>
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupName" name="signupName" placeholder="Name">
                        </div>
                        <div class="col-12">
                            <input type="email" class="form-control mb-3" id="signupEmail" name="signupEmail" placeholder="Email">
                        </div>
                        <div class="col-12">
                            <input type="password" class="form-control mb-3" id="signupPassword" name="signupPassword" placeholder="Password">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">SIGN UP</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
 Modal 
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">
            <div class="modal-header border-0">
                <h3>Login</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" class="row">
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="loginPhone" name="loginPhone" placeholder="Phone">
                    </div>
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="loginName" name="loginName" placeholder="Name">
                    </div>
                    <div class="col-12">
                        <input type="password" class="form-control mb-3" id="loginPassword" name="loginPassword" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">LOGIN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

 page title 
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Contact Us</a></li>
             <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>
        </ul>
        <p class="text-lighten">Do you have other questions? Don't worry, there aren't any dumb questions. Just fill out the form below and we'll get back to you as soon as possible.</p>
      </div>
    </div>
  </div>
</section>
 /page title 

 contact 
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2 class="section-title">Contact Us</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-7 mb-4 mb-lg-0">
        <form action="contact" method="post">
          <input type="text" class="form-control mb-3" id="name" name="name" placeholder="Your Name">
          <input type="email" class="form-control mb-3" id="mail" name="mail" placeholder="Your Email">
          <input type="text" class="form-control mb-3" id="subject" name="subject" placeholder="Subject">
          <textarea name="message" id="message" class="form-control mb-3" placeholder="Your Message"></textarea>
          <button type="submit" value="send" class="btn btn-primary">SEND MESSAGE</button>
        </form>
      </div>
      
    </div>
  </div>
</section>
 /contact 



 footer 
<footer>
  
   footer content 
  <div class="footer bg-footer section border-bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-sm-8 mb-10 mb-lg-0">
           logo 
          <a class="logo-footer" href="index.html"><img class="img-fluid mb-4" src="images/logo.png" alt="logo"></a>
          <ul class="list-unstyled">
            <li class="mb-2">Plot No. 6 & 7, Hardware Park,Sy No. 1/1</li>
            <li class="mb-2">Srisailam Highway</li>
            <li class="mb-2">Hyderabad</li>
            
          </ul>
        </div>
                 links 
        <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
          <h4 class="text-white mb-10">LINKS</h4>
          <ul class="list-unstyled">
            <li class="mb-3"><a class="text-color" href="seeAll.html">CDAC Courses</a></li>

            
          </ul>
        </div>
       
      </div>
    </div>
  </div>
  
</footer>
 /footer 

 jQuery 
<script src="plugins/jQuery/jquery.min.js"></script>
 Bootstrap JS 
<script src="plugins/bootstrap/bootstrap.min.js"></script>
 slick slider 
<script src="plugins/slick/slick.min.js"></script>
 aos 
<script src="plugins/aos/aos.js"></script>
 venobox popup 
<script src="plugins/venobox/venobox.min.js"></script>
 mixitup filter 
<script src="plugins/mixitup/mixitup.min.js"></script>
 google map 
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="plugins/google-map/gmap.js"></script>

 Main Script 
<script src="js/script.js"></script>

</body>
</html>

<!--<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8">
<meta http-equiv="content-type" content="text/html">
  <title>CDacPal</title>

   mobile responsive meta 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
   ** Plugins Needed for the Project ** 
   Bootstrap 
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
   slick slider 
  <link rel="stylesheet" href="plugins/slick/slick.css">
   themefy-icon 
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
   animation css 
  <link rel="stylesheet" href="plugins/animate/animate.css">
   aos 
  <link rel="stylesheet" href="plugins/aos/aos.css">
   venobox popup 
  <link rel="stylesheet" href="plugins/venobox/venobox.css">

   Main Stylesheet 
  <link href="css/style.css" rel="stylesheet">
  
  Favicon
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">

</head>

<body>
  


</body>

</html>-->
