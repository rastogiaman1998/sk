<?php require_once('../../common/dbconnection.php')?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <title>Summerking</title>
  </head>

  <body>
  
  <div class="jumbotron"> 
            <h2>Dealer Portal </h2>
            <a href="phpActions/logout.php"><button type="logout" class="btn btn-danger">Logout</button></a></h3>
        </div>

        <?php include_once("../heading.php");
 getSectionHeading("Confirm Order"); 
 
 ?>


  <div class="container">
  
         <div class="clearfix"></div>	
         <div class="clearfix"></div>
<div class="card">


<form action="" method="POST">
<table class="table">
<thead>
  <th>Product Name</th>
  <th>Image</th>
  <th>Product price</th>
  <th>Selected Quantity</th>
  <th>Total Price</th>
</thead>
<?php

$dealer_id= $_GET['dealer_id'];


?>
<?php 


  foreach ($_POST as $key => $value) {
        if($value){
          $key= str_replace('_',' ',$key);
        $sql= "Select * from skproducts where model_name='$key'";
        
        $result = $conn->query($sql);

        if($result->num_rows > 0) 
        {
            
            while($row = $result->fetch_array()) 
            { 
              
              ?>


      <tr>
      <td>
      <?php echo $row['model_name'];?>
      
      <input type="hidden" name="pid" id="pid" value=" <?php echo $row['id'];?>">
      <input type="hidden" name="quant" id="quant" value=" <?php echo $value;?>">
      </td>
     
      <td><img class="tableimg" src="../../images/products/<?php echo $row['image'] ?>"></td>
      <td>
     
      <?php echo $row['price']; ?>
     
      </td>
     
      <td>
      
      <?php echo $value; ?>
      
      </td>
      
      <td>
      
      <?php

       $price= $row['price'];
       $totalprice= $value* $price;
      echo $totalprice;
      ?>
      
      </td>
      
      </tr>
      
      <?php
            }
        }
      

        }

     
  }


?>


</table>	
<div class="button-panel">

<button type="submit" class="btn btn-outline-danger card-link" name='add_to_cart'> Confirm </button>

<button class="btn btn-outline-success card-link" onclick="goBack()"> Edit </button>
<button class="btn btn-outline-info card-link" ><a href="../../dealer.php"> Dealer Portal </a></button>

</div>

</form>







</div>


</div>

<div class="clearfix"></div>	
<div class="clearfix"></div>

         <br>
         <br>

<?php include("../footer.php");?>

<?php

    if(isset($_REQUEST['add_to_cart'])){


  $pid = isset($_POST['pid']) ? $_POST['pid'] : null;
  $quant = isset($_POST['quant']) ? $_POST['quant'] : null;
  
  $sql1 = "INSERT into orders (dealer_id,pid, quantity)
                              Value('$dealer_id','$pid','$quant')";    
  $result1 = mysqli_query($conn , $sql1);
  

  if($result1){
    
    //echo "<meta http-equiv='refresh' content='0'>";
  }
  else{
    
    //echo "<meta http-equiv='refresh' content='0'>";
  }
  

}

?>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


</body>
</html>

<script>
function goBack() {
window.history.back();
}
</script> 

<script>
   if ( window.history.replaceState ) {
     window.history.replaceState( null, null, window.location.href );
   }
</script>