<%-- 
    Document   : index
    Created on : Jan 23, 2020, 8:13:27 AM
    Author     : anjali
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javapapers.java.social.facebook.FBConnection"%>


<!DOCTYPE html>

<html lang="zxx">

<head>
    <%
	FBConnection fbConnection = new FBConnection();
%>
    <meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
  <!--<meta charset="utf-8">-->
  <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js"  defer></script>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
     content="536466055968-d0ptk0e0dhjfm06et254e7k5kgejj2t6.apps.googleusercontent.com">
  
    
  <title>CDacPal</title>

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- animation css -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css">
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/venobox/venobox.css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">

  
  <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
  
  
</head>

<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
    
    
 
  <input type="hidden" id="refreshed" value="no">

<!-- header -->
<header class="fixed-top header">
  <!-- top header -->
  <div class="top-header py-2 bg-white">
    <div class="container">
      <div class="row no-gutters">
        
        <div class="col-lg-0 text-center text-lg-right">
          <ul class="list-inline">
           <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#loginModal">login</a></li>
           <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#signupModal">register</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- navbar -->
  <div class="navigation w-100">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <a class="navbar-brand" href="index.html"><img id = "logo" src="images/logo.png" alt="logo"></a>
        <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
          aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navigation">
          <ul class="navbar-nav ml-auto text-center">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item @@about">
                <a class="nav-link" href="#" onclick="javascript:warn()">About</a>
            </li>
             <li class="nav-item dropdown view">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" onClick="warn()" role="button" data-toggle="dropdown"
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
                <a class="nav-link" href="#" onclick="javascript:warn()">CONTACT US</a>
            </li>
            
           
            
            <li class="nav-item @@upload">
              <a class="nav-link" href="#" onclick="javascript:warn()">Upload</a>
            </li>
            
            <li class="nav-item @@download">
              <a class="nav-link" href="#" onclick="javascript:warn()">Download</a>
            </li>
            
            </ul>
            
        </div>
      </nav>
    </div>
  </div>
</header>
<!-- /header -->
<!-- Modal -->

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
                    <form action="#" class="row"  method ="post"  id="signup" name = "myform" >
                       
                        
                        
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupName" name="Name" placeholder="Name" required>
                        </div>
                        <div class="col-12">
                  
                        
                        <select id="signupCourse" name="signupCourse"  style="float:right;" required>
                                       <option value="0">----Courses----</option>
                                        <option value="1">PG-DAC</option>
                                        <option value ="2">PG-DMC</option>
                                        <option value = "3">PG-DVLSI</option>
                                        <option value = "4">PG-DESD</option>
                                        <option value = "5">PG-DITISS</option>
                                        <option value= "6">PG-DBIHI</option>
                                        <option  value = "7">PG-DSSD</option>
                                        <option  value = "8">PG-DIOT</option>
                                        <option  value = "9">PG-DBDA</option>
                                        <option value ="10">PG-HPCSA</option>
                                        <option value = "11">PG-DASSD</option>
                                        <option value= "12">PG-DGI</option>
                                        <option value ="13">PG-DAI</option>
                        </select>
                        
                        
                        </div>
                        <div class="col-12">
                            <input type="date"  pattern="dd-mm-yyyy" class="form-control mb-3" id="signupDob" name="dob" placeholder="DOB" required>
                        </div>
                        
              
                        <div class="col-12">
                          <!-- <input type="text" id="theinput" name="theinput" />-->
                        <select name="thelist" id="signupGender" required>
                                       <option>----Select----</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                       <option>Other</option>
                        </select>
                           <!-- <input type="text" class="form-control mb-3" id="signupGender" name="gender" placeholder="Gender">-->
                        </div>
                        <div class="col-12">
                            <input type="email" class="form-control mb-3" id="signupLoginId" name="emailLoginid" placeholder="Email" required>
                        </div>
                        
                         <div class="col-12">
                            <input type="password" class="form-control mb-3" id="signupPassword" name="emailPassword" placeholder="Password" required>
                        </div>
                        
                         <div class="col-12">
                            <input type="password" class="form-control mb-3" id="signupConpassword" name="emailConpassword" placeholder="confirm-password" required>
                        </div>
                         <div class="col-12">
                            <input type="tel" class="form-control mb-3" id="signupMobile" name="emailMobile" placeholder="Mobile" required>
                        </div>
                        
                         <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupAddress" name="signupAddress" placeholder="Address" required>
                        </div>
                                                
                        <div class="col-12">
                            <button type="button" class="btn btn-primary" onclick="formValidation()" id ="btnsubmit" >SIGN UP</button>
                        </div>
                    </form>
                     <div>
                                       
                                    <a href ="<%=fbConnection.getFBAuthUrl()%>">
                                    <img style="margin-top: 10px; " src="./img/facebookloginbutton.png" />
                                    </a>
                              </div>   
                </div>
            </div>
        </div>
    </div> 
</div>
<!-- Modal -->
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
                        <input type="text" class="form-control mb-3" id="loginId" name="loginId" placeholder="Email" required>
                    </div>
                    <div class="col-12">
                        <input type="password" class="form-control mb-3" id="loginPassword" name="loginPassword" placeholder="Password" required>
                    </div>
                    
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary" onclick="login()">LOGIN</button>
                    </div>
                    
                   <div  class="g-signin2" >
                                   <button data-onsuccess="onSignIn" onclick=""></button>
                    </div>
                    
                    <div>
                        <a href ="<%=fbConnection.getFBAuthUrl()%>">                         
                                    <img style="margin-top: 10px;" src="./img/facebookloginbutton.png" />                            
                            </a>
                   </div>     
                            
                </form>
            </div>
        </div>
    </div>
</div>

<!-- hero slider -->
<section class="hero-section overlay bg-cover" data-background="images/banner/banner-1.jpg">
  <div class="container">
    <div class="hero-slider">
      <!-- slider item -->
      <div class="hero-slider-item">
        <div class="row">
          <div class="col-md-8">
               
            <h1 class="text-white" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".1">To Provide You a Best Contents is Our Mission</h1>
            <p class="text-muted mb-4" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".4">Our aim is to provide all the study material related to CDAC from all CDAC Institute. </p>
            <br><br>
            <center><span>
                    <a href="upload.jsp" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".5"><img id ="up" src="images/logo/uploadblue.png" width="150" height="150"></a>
            &emsp;&emsp;&emsp;&emsp;&emsp;<a href="download.jsp" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".5"><img id ="dw" src="images/logo/download.png" width="150" height="150"></a>
                </span>
            </center>
            
            
               
          </div>
        </div>
      </div>
      
     
      <!-- slider item -->
      <div class="hero-slider-item">
        <div class="row">
          <div class="col-md-8">
            <h1 class="text-white" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".1">Your bright future is our mission</h1>
            <p class="text-muted mb-4" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".4">Success doesn't comes to you, You go to eat and we open a way for you to meet your success.</p>
           <br><br>
            <center><span>
                    <a href="upload.jsp" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".5"><img id ="up" src="images/logo/uploadblue.png" width="150" height="150"></a>
            &emsp;&emsp;&emsp;&emsp;&emsp;<a href="download.jsp" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".5"><img id ="dw" src="images/logo/download.png" width="150" height="150"></a>
                </span>
            </center>
          </div>
        </div>
      </div>
      
      <div class="hero-slider-item">
        <div class="row">
          <div class="col-md-8">
            <h1 class="text-white" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".1">CDACIANS</h1>
            <p class="text-muted mb-4" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".4">An Investment In Knowledge Pays The Best Investment </p>
           <br><br>
            <center><span>
                    <a href="upload.jsp" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".5"><img id ="up" src="images/logo/uploadblue.png" width="150" height="150"></a>
            &emsp;&emsp;&emsp;&emsp;&emsp;<a href="download.jsp" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".5"><img id ="dw" src="images/logo/download.png" width="150" height="150"></a>
                </span>
            </center>
          </div>
        </div>
      </div>
      
</section>
<!-- /hero slider -->

<!-- banner-feature -->
<section class="bg-gray">
  <div class="container-fluid p-0">
    <div class="row no-gutters">
      <div class="col-xl-4 col-lg-5 align-self-end">
        <img class="img-fluid w-100" src="images/banner/banner-feature.png" alt="banner-feature">
      </div>
      <div class="col-xl-8 col-lg-7">
        <div class="row feature-blocks bg-gray justify-content-between">
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-book mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Upload Facility</h3>
            <p>The Documentation and Study Materials necessary for each and every subjects can be uploaded by Faculties, Students (Passed out, Pursuing) from anywhere who has an account in CDACPal.  </p>
          </div>
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-blackboard mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Download Facility</h3>
            <p>All Subject related Study Materials can be Downloaded by anyone from anywhere who has an account in CDACPal.</p>
          </div>
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-agenda mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Help Student</h3>
            <p>Our prime motive is to be a helping hand to all the aspiring Students out there.</p>
          </div>
          <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
            <i class="ti-write mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
            <h3 class="mb-xl-4 mb-lg-3 mb-4">Latest Study Material</h3>
            <p>All the Study Materials related to any subject taught in CDAC would be uploaded immediately with uptodate contents.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /banner-feature -->

<!-- about us -->
<section class="section">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-6 order-2 order-md-1">
        <h2 class="section-title">About CDACPal</h2>
        <p>CDACPal is a website created by a group of Student who were the Graduates of CDAC .</p>
        <p>All the Study Materials no matter which Course of CDAC are you in .We provide you with  the best Study Materials which has a usage of simple and easily understandable language.
        All  the Materials are in Pdf, Ppt and other formats with easily downloadable option.</p> 
        <a href="about.html" class="btn btn-primary-outline">Learn more</a>
      </div>
      <div class="col-md-6 order-1 order-md-2 mb-4 mb-md-0">
        <img class="img-fluid w-100" src="images/about/about-us.jpg" alt="about image">
      </div>
    </div>
  </div>
</section>
<!-- /about us -->

<!-- courses -->
<section class="section-sm">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex align-items-center section-title justify-content-between">
          <h2 class="mb-0 text-nowrap mr-3">CDAC Course</h2>
          <div class="border-top w-100 border-primary d-none d-sm-block"></div>
          <div>
            <a href="seeAll.html" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
          </div>
        </div>
      </div>
    </div>
    <!-- course list -->
<div class="row justify-content-center">
  <!-- course item -->
  <div class="col-lg-4 col-sm-6 mb-5">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <img class="card-img-top rounded-0" src="images/courses/dac.png" 
           
           
           
        alt="course thumb">
      <div class="card-body">
        
        <a href="dac.jsp">
          <h4 class="card-title">PG Diploma in Advance Computing</h4>
        </a>
       
      </div>
    </div>
  </div>
  <!-- course item -->
  <div class="col-lg-4 col-sm-6 mb-5">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <img class="card-img-top rounded-0" src="images/courses/dmc.png" alt="course thumb">
      <div class="card-body">
        
        <a href="dmc.jsp">
          <h4 class="card-title">PG Diploma in mobile Computing</h4>
        </a>
       
      </div>
    </div>
  </div>
  <!-- course item -->
  <div class="col-lg-4 col-sm-6 mb-5">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <img class="card-img-top rounded-0" src="images/courses/dassd.png" alt="course thumb">
      <div class="card-body">
        
        <a href="dassd.jsp">
          <h4 class="card-title">PG Diploma in Advanced Secure Software Development</h4>
        </a>
       
      </div>
    </div>
  </div>
  <!-- course item -->
  <div class="col-lg-4 col-sm-6 mb-5">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <img class="card-img-top rounded-0" src="images/courses/desd.png" alt="course thumb">
      <div class="card-body">
        
        <a href="desd.jsp">
          <h4 class="card-title">PG Diploma in Embedded System and Design </h4>
        </a>
       
      </div>
    </div>
  </div>
  <!-- course item -->
  <div class="col-lg-4 col-sm-6 mb-5">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <img class="card-img-top rounded-0" src="images/courses/dssd.png" alt="course thumb">
      <div class="card-body">
        
        <a href="dssd.jsp">
          <h4 class="card-title">PG Diploma in System Software Development</h4>
        </a>
       
      </div>
    </div>
  </div>
  <!-- course item -->
  <div class="col-lg-4 col-sm-6 mb-5">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <img class="card-img-top rounded-0" src="images/courses/diot.png" alt="course thumb">
      <div class="card-body">
        
        <a href="diot.jsp">
          <h4 class="card-title">PG Diploma in Internet on Things</h4>
        </a>
       
      </div>
    </div>
  </div>
</div>
<!-- /course list -->
    <!-- mobile see all button -->
    <div class="row">
      <div class="col-12 text-center">
        <a href="courses.html" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
      </div>
    </div>
  </div>
</section>
<!-- /courses -->

<!-- events -->
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex align-items-center section-title justify-content-between">
          <h2 class="mb-0 text-nowrap mr-3">Latest Documents</h2>
          <div class="border-top w-100 border-primary d-none d-sm-block"></div>
          
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
  <!-- event -->
  <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
    <div class="card border-0 rounded-0 hover-shadow">
      <div class="card-img position-relative">
        <img class="card-img-top rounded-0" src="images/events/notes.png" alt="event thumb">
        <div class="card-date"><span>18</span><br>December</div>
      </div>
      <div class="card-body">
       
      </div>
    </div>
  </div>
  <!-- event -->
  <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
    <div class="card border-0 rounded-0 hover-shadow">
      <div class="card-img position-relative">
        <img class="card-img-top rounded-0" src="images/events/notes2.jpg" alt="event thumb">
        <div class="card-date"><span>21</span><br>December</div>
      </div>
      <div class="card-body">
        
      </div>
    </div>
  </div>
  <!-- event -->
  <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
    <div class="card border-0 rounded-0 hover-shadow">
      <div class="card-img position-relative">
        <img class="card-img-top rounded-0" src="images/events/notes3.jpg" alt="event thumb">
        <div class="card-date"><span>23</span><br>December</div>
      </div>
      <div class="card-body">
        
      </div>
    </div>
  </div>
</div>
    <!-- mobile see all button -->
    <div class="row">
      <div class="col-12 text-center">
        <a href="course.html" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
      </div>
    </div>
  </div>
</section>
<!-- /events -->

<!-- teachers -->
<section class="section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12">
        <h2 class="section-title">Our Uploaders</h2>
      </div>
      <!-- teacher -->
      <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
        <div class="card border-0 rounded-0 hover-shadow">
          <img class="card-img-top rounded-0" src="images/teachers/anj.jpg" alt="teacher">
          <div class="card-body">
            <a href="teacher-single.html">
              <h4 class="card-title">Anjali Sahu</h4>
            </a>
            <p>Student</p>
            <p>CDAC,Hyderabad</p>
            <ul class="list-inline">
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- teacher -->
      <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
        <div class="card border-0 rounded-0 hover-shadow">
          <img class="card-img-top rounded-0" src="images/teachers/ank.jpg" alt="teacher">
          <div class="card-body">
            <a href="teacher-single.html">
              <h4 class="card-title">Ankit Gupta</h4>
            </a>
            <p>Student</p>
            <p>CDAC,Hyderabad</p>
            <ul class="list-inline">
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- teacher -->
      <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
        <div class="card border-0 rounded-0 hover-shadow">
          <img class="card-img-top rounded-0" src="images/teachers/abijit.jpeg" alt="teacher">
          <div class="card-body">
            <a href="teacher-single.html">
              <h4 class="card-title">Abijith GS</h4>
            </a>
            <p>Student</p>
            <p>CDAC,Hyderabad</p>
            <ul class="list-inline">
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-facebook"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-google"></i></a></li>
              <li class="list-inline-item"><a class="text-color" href="#"><i class="ti-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /teachers -->



<!-- footer -->
<footer>
 
  <div class="footer bg-footer section border-bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-sm-8 mb-10 mb-lg-0">
          <!-- logo -->
          <a class="logo-footer" href="index.html"><img class="img-fluid mb-4" src="images/logo.png" alt="logo"></a>
          <ul class="list-unstyled">
            <li class="mb-2">Plot No. 6 & 7, Hardware Park,Sy No. 1/1</li>
            <li class="mb-2">Srisailam Highway</li>
            <li class="mb-2">Hyderabad</li>
            
          </ul>
        </div>
                <!-- links -->
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
<!-- /footer -->

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="plugins/slick/slick.min.js"></script>
<!-- aos -->
<script src="plugins/aos/aos.js"></script>
<!-- venobox popup -->
<script src="plugins/venobox/venobox.min.js"></script>
<!-- mixitup filter -->
<script src="plugins/mixitup/mixitup.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="plugins/google-map/gmap.js"></script>

<!-- Main Script -->
<script src="js/script.js"></script>
<script>
     function clearform()
     {
         console.log("hello")
         var frm = document.getElementById("signup")[0];
         frm.submit();
         frm.reset();
         return false;
         
     }
     
</script>  

<script>
 /*function noBack()
 {
     history.pushState(null, document.title, location.href);
     window.addEventListener('popstate', function (event)
    {
           history.pushState(null, document.title, location.href);
});
 }
 */
 
 function warn()
 {
     alert("Please Login!");
 }
 
 onload=function(){
               var e=document.getElementById("refreshed");
               if(e.value=="no")e.value="yes";
               else{e.value="no";location.reload();}
           }

 function formValidation()
{
        //alert("hello");
	var vname=document.myform.Name.value; 
	if (vname==null || vname=="")
	{  
  		alert("Name can't be blank");  
  		return false;  
	} 
	
password1 = myform.emailPassword.value; 
if(password1.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
  var x=document.myform.emailLoginid.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address ");  
  return false;  
  }  
	
	
	password1 = myform.emailPassword.value; 
                password2 = myform.emailConpassword.value; 
  
                 if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
  

if( document.myform.emailMobile.value == "" ||
isNaN( document.myform.emailMobile.value) ||
document.myform.emailMobile.value.length != 10 )
{
alert( "Please provide a valid Mobile No " );
document.myform.emailMobile.focus() ;

return false;
}
var a = document.myform.signupAddress.value;
if(a=="")
{
alert("Please Enter Your address");
document.myform.signupAddress.focus();
return false;
}

     register();            
	    
}
  function login()
{
    console.log("kuch nahi");
    var loginId = document.getElementById("loginId").value;
    var password = document.getElementById("loginPassword").value;
  
    jQuery.ajax({
      
        type: "post",
        url:'http://localhost:8083/cdacpal/user/login?loginid='+loginId+'&password='+password,
        data:{data: password},
        success:function(responsedata)
        {
            //alert("login Successfully"+responsedata);
            if(responsedata.success==0)
            {
                alert(responsedata.error);
               
                
            }
            else
            {
                 
                alert(responsedata.error);
                setTimeout(function(){ window.location = '/CdacPal/index_after_login.jsp'; }, 1000);
               
                
            }
        }
        
        
    })
    
    
}   
    
function register(){
                    var name= document.getElementById("signupName").value;
                    var course = document.getElementById("signupCourse").value;
                    var dob = document.getElementById("signupDob").value;
                    var gender = document.getElementById("signupGender").value;
                    var loginid = document.getElementById("signupLoginId").value;
                    var password = document.getElementById("signupPassword").value;
                    var conpassword = document.getElementById("signupConpassword").value;
                    var mobile = document.getElementById("signupMobile").value;
                    var address = document.getElementById("signupAddress").value;
                    var datedob=new Date(dob);
                    dob=datedob;
    //  console.log("value : "+datedob);


    $.ajax({

            type:"GET",
            url:'http://localhost:8083/cdacpal/user/register?name='+name+'&course='+course+'&dob='+dob+'&gender='+gender+'&loginid='+loginid+'&password='+password+'&conpassword='+conpassword+'&address='+address+'&mobile='+mobile,
            success:function(responsedata){
                if(responsedata.success==0)
                {
                    alert(responsedata.error);
                }
                else
                {
                    alert(responsedata.error);
                    setTimeout(function() {window.location='/CdacPal/index_after_login.jsp',1000});
                }
                  // alert("got response as "+"'"+responsedata+"'");

            }
         })

    }



    </script>



</body>

    
    
</html>
