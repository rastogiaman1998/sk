
<?php
    session_start();
    if(!isset($_SESSION["dealer_id"])) {
        header("Location: ../dealer/login.php");
        exit();
    }
?>