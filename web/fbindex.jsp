<%-- 
    Document   : index
    Created on : Jan 22, 2020, 10:47:56 AM
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
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Facebook Login</title>
    </head>
   <body style="text-align: center; margin: 0 auto;">
	<div
		style="margin: 0 auto; background-image: url(./img/fbloginbckgrnd.jpg); height: 360px; width: 610px;">
		<!--<a href="<%=fbConnection.getFBAuthUrl()%>"> <img
			style="margin-top: 138px;" src="./img/facebookloginbutton.png" />
		</a>-->
                        
                     <div>
                            
                            <a href ="<%=fbConnection.getFBAuthUrl()%>">
                                <button type = "submit"><img
                                        style="margin-top: 138px;" src="./img/facebookloginbutton.png" />
                                </button>
                            
                            </a>
                            
                            
                      </div>
                        
                        
                        
	</div>
                        
 
<script>
 
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '189390942181377',
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
</script>                       
</body>
</html>
