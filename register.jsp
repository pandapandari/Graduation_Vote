<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
<head>
    <link href="cssfile.css" media="screen and (min-width: 512px) and (max-width: 1024px)" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vote</title>
</head>
<body topmargin="0" leftmargin="0" >
<!-- 메뉴 -->
<div class="menubar">
    <h2>YOU MUST VOTE</h2>

    <!-- 우측 메뉴 바 -->
    <ul>
        <a>!! When you login, you can see VOTE LIST :) !!</a>
    </ul>
</div>
<!-- 회원가입화면-->
<div class="register-form">
    <form action="registerPro.php">
        <h3 id="text">REGISTER</h3>
        <tr>
            <th>ID</th> <td><input type="text" name="guest_id" class="text-field"></td>
        </tr>
        <br/>
        <tr>
            <th>NAME</th> <td><input type="text" name="guest_name" class="text-field"></td>
        </tr>
        <br/>
        <tr>
            <th>PASSWORD</th> <td><input type="text" name="guest_password" class="text-field"></td>
        </tr>
        <br/>
        <tr>
            <th>ADDRESS</th> <td> <input type="text" name="guest_address" class="text-field"></td>
        </tr>
        <br/>
        <tr>
            <th>E-MAIL </th> <td>
            <input type="text" name="guest_email" class="text-field" placeholder="Id">
            <br/>@
            <input type="text" name="guest_email_dns" class="text-field" placeholder="Dot-Com">
        </td>
        </tr>
        <br/>
        <tr>
            <th>PHONE NUMBER</th>
            <td><input type="text" name="guest_phonenumber" class="text-field"></td>
        </tr>
        <br/>
        <input type="submit" value="Click" class="submit-btn">
    </form>

    <div class="links">
        <a href="index.html">Back</a>
    </div>
</div>
</body>
</html>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Architects+Daughter&display=swap" rel="stylesheet">
<style>
    html{
        margin:0 auto;
        background-color: #fcf9fa;
    }
    h2{/*제목 위치지정*/
        font-family: 'Architects Daughter', cursive;
        font-size:45px;
        color : #8f4d57;
        text-align:center;
        font-weight:bold;
    }
    h3{/*투표리스트 텍스트*/
        font-family: 'Architects Daughter', cursive;
        font-size:28px;
        color : #c27884;
        font-weight:bold;
        text-align:center;
        margin-left:42%;

    }
    imput{
        font-family: 'Architects Daughter', cursive;
        color:#f0e9eb;
    }

    /*우측 상단 바*/
    .menubar{
        margin:-10px;
        padding:5px;
        font: 67.5% 'Architects Daughter', cursive;
        font-size:15px;
    }

    .menubar ul{
        height:50px;
        list-style:none;
        margin-left:40%;
        color:#7a6d71;
        padding:0;
    }

    .menubar li{
        float:left;
        padding:0px;
    }

    .menubar li a{
        display:block;
        font-weight:normal;
        line-height:50px;
        margin:0px;
        padding:0px 25px;
        text-align:center;
        text-decoration:none;
        margin-left:50%;
    }

    .menubar li a:hover, .menubar ul li:hover a{
        background:#7a6d71;
        color:#FFFFFF;
        text-decoration:none;
    }

    .menubar li li {
        background: #a19498;
        display:block;
        float:none;
        margin:0px;
        padding:0px;
        width:200px;
    }

    .menubar li:hover li a{
        background:none;
    }

    .menubar li ul a{
        display:block;
        height:50px;
        font-size:12px;
        font-style:normal;
        margin:0px;
        padding:0px 10px 0px 15px;
        text-align:left;
    }

    .menubar li ul a:hover, .menubar li ul li:hover a{
        background: #a19498;
        border:0px;
        color:#ffffff;
        text-decoration:none;
    }

    .menubar p{
        clear:left;
    }

    .register-form {
        background-color: #ffffff;
        position: absolute;
        padding: 20px;
        border: 2px solid #cfa6ac;
        border-radius: 5px;
        margin-top:8%;
        margin-bottom:10%;
        top: 53%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-collapse: collapse;
        width: 35%;
        font-family: 'Architects Daughter', cursive;
        text-align: right;
        padding-right:15%;
    }

    th {
        font-family: 'Architects Daughter', cursive;
        font-size:20px;
        color : #b4747e;
        text-align:left;
    }

    .text-field {
        border:none;
        border-radius:5px;
        width:250px;
        border: 1px solid #e4ccd0;
        margin-bottom:10px;
        padding:10px;
        font-size: 14px;
        margin-left:5%;
    }

    .submit-btn {
        padding:4px;
        margin:5px;
        width:150px;
        font-family: 'Architects Daughter', cursive;
        background: #a19498;
        color:#ffffff;
        font-weight:bold;
        border:0;
        border-radius: 5px;
        outling:0;
        cursor:pointer;
        margin-right:13%;
    }

    .links {
        text-align:center;
        margin-left:45%;
    }

    .links a {
        font-family: 'Architects Daughter', cursive;
        text-align:center;
        color:#5823ad;
    }

</style>