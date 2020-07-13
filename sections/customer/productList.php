

<?php
 $user_id = $_SESSION['user_id'];

 if($user_id){
    
    $user_id=$user_id;
}
else{
  
    echo " User not Found";
}


//to get user name---------------------------------------------
$sql_name="SELECT first_name, last_name from users where user_id = $user_id";
$result_name= mysqli_query($conn, $sql_name);
$row = mysqli_fetch_assoc($result_name);

$username= $row['first_name']." ".$row['last_name'];

    include_once("./sections/heading.php");
    getSectionHeading($username. ": Your Registrations"); 




// -----------------------------------------------------------


 $sql = "SELECT product_registration.product_registration_id, product_registration.serial_number, product_registration.pid, 
 product_registration.invoice_image, product_registration.purchase_date, product_registration.user_id,
 skproducts.model_name, skproducts.image, skproducts.model_number from product_registration 
 INNER JOIN skproducts on product_registration.pid= skproducts.id WHERE user_id = $user_id";
 
 $result = mysqli_query($conn , $sql);
?> 
<div class="container" style="margin-bottom:50px;">
    <div class="row row2">

    <div class="col-lg-4">
    <button type="button" class="btn " data-toggle="modal" data-target="#addProductModal">
 

               <div class="card card-row2 add-card">
                   <div class="card-body">
                       <h3 class="card-title">Register New Product</h3>
                       <p> Click button below to register new product</p>
                       <center><a href=""><i class="fa fa-plus add-product-icon" aria-hidden="true"></i></a><center>
                      
                   </div>
               </div> 
               </button>
       </div>

        <?php while($row=$result->fetch_assoc()) {?>
            <div class="col-lg-4 col-sm-6">
               
                    <div class="card card-row2">
                        <div class="inner">
                            <img src="./images/products/<?php echo $row['image'];?>" class="card-img-top" style="width:320px; height:200px" alt="Article Image">
                        </div>
                        <div class="card-body">
                            <h6 class="card-title">Model : <?php echo $row['model_name'] ?></h6>
                            <h6 class="card-title">Purchase : <?php $date = date_create($row['purchase_date']); echo date_format($date, '  jS F Y'); ?></h6> 
                            <h6><a href="./images/invoice_image/<?php echo $row['invoice_image'];?>">Check Invoice</a></h6>
                            
                            <div class="btn-group" role="group" aria-label="Basic example">
                                
                                
                                <!--------button for service------->
                                <button type="button" class="btn btn-outline-success servicebtn"  data-toggle="modal" data-target="#servicemodal"
                                data-pr-id="<?php echo $row['product_registration_id'];?>"  data-user="<?php echo $row['user_id']?>" data-model="<?php echo $row['model_name'];?>" data-pid-service="<?php echo $row['pid'];?>">Request Service</button>
                                <!---------end--------------------->



                                <!--buttton for delete products---->
                                <button class="btn btn-outline-danger passingID" data-toggle="modal" data-target="#deletemodal" data-id="<?php echo $row['product_registration_id'];?>"
                                 data-model-name="<?php echo $row['model_name'];?>" data-serial-number="<?php echo $row['serial_number'];?>">Delete Product</button>
                                <!----end--------------------------->
                            </div>
                        </div>
                        
                    </div> 
            </div>

            <?php } ?>
            
    </div>
</div>

<!-- modal for add product-->

<div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLabel">Register Product</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">

        <div id="product-registration-form" class="section-card">

    

    <form action="" method="POST" enctype="multipart/form-data">
    
    <?php 
    $sql= "select id, model_name , image  from skproducts";
    $result = mysqli_query($conn , $sql);
    ?>
        
        <div class="form-group">
            <label for="model_name">Model Name</label>
           
            <select id = "pid" name="pid" class="form-control">
              
               <?php
                   while($row = mysqli_fetch_assoc($result)){
               
               
              echo" <option value='".$row['id']."'>".$row["model_name"]."</option>";
                   
                    } ?>
             </select>
        </div>
        <div class="form-group">
            <label for="serial_number">Serial Number</label>
            <input type="text" class="form-control" name="serial_number" id="serial_number" Required>
        </div>
        <div class="form-group">
            <label for="purchase_date">Purchase Date</label>
            <input type="date" class="form-control" name="purchase_date" id="purchase_date" Required>
        </div>
      
        <div class="form-group">
            <label>Invoice Image</label>
            
                <input  type="file" name="file" required>
           
        </div>
</div>

        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         <button type="submit" class="btn btn-danger" name="submit-addRecord">Submit</button>
    </form>
      </div>
    </div>
  </div>
</div>


<!-- php for add product --->

<?php


if(isset($_REQUEST['submit-addRecord'])){
 
  $pid =  isset($_POST['pid']) ? $_POST['pid'] : null;
  $serial_number = isset($_POST['serial_number']) ? $_POST['serial_number'] : null;
  $purchase_date = isset($_POST['purchase_date']) ? $_POST['purchase_date'] : null;
  $file_name= $_FILES['file']['name'];
        $file_type= $_FILES['file']['type'];
        $file_size= $_FILES['file']['size'];
        $file_tem_loc= $_FILES['file']['tmp_name'];

        $file_store= "./images/invoice_image/".$file_name;

        move_uploaded_file($file_tem_loc,$file_store);

  
  $sql = "INSERT INTO product_registration ( user_id, pid,serial_number,purchase_date,invoice_image)
                        VALUES('$user_id','$pid', '$serial_number', '$purchase_date','$file_name')";

                   
  $result = mysqli_query($conn , $sql);


  if($result){
    echo "<meta http-equiv='refresh' content='0'>";
    
   // showAlert("success","Product Registration Successful");
  }
  else{
    echo "<meta http-equiv='refresh' content='0'>";
   // showAlert("danger","Product Registration Failed");

  }
  

}





?>


<!------------------------------------------------------------->

<!--- delete modal -->



<div class="modal fade" id="deletemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden=
    "true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion ?</h5><button type="button" class=
                    "close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                </div>
        


                
                    <div class="modal-body">
                    <form action="" method="post">
                    

                    <div class="form-group">
                    <input type="hidden" class="form-control" name="id" id="id" value="">
                    
                
                        </div>
                       
                        <div class="form-group">
                            <label>Modal name</label> <input type="text" name="model_name" id="model_name" class=
                            "form-control" value="" readonly>
                        </div>
                        <div class="form-group">
                            <label>Serial Number</label> <input type="text" name="snumber" id="snumber" 
                            class="form-control" value="" readonly>
                        </div>
                        
                    
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" name="deletedata" class="btn btn-outline-danger">Delete Data</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
   
    <script>
$(".passingID").click(function () {
    var ids = $(this).attr('data-id');
    var model_name= $(this).attr('data-model-name');
    var serial_number = $(this).attr('data-serial-number');
    $("#id").val( ids );
    $("#model_name").val(model_name);
    $("#snumber").val(serial_number);
    $('#deletmodal').modal('show');
});

</script>

<!------------------------------------------------------------->




<!-- php for delete registerd product--->

<?php


if(isset($_POST['deletedata'])){

  
  $product_id= $_POST['id'];
 
  $sql = "DELETE FROM product_registration WHERE product_registration_id='$product_id'";

             
  $result = mysqli_query($conn , $sql);


  if($result){
   
    echo "<meta http-equiv='refresh' content='0'>";
   
  }

  else{
  
    echo "<meta http-equiv='refresh' content='0'>";
  }
  

}

?>
<!--------------------------------------------------------------------------------->


<!------------ SErvice modal-------------------------------------------------------->


<div class="modal fade" id="servicemodal" tabindex="-1" role="dialog" aria-labelledby="servicemodal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Service</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <form action="" method="post">
      <input type="hidden" class="form-control" name="product_registration_id" id="product_registration_id" value="">
      <input type="hidden" class="form-control" name="user" id="user" value="">
      <input type="hidden" class="form-control" name="model" id="model" value="">
      <input type="hidden" class="form-control" name="pid_service" id="pid_service" value="">
                      
     <label>Service Required</label> 
     <textarea  name="service" id="service" class="form-control" placeholder="Enter service required"></textarea>
                     






    
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-outline-danger" name="servicebtn">Save changes</button>
      </div>
      </form>
    </div>
  </div>
</div>

<script>

$(".servicebtn").click(function () {
    
    var product_registration_id= $(this).attr('data-pr-id');
    var user = $(this).attr('data-user');
    var model= $(this).attr('data-model');
    var pid_service= $(this).attr('data-pid-service');
  
   
    $("#product_registration_id").val(product_registration_id);
    $("#user").val(user);
    $("#model").val(model);
    $("#pid_service").val(pid_service);
    
    $('#servicemodal').modal('show');
});

</script>
<!----------------------------------------------------------------------------------->

<!--------php for service------------------------------------>


<?php


if(isset($_POST['servicebtn'])){

  
  $product_registration_id= $_POST['product_registration_id'];
  $user_id= $_POST['user'];
  $service= $_POST['service'];
  $model = $_POST['model'];
  $pid= $_POST['pid_service'];
  $sql = "INSERT into service (product_registration_id, user_id, service ,model_name, pid)
                    VALUES('$product_registration_id','$user_id','$service', '$model','$pid')";

             
  $result = mysqli_query($conn , $sql);


  if($result){
   //echo $sql;
   echo "<meta http-equiv='refresh' content='0'>";
  echo '<script language="javascript">';
   echo 'alert("Service Request Generated")';
   echo '</script>';
   
  }

  else{
  
    echo "<meta http-equiv='refresh' content='0'>";
    echo '<script language="javascript">';
    echo 'alert("Service Request Not Generated")';
    echo '</script>';
  }
  

}

?>


<!----------------------------------------------------------------------------------->





<script>
   if ( window.history.replaceState ) {
     window.history.replaceState( null, null, window.location.href );
   }
</script>