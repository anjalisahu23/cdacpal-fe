<%-- 
    Document   : Login
    Created on : Dec 13, 2019, 9:55:39 PM
    Author     : anjali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javapapers.java.social.facebook.FBConnection"%>

<%
//     response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
//     response.setHeader("Pragma","no-cache");
//         response.setHeader("Expires", "0");
//        
	FBConnection fbConnection = new FBConnection();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://apis.google.com/js/platform.js"  defer></script>
        <meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
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

 
  
        
        
        <script type="text/javascript">
        function preventBack() { 
                window.history.forward(); 
        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { 
            null 
        };
        
        
        
    </script>
  
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
            
            #logo{
                opacity:0.5;
            }
            
            
        </style> 
    </head>
    <body>
       
    <script src="plugins/jQuery/jquery.min.js"></script>    
       <!-- <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
       <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">-->
       
 <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
          
  <div class="container">
      
    <div class="row">
      <div class="col-md-8">
          <a href="login.jsp"><img id = "logo" src="images/logo.png" alt="logo"></a>
        <ul class="list-inline custom-breadcrumb">
            
          &emsp;<li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">LOGIN</a></li>
          <li class="list-inline-item text-white h3 font-secondary @@nasted"> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href = "index.jsp">Skip</a></li>
        </ul>      
          
      <div class="modal-header border-0">
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" class="row" >
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" id="loginId" name="loginId" placeholder="Email" >
                    </div>
                    <div class="col-12">
                        <input type="password" class="form-control mb-3" id="loginPassword" name="loginPassword" placeholder="Password">
                    </div>
                    <span> 
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary" onClick="login()">LOGIN</button>                          
                    </div>
                </form>         
                          <br> 
                                          
                                <div>
                                       
                                    <a href ="<%=fbConnection.getFBAuthUrl()%>">
                                    <img style="margin-top: 10px; " src="./img/facebookloginbutton.png" />
                                    </a>
                              </div>          
                        <br>
                       <div  class="g-signin2" >
                                <button data-onsuccess="onSignIn" onclick="googlelogin()"></button>
                        </div>
                        <br><br>
                        <a href="Register.jsp" class="btn btn-primary" >Register</a>                        
                    
               
            </div>
                   
     
     
       </div>
    </div>
  </div>
</section>
<script>
    
    
    
    
    
    
    function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
      }
       function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
    
    window.fbAsyncInit = function() {
    FB.init({
      appId      : '449742522606357',
      cookie     : true,
      xfbml      : true,
      version    : 'v5.0'
    });
      
    FB.AppEvents.logPageView();   
      
  };
 
 
 
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
   
   
   
   
   
   
    function  googlelogin()
   {
	function onSignIn(googleUser) {
      var profile = googleUser.getBasicProfile();
      console.log('ID: ' + profile.getId());
      console.log('Name: ' + profile.getName());
      console.log('Image URL: ' + profile.getImageUrl());
      console.log('Email: ' + profile.getEmail());
      console.log('id_token: ' + googleUser.getAuthResponse().id_token);

     //do not post above info to the server because that is not safe.
     //ju
     //st send the id_token
      
      
      
      var redirectUrl = 'login';
      //using jquery to post data dynamically
      var form = $('<form action="' + redirectUrl + '" method="post">' +
                          '<input type="text" name="id_token" value="' +
                           googleUser.getAuthResponse().id_token + '" />' +
                                                                '</form>');
                $('body').append(form);
                form.submit();
         }
     }

  function login()
{
    console.log("kuch nahi");
    var loginId = document.getElementById("loginId").value;
    var password = document.getElementById("loginPassword").value;
  
    jQuery.ajax({
      
        type: "post",
        url:'http://localhost:8083/cdacpal/user/login?loginid='+loginId+'&password='+password,
//        data:{data: password},
        success:function(responsedata)
        {
            //alert("login Successfully"+responsedata);
            if(responsedata.success==0)
            {
                alert(responsedata.error);
               
                
            }
            else
            {
                 
               alert(responsedata.error+responsedata.userId);
                localStorage.setItem("userid",responsedata.userId);
                
                setTimeout(function(){ window.location = '/CdacPal/index_after_login.jsp'; }, 1000);
               
                
            }
        }
        
        
    })
    
    
}
         
      </script>   
         
     
     
    </body>
</html>