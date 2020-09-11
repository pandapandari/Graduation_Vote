<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body>
  <?php
    $con = mysqli_connect("localhost", "chicken", "k20162020#", "chicken");
    mysqli_query($con,'SET NAMES utf8');
    $guest_id = $_POST["guest_id"];
    $guest_name = $_POST["guest_name"];
    $guest_password= $_POST["guest_password"];
    $guest_address = $_POST["guest_address"];
    $guest_email = $_POST["guest_email"];
    $guest_email_dns = $_POST["guest_email_dns"];
    $guest_phonenumber = $_POST["guest_phonenumber"]; 
  
    $statement = mysqli_prepare($con, "INSERT INTO guest VALUES (?,?,?,?,?,?,?)");
    mysqli_stmt_bind_param($statement, "sssssss", $guest_id, $guest_name, $guest_password, $guest_address, $guest_email, $guest_email_dns, $guest_phonenumber);
    mysqli_stmt_execute($statement);
   
    $response = array(); 
    echo json_encode($response);
    require("main.html");
?>
</body>
</html>