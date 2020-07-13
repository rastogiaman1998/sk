<?php require_once('./common/dbconnection.php')?>
<?php 

    require_once("heading.php");
    getSectionHeading("RELATED PRODUCTS");

    if(isset($_GET['product_type']))
    {
        $product_type= $_GET['product_type'];
    }

    if(isset($_GET['product_type']))
    {
        $product_type= $_GET['product_type'];
        $sql1 = "SELECT * FROM skproducts where product_type='$product_type' limit 3";
        $result = $conn->query($sql1); 
    }
?>
    <div class="container" style="margin-bottom:50px;">
        <div class="row">
            <?php while($row=$result->fetch_assoc()) {?>
            <div class="col-lg-4" >
                    <div class="card">
                        <div class="inner">
                            <img src="./images/products/<?php echo $row['image'] ?>" width="100px" height="250px" class="card-img-top" alt="Product Image">
                        </div>
                        <div class="card-body">
                            
                        <h5 class="card-title product-card-title"><?php echo $row['model_name']?></h5>
                        <?php 
                                    if($row['price'] >0) {
                                        echo "<p>MRP :  &#x20B9;". $row['price']." (incl. of all taxes)</p>";
                                         } 
                                    else{
                                        echo "<br/>";
                                    }

                                    ?>
                          <center>  <a href="./productdetail.php?id=<?php echo $row['id'];?>&product_type=<?php echo $row['product_type'];?>" class="btn btn-outline-danger">View Details </a> </center>
                      
                            
                        </div>
                    </div>
                </div>

            <?php } ?>
        </div>
    </div>
    




