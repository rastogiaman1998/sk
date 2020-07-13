<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once "vendor/autoload.php";

$mail = new PHPMailer;
$mail->SMTPDebug = 3; 
$mail->SMTPOptions = array(
    'ssl' => array(
             'verify_peer' => false,
             'verify_peer_name' => false,
             'allow_self_signed' => true
         )
     );  

$mail->Host = 'summerkingindia.com';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'care@summerkingindia.com';                 // SMTP username
$mail->Password = 'Cooler@123';                           // SMTP password
$mail->Port = 587; 

$mail->From = "info@summerkingindia.com";
$mail->FromName = "Summerking India";

$mail->addAddress("iashishdwevedi@gmail.com", "Ashish");

//Provide file path and name of the attachments
//$mail->addAttachment("file.txt", "File.txt");        
//$mail->addAttachment("images/profile.png"); //Filename is optional

$mail->isHTML(true);

$mail->Subject = "Subject Text";
$mail->Body = "<i>Mail body in HTML</i>";
$mail->AltBody = "This is the plain text version of the email content";

try {
    if (!$mail->send()) {
        echo 'Mailer Error: ' . $mail->ErrorInfo;
    } else {
        echo 'The email message was sent.';
    }
   

} catch (Exception $e) {
    echo "Mailer Error: " . $mail->ErrorInfo;
}

?>