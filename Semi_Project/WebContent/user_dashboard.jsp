<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>

<link rel="stylesheet" href="assets/css/user_dashboardstyle.css">
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
		$('.btn btn-primary btn-block btn-large').click(function(e) {
			e.preventDefault();
			wrapWindowByMask();
		});
		$('.content-wrapper').click(function() {
			$('.popup').show().fad

		})
	});
	function changePopup() {
		$(".change-popup").fadeIn(500);
		wrapWindowByMask();
	}

	function closeChangeForm() {
		$(".change-popup").fadeOut(500);
		$('#mask').hide();
	}
	function popup_pc() {
		var popupWidth=1060;
		var popupHeight=720;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY= (window.screen.height / 2) - (popupHeight / 2);
		
		
		window.open('pagemove?command=user_dashboard_pop_pc', '팝업창',
				"width="+popupWidth+",height="+popupHeight+",left="+popupX+",top="+popupY);
	}
	function popup_ps4() {

		window.open('pagemove?command=user_dashboard_pop_ps4', '팝업창',
				'width=1060, height=720, left=400, top=150');

	}
	function popup_xbox() {

		window.open('pagemove?command=user_dashboard_pop_xbox', '팝업창',
				'width=1060, height=720, left=400, top=150');

	}
	function popup_switch() {

		window.open('pagemove?command=user_dashboard_pop_switch', '팝업창',
				'width=1060, height=720, left=400, top=150');

	}
</script>

</head>
<body>
	<!-- partial:index.partial.html -->
	<%@ include file="./header.jsp"%>
	<div class="main_visual">

		<div class="container">
			<div class="grid_4">
				<section class="box widget locations">
					<div class="avatar">
						<img
							src="data:image/jpeg;base64,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" />
					</div>
					<div class="details">
						<h2>회원명</h2>
						<p>닉네임</p>
						<a href="#" class="btn btn-primary btn-block btn-large"
							onclick="changePopup();">비밀번호 변경</a>
					</div>
				</section>
			</div>
			<br> <br>
			<div class="popular-books">
				<div class="main-menu">
					<div class="genre">My Page</div>
				</div>

				<div class="book_card_main">
					<div class="book-cards">


						<div class="book-card">
							<div class="content-top">
								<div class="content-wrapper" onclick="popup_pc()">
									<br>
								</div>
							</div>
							<div>
								<table>
									<col width=80px>
									<col width=100px>
									<col width=200px>
									<h3>pc 리뷰</h3>
									<tr>
										<th>게임이름</th>
										<th class="star">
											<div class="rate">
												<fieldset class="rating book-rate">
													<input type="checkbox" id="star-c1" name="rating" value="5">
													<label class="full" for="star-c1"></label> <input
														type="checkbox" id="star-c2" name="rating" value="4">
													<label class="full" for="star-c2"></label> <input
														type="checkbox" id="star-c3" name="rating" value="3">
													<label class="full" for="star-c3"></label> <input
														type="checkbox" id="star-c4" name="rating" value="2">
													<label class="full" for="star-c4"></label> <input
														type="checkbox" id="star-c5" name="rating" value="1">
													<label class="full" for="star-c5"></label>
												</fieldset>
											</div>
										</th>
										<th>게임리뷰</th>
									</tr>
									<c:choose>
										<c:when test="${empty list_pc }">
											<tr>
												<td colspan="3">작성된 글이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="dto_pc" items="${list_pc }">
												<tr>
													<td>${dto_pc.game_name }</td>
													<td class="star">
														<div class="rate">
															<fieldset class="rating book-rate">
																<input type="checkbox" id="star-c1" name="rating"
																	value="5"> <label class="full" for="star-c1"></label>
																<input type="checkbox" id="star-c2" name="rating"
																	value="4"> <label class="full" for="star-c2"></label>
																<input type="checkbox" id="star-c3" name="rating"
																	value="3"> <label class="full" for="star-c3"></label>
																<input type="checkbox" id="star-c4" name="rating"
																	value="2"> <label class="full" for="star-c4"></label>
																<input type="checkbox" id="star-c5" name="rating"
																	value="1"> <label class="full" for="star-c5"></label>
															</fieldset>
														</div>
													</td>
													<td>${dto_pc.rv_content }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>

								</table>
							</div>
						</div>

						<div class="book-card">
							<div class="content-top">
								<div class="content-wrapper" onclick="popup_ps4()">
									<br>
								</div>
							</div>
							<div>
								<table>
									<col width=80px>
									<col width=100px>
									<col width=200px>
									<h3>ps4 리뷰</h3>
									<tr>
										<th>게임이름</th>
										<th class="star">
											<div class="rate">
												<fieldset class="rating book-rate">
													<input type="checkbox" id="star-c1" name="rating" value="5">
													<label class="full" for="star-c1"></label> <input
														type="checkbox" id="star-c2" name="rating" value="4">
													<label class="full" for="star-c2"></label> <input
														type="checkbox" id="star-c3" name="rating" value="3">
													<label class="full" for="star-c3"></label> <input
														type="checkbox" id="star-c4" name="rating" value="2">
													<label class="full" for="star-c4"></label> <input
														type="checkbox" id="star-c5" name="rating" value="1">
													<label class="full" for="star-c5"></label>
												</fieldset>
											</div>
										</th>
										<th>게임리뷰</th>
									</tr>
									<c:choose>
										<c:when test="${empty list_ps4 }">
											<tr>
												<td colspan="3">작성된 글이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="dto_ps4" items="${list_ps4 }">
												<tr>
													<td>${dto_ps4.game_name }</td>
													<td class="star">
														<div class="rate">
															<fieldset class="rating book-rate">
																<input type="checkbox" id="star-c1" name="rating"
																	value="5"> <label class="full" for="star-c1"></label>
																<input type="checkbox" id="star-c2" name="rating"
																	value="4"> <label class="full" for="star-c2"></label>
																<input type="checkbox" id="star-c3" name="rating"
																	value="3"> <label class="full" for="star-c3"></label>
																<input type="checkbox" id="star-c4" name="rating"
																	value="2"> <label class="full" for="star-c4"></label>
																<input type="checkbox" id="star-c5" name="rating"
																	value="1"> <label class="full" for="star-c5"></label>
															</fieldset>
														</div>
													</td>
													<td>${dto_ps4.rv_content }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</table>
							</div>
						</div>

						<div class="book-card">
							<div class="content-top">
								<div class="content-wrapper" onclick="popup_xbox();">
									<br>
								</div>
							</div>
							<div>
								<table>
									<col width=80px>
									<col width=100px>
									<col width=200px>
									<h3>xbox 리뷰</h3>
									<tr>
										<th>게임이름</th>
										<th class="star">
											<div class="rate">
												<fieldset class="rating book-rate">
													<input type="checkbox" id="star-c1" name="rating" value="5">
													<label class="full" for="star-c1"></label> <input
														type="checkbox" id="star-c2" name="rating" value="4">
													<label class="full" for="star-c2"></label> <input
														type="checkbox" id="star-c3" name="rating" value="3">
													<label class="full" for="star-c3"></label> <input
														type="checkbox" id="star-c4" name="rating" value="2">
													<label class="full" for="star-c4"></label> <input
														type="checkbox" id="star-c5" name="rating" value="1">
													<label class="full" for="star-c5"></label>
												</fieldset>
											</div>
										</th>
										<th>게임리뷰</th>
									</tr>
									<c:choose>
										<c:when test="${empty list_xbox }">
											<tr>
												<td colspan="3">작성된 글이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="dto_xbox" items="${list_xbox }">
												<tr>
													<td>${dto_xbox.game_name }</td>
													<td class="star">
														<div class="rate">
															<fieldset class="rating book-rate">
																<input type="checkbox" id="star-c1" name="rating"
																	value="5"> <label class="full" for="star-c1"></label>
																<input type="checkbox" id="star-c2" name="rating"
																	value="4"> <label class="full" for="star-c2"></label>
																<input type="checkbox" id="star-c3" name="rating"
																	value="3"> <label class="full" for="star-c3"></label>
																<input type="checkbox" id="star-c4" name="rating"
																	value="2"> <label class="full" for="star-c4"></label>
																<input type="checkbox" id="star-c5" name="rating"
																	value="1"> <label class="full" for="star-c5"></label>
															</fieldset>
														</div>
													</td>
													<td>${dto_xbox.rv_content }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</table>
							</div>
						</div>
						<div class="book-card">
							<div class="content-top">
								<div class="content-wrapper" onclick="popup_switch();">
									<br>
								</div>
							</div>
							<div>
								<table>
									<col width=80px>
									<col width=100px>
									<col width=200px>
									<h3>switch 리뷰</h3>
									<tr>
										<th>게임이름</th>
										<th class="star">
											<div class="rate">
												<fieldset class="rating book-rate">
													<input type="checkbox" id="star-c1" name="rating" value="5">
													<label class="full" for="star-c1"></label> <input
														type="checkbox" id="star-c2" name="rating" value="4">
													<label class="full" for="star-c2"></label> <input
														type="checkbox" id="star-c3" name="rating" value="3">
													<label class="full" for="star-c3"></label> <input
														type="checkbox" id="star-c4" name="rating" value="2">
													<label class="full" for="star-c4"></label> <input
														type="checkbox" id="star-c5" name="rating" value="1">
													<label class="full" for="star-c5"></label>
												</fieldset>
											</div>
										</th>
										<th>게임리뷰</th>
									</tr>
									<c:choose>
										<c:when test="${empty list_switch }">
											<tr>
												<td colspan="3">작성된 글이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="dto_switch" items="${list_switch }">
												<tr>
													<td>${dto_switch.game_name }</td>
													<td class="star">
														<div class="rate">
															<fieldset class="rating book-rate">
																<input type="checkbox" id="star-c1" name="rating"
																	value="5"> <label class="full" for="star-c1"></label>
																<input type="checkbox" id="star-c2" name="rating"
																	value="4"> <label class="full" for="star-c2"></label>
																<input type="checkbox" id="star-c3" name="rating"
																	value="3"> <label class="full" for="star-c3"></label>
																<input type="checkbox" id="star-c4" name="rating"
																	value="2"> <label class="full" for="star-c4"></label>
																<input type="checkbox" id="star-c5" name="rating"
																	value="1"> <label class="full" for="star-c5"></label>
															</fieldset>
														</div>
													</td>
													<td>${dto_switch.rv_content }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</table>
							</div>
						</div>

					</div>
				</div>


				<!--   -->
			</div>
		</div>

		<!-- 개인정보 수정 -->
		<div class="change-popup">
			<form action="#" method="post" class="form-container">
				<label for="pswnow"><b>현재비밀번호</b></label> <input type="password"
					placeholder="Enter Password" name="psw" style="margin-bottom: 0"
					required>
				<div class="warning">비밀번호가 잘못되었습니다.</div>
				<label for="psw"><b>비밀번호</b></label> <input type="password"
					placeholder="Enter Password" name="psw" required> <label
					for="pswchk"><b>비밀번호 확인</b></label> <input type="password"
					placeholder="Checked Password" name="pswchk"
					style="margin-bottom: 0" required>
				<div class="warningchk">비밀번호가 다르다</div>
				<button type="submit" class="btn">수정</button>
				<button type="button" class="btn cancel" onclick="closeChangeForm()">취소</button>
			</form>
		</div>
	</div>

	<!-- partial -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<footer class="footer">Copyright &copy; KH Academy All right
		reserved </footer>
</body>
</html>