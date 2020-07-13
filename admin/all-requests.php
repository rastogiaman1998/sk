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
 <div class="container-fluid">
  
    <div class="row">
      

        <div class="col-lg-12 col-md-12">
            <?php 
                require_once("../sections/heading.php");
                getSectionHeading("Admin : Service Request");
            ?>
            <hr>
           
        </div>
    </div>
    <div class="row">
      

        <?php
            
              
                $sql1 = "SELECT service.product_registration_id, service.user_id, service.model_name, service.date_time, service.service,. service.status,
                skproducts.image , users.first_name, users.last_name, users.mobile_number, users.address, users.city, users.state
                FROM ((service INNER JOIN skproducts ON service.pid= skproducts.id) INNER JOIN users ON users.user_id= service.user_id)";
                $result = $conn->query($sql1); 
          
            if(isset($_GET['search']))
            {
                $id= $_GET['search'];
                $sql1 = "SELECT distinct order_id , * FROM orders";
                $result = $conn->query($sql1); 
            }
           if ($result->num_rows == 0)
                {
                    require_once("../sections/heading.php");
                    getSectionHeading("No Results Found");
                }
           
            while($row=$result->fetch_assoc()) {?>
                <div class="col-lg-3 col-md-3 col-sm-12">
                   
                    <div class="card" style="margin-top:2px; margin-bottom:10px; padding:20px;">
                      
                        <div class="card-body">
                        <div class="inner">
                        <img src="../images/products/<?php echo $row['image'];?>" class="card-img-top" style="width:320px; height:200px" alt="Article Image">
                        </div>
                             <h5 class="card-title product-card-title">User ID : <?php echo $row['user_id']?> </h5>
                             <p>Customer Name: <?php $name=$row['first_name']." ".$row['last_name']; echo $name;?></p>
                             <p>Contact No.:<?php echo $row['mobile_number']?></p>
                             <p>Address:<?php $address= $row['address']." ".$row['city']." ".$row['state']; echo $address;?></p>
                             <p>Service Status :<?php $status=$row['status'];
                                                        if($status == 0){
                                                            $status= "Service Pending";

                                                        }
                                                        else{
                                                            $status= "Service Done";
                                                        }
                                                        print($status);
                             ?></p>
                             <center>  
                                <a href="./serviceDetails.php?id=<?php echo $row['product_registration_id'];?>" class="btn btn-outline-danger"  >Service Details </a> 
                            </center>
                                
                        </div>
                    </div>
                </div>
                <?php } ?>
                      
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

<script type="text/javascript">
    $(document).ready(function(){
    $(".product_check").click(function(){
        $("#loader").show();
        var action = 'data';
        var product_type = get_filter_text('product_type');
        $.ajax({
        url:'./phpActions/consumeraction.php',
        method:'POST',
        data:{action:action,product_type:product_type},
        success:function(response){
        $("#result").html(response);
        $("#loader").hide();
        $("#textchange").text("Filtered Categories");
       }
    });
    });
    function get_filter_text(text_id){
    var filterData=[];
    $('#'+text_id+':checked').each(function(){
    filterData.push($(this).val());
    });
    return filterData;
    }
    });
</script>


<!-- Animation Script for heading -->
<script type="text/javascript">

$('.section-heading').hover(function(){
    $(this).toggleClass("animate__animated animate__pulse");
    }); 
</script>
