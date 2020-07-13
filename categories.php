<?php require_once("./common/dbconnection.php") ?>
<!Doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="./css/dfanspage.css">
    
      <title>Card2</title>
   </head>
   <body>

   <?php include("./sections/nav.php")?>
      <div class="container-fluid">
         <img src="./images/website/1-1.png" style="height:100%; width:100%;" class="img-fluid" alt="Responsive image">
         <?php
            if(isset($_GET['product_type'])){
               $product_type= $_GET['product_type'];
          }
         ?>  
           
         <center>
            <h2 style="padding-top:40px;">FANS</h2>
         </center>
         <p>
         <center>Summer King fans help you stay cool and 
            comfortable at all times. We provide a 
         </center>
         <center>wide variety 
            of sizes, designs, colours and aesthetics across the 
            different types
         </center>
         <center> of fans to suit every purpose. 
            Innovation, high quality, great design and 
         </center>
         <center>engineering
            have ensured our products reach every nook and corner
            of India
         </center>
         <center> as well as other tropical countries.</center>
         </p>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-6">
               <div class="card">
                  <div class="inner">
                     <img class="card-img-top" src="./images/website/2_Mobile.png" alt="card image cap">
                  </div>
                  <div class="card-body">
                     <h4 class="card-title">
                        Ceiling Fans
                     </h4>
                     <p class="card-text">
                        A wide range of ceiling fans for rooms of every size that compliment your décor. Choose from energy efficient,
                        high speed, anti-dust, Duratech, decorative and many more.
                     </p>
                     <center>
                        <a href="products.php?" class="btn btn-outline-danger">View All Products</a>
                     </center>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="card">
                  <div class="inner">
                     <img class="card-img-top" src="./images/website/Pedestal_fan_thumbnail-1.png" alt="card image cap">
                  </div>
                  <div class="card-body">
                     <h4 class="card-title">
                        Pedestal Fans
                     </h4>
                     <p class="card-text">
                        Our range of high speed and performance-oriented pedestal fans can work brilliantly across all the rooms
                        of your house.These fans are also available high speed and decorative.
                     </p>
                     <center>
                     <a href="#" class="btn btn-outline-danger">View All Products</a>
                     </center>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="card">
                  <div class="inner">
                     <img class="card-img-top" src="./images/website/Table_Fan_thumbnail.png" alt="card image cap">
                  </div>
                  <div class="card-body">
                     <h4 class="card-title">
                        Table Fans
                     </h4>
                     <p class="card-text">
                        Our innovative range of table fans are easily portable and suit individual cooling needs wherever you need one.
                     </p>
                     <center>
                     <a href="#" class="btn btn-outline-danger">View All Products</a>
                     </center>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="card">
                  <div class="inner">
                     <img class="card-img-top" src="./images/website/Wall_Mount_thumbnail.png" alt="card image cap">
                  </div>
                  <div class="card-body">
                     <h4 class="card-title">
                        Wall Mounted Fans
                     </h4>
                     <p class="card-text">
                        A wide variety of aesthetically appealing wall mounted fans that provide unmatched air delivery.
                     </p>
                     <center>
                     <a href="#" class="btn btn-outline-danger">View All Products</a>
                     </center>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="card">
                  <div class="inner">
                     <img class="card-img-top" src="./images/website/exhuast_Cateogry.png" alt="card image cap">
                  </div>
                  <div class="card-body">
                     <h4 class="card-title">
                        Domestic Exhaust Fans
                     </h4>
                     <p class="card-text">
                        Solutions for air circulation in confined spaces that provide relief from smoky air and unwanted odours at home.
                     </p>
                     <center>
                     <a href="#" class="btn btn-outline-danger">View All Products</a>
                     <center>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="card">
                  <div class="inner">
                     <img class="card-img-top" src="./images/website/Air_Buddy_Mobile.png" alt="card image cap">
                  </div>
                  <div class="card-body">
                     <h4 class="card-title">
                        Kitchen Fans
                     </h4>
                     <p class="card-text">
                        The 1st Fan that keeps you cool in the kitchen even when the gas is on with its focussed air flow.
                     </p>
                     <center>
                     <a href="#" class="btn btn-outline-danger">View All Products</a>
                     </center>
                  </div>
               </div>
            </div>
         </div>
         
      </div>
      <?php include("./sections/discover-range.php");?>
      <?php include("./sections/footer.php");?>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="./js/jquery-3.4.1.js" ></script>
    <script src="./js/popper.min.js" ></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>
<?php if($conn){$conn -> close();}?>