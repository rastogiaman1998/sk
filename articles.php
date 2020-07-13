<?php require_once('common/dbconnection.php')?>
<!doctype html>
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
        <title>Summerking</title>

        <style>
            .blog-image{
                
            width:100%;
            height:550px;
            object-fit:cover;
            object-position:50% 50%;
  }
  .blog-para{
      line-height:1.6;
      letter-spacing:1.6px;
  }

  .blog-para::first-letter {
  font-size: 200%;
  font-weight:bold;
  color: #b74548;
  margin-left:100px;
}
            
        </style>
    </head>

    <body>
        <?php include("./sections/nav.php");?>
        
        
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <?php 
                    if(isset($_GET['article_id'])){
                        $article_id=$_GET['article_id'];
                        $sqli="SELECT * FROM articles WHERE article_id='$article_id'";
                        $result=$conn->query($sqli);
                    }
                    
                    while($row=$result->fetch_assoc()) {?>
                    <img class="blog-image" src="<?php echo $row['article_image']?>" width="100%" alt="pedestal fan">
            </div>
            <div class="col-lg-2"></div>
        </div>
        
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
            <br/>
                <h1><?php echo $row['article_name']?></h1>
            <br/>
            </div>
            <div class="col-lg-2"></div>
        </div>

       
        
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
               <p class="blog-para"> <?php echo $row['article_body'];?></p>
                <br/>
              
            </div>
            <div class="col-lg-2"></div>
        </div>  
        <br/>
  
       
          
       <?php }?>

    
        <?php include("./sections/discover-range.php");?>
        <?php include("./sections/footer.php");?>
        <?php include("./sections/mobile-footer.php");?>
    
         

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="./js/jquery-3.4.1.js" ></script>
        <script src="./js/popper.min.js" ></script>
        <script src="./js/bootstrap.min.js"></script>
    </body>
</html>
<?php if($conn){$conn -> close();}?>