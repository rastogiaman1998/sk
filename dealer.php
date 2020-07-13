<?php session_start();?>
<?php require_once('common/dbconnection.php')?>

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
    <link rel="stylesheet" href="./css/style.css">
    
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
     <link rel="stylesheet" type="text/css" href="/DataTables/datatables.css">
     <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">

    <title>Dealer Portal - Summerking</title>
  </head>

  <body class="indexclass">
    
  
    <?php include("./sections/nav.php");?>
 
        <div class="jumbotron"> 
            <h2>Dealer Portal </h2>
            <a href="phpActions/logout.php"><button type="logout" class="btn btn-danger">Logout</button></a></h3>
        </div>
    
        <div class="row section-card">
        <div class="col-md-12">
    
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Order Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
            </li>
            </ul>
            <div class="tab-content" id="myTabContent">

            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                 <?php include_once('sections/dealer/order.php') ?>

            </div>

            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                <?php include_once('sections/dealer/userDetails.php') ?>

            </div>

            </div>


        </div>
<br>
    </div>
    <?php include("./sections/footer.php");?>
    <?php include("./sections/mobile-footer.php");?>
  
         

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="./js/jquery-3.4.1.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script type="text/javascript" charset="utf8" src="/DataTables/datatables.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
    
  


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

<script>
   $(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>

<!-- to stop from resubmission-->
<script>
   if ( window.history.replaceState ) {
     window.history.replaceState( null, null, window.location.href );
   }
</script>





