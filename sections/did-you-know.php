<?php require_once('common/dbconnection.php');
    $sqli = "SELECT * FROM articles limit 3";
    $result = $conn->query($sqli); 
     
    require_once("heading.php");
    getSectionHeading("DID YOU KNOW");
?>
<div class="container" style="margin-bottom:50px;">
    <div class="row row2">
        <?php while($row=$result->fetch_assoc()) {?>
            <div class="col-lg-4">
                <a class= "link" href="articles.php?article_id=<?= $row['article_id']; ?>">   
                    <div class="card card-row2">
                        <div class="inner">
                            <img src="<?php echo $row['article_image'] ?>" class="card-img-top" alt="Article Image">
                        </div>
                        <div class="card-body">
                          <center>  <h5 class="card-title"><?php echo $row['article_name'] ?></h5> </center>
                        </div>
                    </div> 
                </a>
            </div>

            <?php } ?>
            
    </div>
</div>

   