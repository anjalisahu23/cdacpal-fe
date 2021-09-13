<%-- 
    Document   : download
    Created on : Dec 24, 2019, 7:09:39 PM
    Author     : nicea
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        
    <head>
 <meta charset="utf-8">
  <title> Download Page</title>

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

  
  
</head>

<!-- header -->
<header class="fixed-top header">
  <!-- top header -->
  <div class="top-header py-2 bg-white">
    <div class="container">
      <div class="row no-gutters">
       
        <div class="col-lg-0 text-center text-lg-right">
          <ul class="list-inline">
            
          
        </div>
      </div>
    </div>
  </div>
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
                <a class="nav-link" href="index_after_login.jsp">Home</a>
            </li>
            
          </ul>
        </div>
      </nav>
    </div>
  </div>
<body onLoad="showdata()">
   <!--  <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg" >
      
     </section>-->
    
    
    
    
    
    <table align = "center"
            id="table" border="1"> 
    </table> 
    
   
    
      
   

 
<script src="plugins/jQuery/jquery.min.js"></script>

<script>
    
  function showdata() {    
            
                console.log('hii')
                 var output ;
                $.ajax({
                    type: "get",
                    url: 'http://localhost:8083/cdacpal/getALLcoursematerial',
                    
                    success: function (response) {
                        console.log(response);
                        //var data = JSON.parse(response);
                        
//                        document.getElementById("para").innerHTML = "Click on the button to create " 
//                                                            +   "the table from the JSON data.<br><br>" 
//                                                                    + JSON.stringify(response[0]) + "<br>"  
//                                                                    + JSON.stringify(response[1]) + "<br>" 
//                                                                    + JSON.stringify(response[2]);+ "<br>"
//                                                                    + JSON.stringify(response[2]);
//                                      
                                                    selector= document.getElementById("table"); 
              
                                                         // Getting the all column names 
                                                          var cols = Headers(response, selector);   
   
                                                        // Traversing the JSON data 
                                                        console.log("Response",response)
                                             for (var i = 0; i < response.length; i++) { 
                                              var row = $('<tr/>');    
                                               for (var colIndex = 0; colIndex < cols.length; colIndex++) 
                                               { 
                                                    var val = response[i][cols[colIndex]];
                                                        if(colIndex == 3)
                                                        {   
                                                            console.log("out", val)
                                                            var file = "file";
                                                           // val = '<a href='+val+'>'+val+'</a>'
                                                           
                                                           val =  '<a href='+val+'>'+val+'</a>'
                                                        }
                                                    // If there is any key, which is matching 
                                                    // with the column name 
                                                    if (val == null) val = "";   
                                                     row.append($('<td/>').html(val)); 
                                                     
                                                    
                                                     
                                                     } 
                  
                                                             // Adding each row to the table 
                                                         $(selector).append(row); 
                                                }
////                                              
                                             
        
                                        function Headers(response, selector) { 
                                                    var columns = []; 
                                                    var header = $('<tr/>'); 
              
                                                    for (var i = 0; i < response.length; i++) { 
                                                                        var row = response[i]; 
                  
                                                        for (var k in row) { 
                                                        if ($.inArray(k, columns) == -1) { 
                                                                columns.push(k); 
                          
                                                                    // Creating the header 
                                                             header.append($('<th/>').html(k)); 
                                                            } 
                                                        } 
                                                     } 
              
                                                        // Appending the header to the table 
                                                    $(selector).append(header); 
                                                    return columns; 
                                                    }        
                            }
                        
                       });
                 }            
</script>    
</body>

</html>
<%@include file = "./common/footer.jsp"  %>