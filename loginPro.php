<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body>
  <?php
    $id = $_POST["guest_id"];
    $password = $_POST["guest_password"];
    echo "$id";
    $con = mysqli_connect("localhost", "chicken", "k20162020#", "chicken");
    mysqli_query($con,'SET NAMES utf8');
    $sql = "SELECT * FROM guest WHERE guest_id = '$id' AND guest_password = '$password'";
    if($result=mysqli_fetch_array(mysqli_query($con,$sql))){//쿼리문을 실행해서 결과가 있으면 로그인 성공
         // echo "사용자 이름= $id";
         // echo "</br>".$result['created'];
         // echo "</br>로그인 성공";
          require("main.html");
        //  include("main.html");
     }
        else{//쿼리문의 결과가 없으면 로그인 fail을 출력한다.
          echo "login fail";
        }
   ?>
</body>
</html>