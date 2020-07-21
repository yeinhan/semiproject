<%@page import="com.game.dto.GameDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>

 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Semi_Project_Main_Page</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>
<link rel="stylesheet" href="assets/css/header.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function wrapWindowByMask() {
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
		$('#mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});
		$('#mask').fadeTo("fast", 0.8);
	}

	$(document).ready(function() {
		$('.openMask').click(function(e) {
			e.preventDefault();
			wrapWindowByMask();
		});
	});

	function loginPopup() {
		$(".login-popup").fadeIn(500);
		wrapWindowByMask();
	}

	function closeForm() {
		$(".login-popup").fadeOut(500);
		$('#mask').hide();
	}

	function SignUpPopup() {
		$(".signup-popup").fadeIn(500);
		wrapWindowByMask();
	}

	function closeSignForm() {
		$(".signup-popup").fadeOut(500);
		$('#mask').hide();
	}

</script>

</head>

<%   
String user_id = null;
user_id = (String)session.getAttribute("login");
//System.out.println(user_id);
%>


<body>
	<!-- partial:index.partial.html -->
	<div id="mask"></div>
	<div class="main_visual">
		<div class="header">
			<div class="header-title"
				onclick="location.href='pagemove?command=mainLoad'"
				style="cursor: pointer;">
				DOM<span>Critic</span>
			</div>
			<div class="main_menu">
				<span class="menu_pc"
					onclick="location.href='pagemove?command=platform&platform=1'">PC</span>
				<span class="menu_ps4"
					onclick="location.href='pagemove?command=platform&platform=2'">PS4</span>
				<span class="menu_xbox"
					onclick="location.href='pagemove?command=platform&platform=3'">XBOX</span>
				<span class="menu_switch"
					onclick="location.href='pagemove?command=platform&platform=4'">Switch</span>
			</div>

			<form action="pagemove" method="post" class="searchForm">
				<input type="hidden" name="command" value="search">
				<div class="browse">
					<div class="search-bar">
						<input type="search" placeholder="Search Games" name="search"
							value="" />
					</div>
					<input type="submit" class="searchBtn" style="display: none;">
				</div>
			</form>
			<div class="profile">
			<%	
				if (session.getAttribute("login") == null || session.getAttribute("login").equals(null)) { 
			%>
				<div class="user-profile" style="display : none;">
					<img onclick="location.href='pagemove?command=user_dashboard'"
						src="https://png.pngtree.com/png-vector/20190919/ourmid/pngtree-user-login-or-authenticate-icon-on-gray-background-flat-icon-ve-png-image_1742031.jpg"
						alt="" class="user-img">
				</div>
				<%
						} else {
				%>
				<div class="user-profile" >
					<img onclick="location.href='pagemove?command=user_dashboard&user_id=<%=user_id %>' "
						src="https://png.pngtree.com/png-vector/20190919/ourmid/pngtree-user-login-or-authenticate-icon-on-gray-background-flat-icon-ve-png-image_1742031.jpg"
						alt="" class="user-img">
				</div>
				<%
						}
				%>
				<div class="profile-menu">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
						fill="none" stroke="currentColor" stroke-width="2"
						stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-menu">
    </svg>

					<%
						if (session.getAttribute("login") == null || session.getAttribute("login").equals(null)) {
					%>
					<div class="login_button1" style="display: block;">
						<span class="login_text" style="cursor: pointer;"
							onclick="loginPopup();">Log In</span>
					</div>
					&nbsp;&nbsp;
					<div class="login_button2">
						<span class="signup_text" style="cursor: pointer;"
							onclick="SignUpPopup();">Sign Up</span>
					</div>
					<%
						} else {
					%>
					<div class="logout_button">
						<span class="logout_text" style="cursor: pointer;"
							onclick="location.href='LogController?command=log_out'">Log
							Out</span>
					</div>
					<%
						}
					%>
					<!-- 로그인 및 회원가입 폼 -->
					<div class="login-popup">
						<form action="LogController" method="post" class="form-container">
							<input type="hidden" name="command" value="login"> <label
								for="email"><b>아이디</b></label> <input type="text"
								placeholder="Enter ID" name="user_id" required> <label
								for="psw"><b>비밀번호</b></label> <input type="password"
								placeholder="Enter Password" name="user_pw" required>
							<button type="button" class="kakao-api"
								style="padding: 15px; margin: 5px 0 20px 0; border-radius: 50%; border: none; background: transparent; cursor: pointer;">
								<img
									src="https://learningspoons.com/wp-content/uploads/2020/06/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%8C%EB%9F%AC%EC%8A%A4%EC%B9%9C%EA%B5%AC-%EB%B2%84%ED%8A%BC%EB%AA%A8%EB%B0%94%EC%9D%BC-400x400.png"
									width="50px" height="50px">
							</button>
							<button type="button" class="facebook-api"
								style="padding: 15px; border-radius: 50%; border: none; background: transparent; margin-left: -7%; cursor: pointer;">
								<img
									src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png"
									width="50px" height="50px">
							</button>
							<button type="button" class="instagram-api"
								style="padding: 15px; margin: 5px 0 20px 0; border-radius: 50%; border: none; background: transparent; margin-left: -7%; cursor: pointer;">
								<img
									src="https://www.pinclipart.com/picdir/big/83-831769_tonka-turkey-trot-on-instagram-ig-circle-logo.png"
									width="50px" height="50px">
							</button>
							<button type="button" class="twitter-api"
								style="padding: 0 15px; margin: 5px 0 20px 0; border-radius: 50%; border: none; background: transparent; margin-left: -7%; cursor: pointer;">
								<img
									src="https://seeklogo.com/images/T/twitter-icon-circle-blue-logo-94339974C6-seeklogo.com.png"
									width="50px" height="50px">
							</button>
							<button type="submit" class="btn" value="login">로그인</button>
							<button type="button" class="btn cancel" onclick="closeForm()">닫기</button>
						</form>
					</div>


					<div class="signup-popup">
						<form action="LogController" method="post" class="sign-container">
							<input type="hidden" name="command" value="Insert"> <label
								for="id"><b>아이디</b></label> <input type="text"
								placeholder="Enter ID" name="user_id" required> <input
								type="button" value="중복체크" onclick=""> <label for="psw"><b>비밀번호</b></label>
							<input type="password" placeholder="Enter Password"
								name="user_pw" required> <label for="name"><b>이름</b></label>
							<input type="text" placeholder="Enter Name" name="user_name"
								required> <label for="email"><b>이메일</b></label> <input
								type="email" placeholder="Enter Email" name="user_email"
								required>
							<button type="button" class="kakao-api"
								style="padding: 15px; margin: 5px 0 20px 0; border-radius: 50%; border: none; background: transparent; cursor: pointer;">
								<img
									src="https://learningspoons.com/wp-content/uploads/2020/06/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%8C%EB%9F%AC%EC%8A%A4%EC%B9%9C%EA%B5%AC-%EB%B2%84%ED%8A%BC%EB%AA%A8%EB%B0%94%EC%9D%BC-400x400.png"
									width="50px" height="50px">
							</button>
							<button type="button" class="facebook-api"
								style="padding: 15px; border-radius: 50%; border: none; background: transparent; margin-left: -7%; cursor: pointer;">
								<img
									src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png"
									width="50px" height="50px">
							</button>
							<button type="button" class="instagram-api"
								style="padding: 15px; margin: 5px 0 20px 0; border-radius: 50%; border: none; background: transparent; margin-left: -7%; cursor: pointer;">
								<img
									src="https://www.pinclipart.com/picdir/big/83-831769_tonka-turkey-trot-on-instagram-ig-circle-logo.png"
									width="50px" height="50px">
							</button>
							<button type="button" class="twitter-api"
								style="border-radius: 50%; border: none; background: transparent; margin-left: -5%; cursor: pointer;">
								<img
									src="https://seeklogo.com/images/T/twitter-icon-circle-blue-logo-94339974C6-seeklogo.com.png"
									width="50px" height="50px">
							</button>
							<button type="submit" class="btn" value="Insert">회원가입</button>
							<button type="button" class="btn cancel"
								onclick="closeSignForm()">닫기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>