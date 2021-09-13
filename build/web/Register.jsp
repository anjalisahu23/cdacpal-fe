<%-- 
    Document   : Register
    Created on : Dec 13, 2019, 9:55:39 PM
    Author     : anjali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
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
        <ul class="list-inline custom-breadcrumb">
          &emsp;<li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">REGISTER</a></li>
          <li class="list-inline-item text-white h3 font-secondary @@nasted"> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href = "index.jsp">Skip</a></li>
        </ul>      
          
      <div class="modal-header border-0">
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <form action="#" class="row"  method ="post"  id="signup" name = "myform" >
                       
                        
                        
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupName" name="Name" placeholder="Name" required>
                        </div>
                        <div class="col-12">
                  
                        
                        <select id="signupCourse" name="signupCourse"   required>
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
                                       <option>----Gender----</option>
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
                      
                                   
               
            </div>
                   
     
     
       </div>
    </div>
  </div>
</section>
<script>
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
