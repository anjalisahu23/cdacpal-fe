
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title></title>

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
  <!-- navbar -->
  <div class="navigation w-100">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <a class="navbar-brand" href="#"><img src="images/logo.png" alt="logo"></a>
        
          <div class="collapse navbar-collapse" id="navigation">
                    
        </div>
        <div class="navigation w-100">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        
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
</header>
        <!--<h3> <b>  Upload Your File </b></h3>-->
      </nav>
    </div>
  </div>
</header>
<!-- Modal -->
<body>

    <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg" >
        <br><br><br>
     
</section>  
    
<center> <br><br><br><form  id ="upload-file-form"  method = "post" enctype = "multipart/form-data">    
          <b>
              <div class="col-12" >
                  
            Choose Course  : &emsp;&emsp;<select  id = "courseid" name = "courseid">
                                       <option value="0">----Select----</option>
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
              <br><br>
              <div class="col-12">
                  <br>  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Choose File : &emsp;&emsp;&emsp;<input type="file" id="file" name="uploadfile" /><br></b>
           
              </div>
              <br><br>
               <div class="col-12">
                        <button type="submit" class="btn btn-primary" onclick="uploadFile()">Upload</button>
               </div>
     
    
    
</center>
        


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
         var data= new FormData($("#upload-file-form")[0]);
         var data_t = data.append('courseid',$("#courseid").val());
         var data_s = data.append('file',$('#file')[0].files[0]);
         
        function uploadFile()
          {
                 // var courseid   = document.getElementById("courseid").value;
             $.ajax({
                  //  url: "/uploadFile",
                    
                    url:'http://localhost:8083/cdacpal/media/fileupload',
                    type: "POST",                   
                    data: new FormData($("#upload-file-form")[0]),
                    enctype: 'multipart/form-data',
                    processData: false,
                    contentType: false,
                    cache: false,
                    success: function (responsedata) {
                        
                        if(responsedata.error == 0)
                        {
                            
                        alert(responsedata.error);
                       
                        }
                        else
                        {
                            alert(responsedata.error);
                            alert("Upload Successfully");
                            //setTimeout(function() { window.location = '/CdacPal/index_after_login.jsp' },1000 );
                        }
                        
                    }  
      
           
  });
 }  
         
    
</script>    

    


</body>

    
    
</html>