<%-- 
    Document   : UpdateProfile
    Created on : Jan 24, 2020, 3:45:35 PM
    Author     : anjali
--%>

<%-- 
    Document   : Login
    Created on : Dec 13, 2019, 9:55:39 PM
    Author     : anjali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javapapers.java.social.facebook.FBConnection"%>

<%
	FBConnection fbConnection = new FBConnection();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://apis.google.com/js/platform.js"  defer></script>
        <meta name="google-signin-scope" content="profile email">
        <meta name="google-signin-client_id"
     content="536466055968-d0ptk0e0dhjfm06et254e7k5kgejj2t6.apps.googleusercontent.com">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

 
        
        
        
        
        <title>JSP Page</title>
        
        <style>
            .aParenthai
            {
                float: left;
                clear: none; 
            }
            #d1
            {
                float:center;
                margin-left: 300px;
                margin-top: 50px;
            }
            
            
            
            
        </style> 
    </head>
    <body onload="userProfile()">
     
    <script src="plugins/jQuery/jquery.min.js"></script>    
       <!-- <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
       <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">-->
 <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
 <a class="navbar-brand" href="UpdateProfile.jsp"><img id = "logo" src="images/logo.png" alt="logo"></a>
     <div class="container">
      
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          &emsp;<li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Update Profile</a></li>
          <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>
        </ul>      
       
      <div class="modal-header border-0">
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" class="row" >
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="loginName" name="loginname" placeholder="User Name">
                    </div>
                    <div class="col-12">
                        <input type="email" class="form-control mb-3" id="loginEmail" name="" placeholder="Email">
                    </div>
                    <div class="col-12">
                        <input type="password" class="form-control mb-3" id="loginPassword" name="loginPassword" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="userId" name="userId" placeholder="Userid" disabled>
                    </div>
                    <div class="col-12">
                        <input type="tel" class="form-control mb-3" id="loginMobile" name="loginMobile" placeholder="Mobile">
                    </div>
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="loginAddress" name="" placeholder="Address">
                    </div>
                    <span> 
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary" onClick="update()">Update</button>                          
                    </div>
                </form>         
                             
               
            </div>
     
     
       </div>
    </div>
  </div>
</section>
<script>
    function update()
 {
      
       var name = document.getElementById("loginName").value;
    var email = document.getElementById("loginEmail").value;
    
 
     var password = document.getElementById("loginPassword").value;
    var userid = document.getElementById("userId").value;
     var mobile = document.getElementById("loginMobile").value;
    var address = document.getElementById("loginAddress").value;
    var pwd;
    var ui;
   //alert("Before ajax");
  
  
     $.ajax({
        type: "post",
        
        url:'http://localhost:8083/cdacpal/user/updateprofile?userid='+userid+'&name='+name+'&email='+email+'&password='+password+'&address='+address+'&mobileno='+mobile,
        success:function(responsedata)
        {
            if(responsedata.success==0)
            {
                
                alert(responsedata.error);                
            }
            else 
            {
                  alert("update successfully");
                setTimeout(function(){ window.location = '/CdacPal/index_after_login.jsp'; }, 1000);
               
                
            }
        }
    });
 }
         
   
    
   

  function userProfile()
{
     
//    var name = document.getElementById("loginName").value;
//    var email = document.getElementById("loginEmail").value;
//     var password = document.getElementById("loginPassword").value;
//    var userid = document.getElementById("userId").value;
//     var mobile = document.getElementById("loginMobile").value;
//    var address = document.getElementById("loginAddress").value;
//    
    var loginID=localStorage.getItem("userid");
    //alert(loginID);
    //alert(localStorage.getItem("userid"));
    jQuery.ajax({
      
        type: "post",
        url:'http://localhost:8083/cdacpal/user/getprofile?userid='+loginID,

        success:function(responsedata)
        {
            //alert("login Successfully"+responsedata);
            if(responsedata == null)
            {
               
                console.log("kuch nahi");
            }
            else
            {
                // console.log(responsedata.d);
                //render data into page
                //alert(responsedata.d);
                
              $('#loginName').val(responsedata['name']);
                $('#loginEmail').val(responsedata['email']);
                 $('#loginPassword').val(responsedata['password']);
                  $('#userId').val(responsedata['userid']);
                   $('#loginMobile').val(responsedata['mobileno']);
                    $('#loginAddress').val(responsedata['address']);
               
               
               
                
            }
        }
        
        
    });
    
    
}


 
         
 
      </script>   
         
     
     
    </body>
</html>
