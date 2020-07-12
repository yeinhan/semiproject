<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%response.setContentType("text/html; charset=UTF-8"); %>
    <%request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Semi_Project_User_Dashboard</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/grid.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat'>
<link rel='stylesheet' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/6035/icomoon-scrtpxls.css'><link rel="stylesheet" href="./dashboardstyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function showFunc_1(){
		$(".divbox_1").show();
		$(".divbox_2").hide();
	};
	function showFunc_2(){
		$(".divbox_2").show();
		$(".divbox_1").hide();
	};
	function showFunc_3(){
		$(".divbox_2").show();
		$(".divbox_1").hide();
	};
</script>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="container">
  <div class="grid_4">
    <section class="box widget locations">
      <div class="avatar">
        <img src="https://rnmu.rw/wp-content/uploads/2019/10/man-300x300.png"  />
      </div>
      <div class="details">
        <h2>회원명<--가입 시 기입했던 이름</h2>
        <p>닉네임 <--가입 시 기입했던 닉네임</p>
        <a href="#" class="btn btn-primary btn-block btn-large" onclick="showFunc_3();">개인 정보 수정</a>
      </div>
    </section>
    <section class="box widget calendar">
      <header class="header">
        <h2>Wendseday</h2> <!-- 달력API 연동 -->
        <p><span class="icon-arrow-left"></span>July<span class="icon-arrow-right"></span></p>
      </header>
      <article class="days">
        <ul>
          <li class="previous">30</li>
          <li class="previous">31</li>
          <li>1</li>
          <li>2</li>
          <li>3</li>
          <li>4</li>
          <li>5</li>
          <li>6</li>
          <li>7</li>
          <li>8</li>
          <li>9</li>
          <li>10</li>
          <li>11</li>
          <li>12</li>
          <li>13</li>
          <li>14</li>
          <li>15</li>
          <li>16</li>
          <li>17</li>
          <li>18</li>
          <li>19</li>
          <li>20</li>
          <li>21</li>
          <li>22</li>
          <li>23</li>
          <li>24</li>
          <li>25</li>
          <li>26</li>
          <li>27</li>
          <li>28</li>
          <li>29</li>
          <li>30</li>
          <li>31</li>
          <li class="next">1</li>
          <li class="next">2</li>
        </ul>
      </article>
    </section>
  </div>
  <div class="grid_8">
    <nav class="box nav">
      <ul>
        <li>
          <a href="#">
            <span class="icon-home" ></span><br />
            <span class="title">메인으로</span> <!--홈페이지 메인으로 -->
          </a>
        </li>
        <li>
          <a href="#" onclick="showFunc_1();">
            <span class="icon-bubble" ></span><br />
            <span class="title">리뷰 모아보기</span>  <!-- 내가 작성한 리뷰 모음으로 --> 
          </a>
        </li>
        <li>
          <a href="#" onclick="showFunc_2();">
            <span class="icon-cog"></span><br />
            <span class="title">개인 정보 수정</span> <!-- 개인정보 수정과 같음  -->
          </a>
        </li>
      </ul>
    </nav>
    <div class="divbox_1">리뷰 모아보기 (div grid 로 구현 )</div>
    <div	class="divbox_2">개인정보 수정 폼</div>
  </div>
</div>
<!-- partial -->
<footer class="footer">Copyright &copy; KH Academy All right reserved </footer>
</body>
</html>
