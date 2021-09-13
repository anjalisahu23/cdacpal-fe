<%-- 
    Document   : sms
    Created on : Jan 29, 2020, 9:02:02 AM
    Author     : anjali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
      <form action="Contact" method="post">
          <input type="text" class="form-control mb-3" id="name" name="name" placeholder="Your Name">
          <input type="email" class="form-control mb-3" id="mail" name="mail" placeholder="Your Email">
          <input type="text" class="form-control mb-3" id="subject" name="subject" placeholder="Subject">
          <textarea name="message" id="message" class="form-control mb-3" placeholder="Your Message"></textarea>
          <button type="submit" value="send" class="btn btn-primary">SEND MESSAGE</button>
        </form>
    </body>
</html>
