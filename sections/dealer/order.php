<?php
 $dealer_id = $_SESSION['dealer_id'];

 if($dealer_id){
    
    $dealer_id=$dealer_id;
    
}
else{
    echo " User not Found";
   
}



 $sql = "SELECT * FROM dealers where dealer_id=$dealer_id";
 
 $result = mysqli_query($conn , $sql);
 $row= mysqli_fetch_assoc($result);

 $username=  $row['first_name']." ".$row['last_name'];

 include_once("./sections/heading.php");
 getSectionHeading($username); 
 
?>
         





     <div class ="container">
        <div class="alert alert-success" role="alert">
            <h4> Instructions :</h4>
            <div class="instructions">
                <ul>
                    <li> You can select products and provide quantity and press button REQUEST QUOTATION </li>

                    <li> Summerking Team will evaluate your request and will reach out to you</li>
                </ul>
            </div>
        </div>

    <h2 >Available Products</h2>
    
    <form method='POST' action='./sections/dealer/cart.php?dealer_id=<?php echo $dealer_id;?>'>  
    

    <table id="table" class="table table-striped">
        <thead>
            <tr><th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>QTY</th>
            </tr>
        </thead>
        <tbody>
            
            <?php 

       
            $sql = "SELECT * FROM skproducts";
            $result = $conn->query($sql);

            if($result->num_rows > 0) 
            {
                
                while($row = $result->fetch_assoc()) 
                { 
                       ?>
                         <td><img class="tableimg" src="./images/products/<?php echo $row['image'] ?>"></td>
                         <td><?php echo $row['model_name']; ?></td>
                         <td><?php echo $row['product_type']; ?></td>
                         <td><?php echo $row['price']; ?></td>
                                                
                    <?php
                        echo "<td><input type='number' max='9999' min='0' name='".$row['model_name']."'></td>";
                        
                        echo "</tr>";
                      
                }
                
            }

            ?>

        </tbody>
       
    </table>
  
    <br>   
    <button type="submit" class="btn btn-lg btn-outline-danger" name='add_to_cart'> Request Quotation</button>
    </form>

</div>
    
   


