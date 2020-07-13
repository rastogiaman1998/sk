<?php
session_start();
if(isset($_SESSION['user_id'])){
         header("Location: ../../customer.php");
        exit();
}
?>

<?php  
    require('../../common/dbconnection.php');

    
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="../../css/login.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<?php
   
    if (isset($_POST['mobile_number'])) {


        $mobile_number= stripslashes($_REQUEST['mobile_number']);   
        $mobile = mysqli_real_escape_string($conn, $mobile_number);

        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($conn, $password);

        
        $query  = "SELECT * FROM users WHERE mobile_number='$mobile_number' AND password='$password'";
        $result = mysqli_query($conn, $query) or die(mysql_error());
        $rows   = $result->fetch_assoc();
        
        if ($rows) {
           
            $_SESSION['user_id'] = $rows['user_id'];
            
            header("Location: ../../customer.php");

           
        
        } else {
            echo "<div class='form'>
                  <h3>Incorrect Username/password.</h3><br/>
                  <p class='link'>Click here to <a href='login.php'>Login</a> again.</p>
                  </div>";
        }
    } else {
?>

    <form class="form" method="POST" name="login">

        <h1><img src="../../images/logo.png" alt="Summerking Logo"></h1>
        <h2 class="login-title">Customer Login</h2>

        <input type="text" class="login-input" name="mobile_number" placeholder="Mobile Number" autofocus="true"/>
        <input type="password" class="login-input" name="password" placeholder="Password"/>

        <input type="submit" value="Login" name="submit" class="login-button"/>
        
        <p class="link">Not yet registered ? <a href="registration.php">Register here</a></p>
        <a href="../../index.php" class="link">Back to site</a>
  </form>
<?php
    }
?>


</body>
</html>