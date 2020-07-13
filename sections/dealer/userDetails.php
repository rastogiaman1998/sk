<?php 

include_once("./sections/heading.php");
getSectionHeading("USER DETAILS"); 
?>


<div class="container" style="margin-bottom:50px;">
    <div class="row card">
    <div class="col-md-12">

    <div class="alert alert-primary">
           <br/> 
        <ul>
                <li>You can edit information below to update your details</li>
             
               
        </ul>   
     </div>
   

<?php
    require('common/dbconnection.php');

    $dealer_id=$_SESSION['dealer_id'];
             
    $sql="SELECT * FROM  dealers where dealer_id='$dealer_id'";
    $result = mysqli_query($conn , $sql);
    $row= mysqli_fetch_assoc($result);
       
?>

           
            <form method='POST' action=''>
            
            <input type='hidden' class='form-control' name="dealer_id" id="dealer_id" value="<?php echo $row['dealer_id'];?>">
            
            <div class='form-group'>
                <label>Mobile</label>
                <input type='text' name='mobile_number' id='mobile_number' class='form-control' value="<?php echo $row['mobile_number'];?>"readonly>
            </div>

            <div class='form-group'>
                <label>First Name</label>
                <input type='text'  class='form-control'  name='first_name' id='first_name' value="<?php echo $row['first_name'];?>">
            </div>

            <div class='form-group'>
                <label>Last Name</label>
                <input  class='form-control' type='text'  name='last_name' id='last_name' value="<?php echo $row['last_name'];?>">
            </div>
           
            <div class='form-group'>
                <label>Email</label>
                <input type='text'  class='form-control' name='email' id='email' value="<?php echo $row['email'];?>">
            </div>
            
            <div class='form-group'>
                <label>Address</label>
                <input  class='form-control' type='text' name='address' id='address' value="<?php echo $row['address'];?>">
            </div>
            <div class='form-group'>
                <label>city</label>
                <input type='text' name='city' id='city'  class='form-control' value="<?php echo $row['city'];?>">
            </div>
            <div class='form-group'>
                <label>State</label>
                <input type='text' name='state' id='state'  class='form-control' value="<?php echo $row['state'];?>">
            
            <br>
            <input type='submit' value="Update" name="submit-updateProfile" class='btn btn-outline-danger'>
          
        </form>
<?php

     


   
?>
        </div>
    </div>
    </div>



<?php

    if(isset($_REQUEST['submit-updateProfile'])){

$dealer_id= isset($_POST['dealer_id']) ? $_POST['dealer_id'] : null;
  $mobile_number = isset($_POST['mobile_number']) ? $_POST['mobile_number'] : null;
  $first_name = isset($_POST['first_name']) ? $_POST['first_name'] : null;
  $last_name = isset($_POST['last_name']) ? $_POST['last_name'] : null;
  $email = isset($_POST['email']) ? $_POST['email'] : null;
  $address = isset($_POST['address']) ? $_POST['address'] : null;
  $city = isset($_POST['city']) ? $_POST['city'] : null;
  $state = isset($_POST['state']) ? $_POST['state'] : null;
  
  $sql1 = "UPDATE dealers SET first_name='$first_name', last_name='$last_name', email='$email', mobile_number='$mobile_number',address='$address', city='$city', state='$state' where dealer_id='$dealer_id'";
                   
  $result1 = mysqli_query($conn , $sql1);
  

  if($result1){
    
    echo "<meta http-equiv='refresh' content='0'>";
  }
  else{
    
    echo "<meta http-equiv='refresh' content='0'>";
  }
  

}

?>