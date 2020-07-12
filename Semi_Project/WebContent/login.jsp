<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    <%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Semi Project Login page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'><link rel="stylesheet" href="./loginstyle.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="container">
  <div class="info">
  </div>
</div>
<div class="form">
  <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>
   <form class="register-form" action="" method="post">
    <input type="text" placeholder="아이디" required="required"/>
    <input type="password" placeholder="비밀번호" required="required"/>
    <input type="text" placeholder="이름" required="required"/>
    <input type="text" placeholder="닉네임" required="required"/>
    <input type="email" placeholder="이메일 주소를 입력하세요" required="required"/>
    <input type="tel" placeholder="전화번호를 입력하세요" required="required"/>
    <input type="submit" value="Sign Up">
    <p class="message">회원 이신가요? <a href="#">로그인 해 주세요</a></p>
  </form> 
  <form class="login-form" action="" method="post">
    <input type="text" placeholder="아이디"/>
    <input type="password" placeholder="패스워드"/>
    <input type="submit" value="Login">
    <p class="message">아직 회원이 아니신가요? <a href="#">계정을 만드세요</a></p>
  </form>
</div>
<video id="video" autoplay="autoplay" loop="loop" poster="polina.jpg">
  <source src="http://andytran.me/A%20peaceful%20nature%20timelapse%20video.mp4" type="video/mp4"/>
</video>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>
<footer style="text-align: center">Copyright &copy; KH Academy All right reserved </footer>
</body>
</html>