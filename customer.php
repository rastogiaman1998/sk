<?php session_start();?>
<?php

if(!isset($_SESSION['user_id'])){
         header("Location: ./sections/customer/login.php");
        exit();
}
?>

<?php require_once('common/dbconnection.php')?>
<?php require_once('sections/customer/auth_session.php')?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/style.css">
    <title>Customer Portal</title>
  </head>

  <body class="indexclass">
    
  
    <?php include("./sections/nav.php");?>
 
        <div class="jumbotron"> 
            <h2>Customer Portal </h2>
            
            <a href="phpActions/logout.php"><button type="logout" class="btn btn-danger">Logout</button></a></h3>
        </div>
    <div class="row section-card">
        <div class="col-md-12">
    
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Registered Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
            </li>
            </ul>
            <div class="tab-content" id="myTabContent">

            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                 <?php include_once('sections/customer/productList.php') ?>

            </div>

            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                <?php include_once('sections/customer/userDetails.php') ?>

            </div>

            </div>


        </div>

    </div>
    <?php include("./sections/discover-range.php");?>
    <?php include("./sections/footer.php");?>
    <?php include("./sections/mobile-footer.php");?>
  
         

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="./js/jquery-3.4.1.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>

<!-- animation for heading -->
<script type="text/javascript">
$('.section-heading').hover(function(){
    $(this).toggleClass("animate__animated animate__pulse");
    }); 
</script>
<?php if($conn){$conn -> close();}?>



<script>

// Script to avoid resubmission of form
$(document).ready(function(){
  $("#btnEdit").click(function(){
    $("#formFieldset").prop('disabled', false);
  });

});
</script>