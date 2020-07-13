<?php

$id= $_GET['id'];



?>

<?php require_once('../common/dbconnection.php')?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- Animation Script for heading -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>

    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/dfanspage.css">
    <title>Service Request | Summerking India Pvt Ltd.</title>

  </head>
  <body>

            <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <?php 
                        require_once("../sections/heading.php");
                        getSectionHeading("Admin : Service Details");
                    ?>
                    <hr>
                    
                </div>
            </div>
            
            <?php 
            $sql= "Select * from service where product_registration_id= $id";
            $result = $conn->query($sql); 
            $row= mysqli_fetch_assoc($result);
            ?>
<table class="table">
                    <tr>
                     <td>Service Status :-</td>
                     <td><?php  $status=$row['status'];
                                if($status == 0){
                                    $status= "Service Pending";

                                }
                                else{
                                    $status= "Service Done";
                                }
                                print($status); ?></td>

                    </tr>
                    <tr>
                    <td>Model Name :-</td>
                    <td><?php echo $row['model_name'];?></td>
                    </tr>
                    <tr>
                    <td>Service Required :-</td>
                    <td><?php echo $row['service']; ?></td>                   
                    </tr>
                    <tr>
                    <td>Service Raised Date :-</td>
                    <td><?php $date = date_create($row['date_time']); echo date_format($date, '  jS F Y'); ?></td>
                    </tr>
</table>
<a href="./all-requests.php" ><button class="btn btn-outline-danger" >Back to Previous</button></a>

            
            
            </div>                 
    <?php include("../sections/footer.php");?>
    <?php include("../sections/mobile-footer.php");?>
    </div>
        

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.4.1.js" ></script>
    <script src="../js/popper.min.js" ></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>