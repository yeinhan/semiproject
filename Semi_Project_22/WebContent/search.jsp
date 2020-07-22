<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<%@page import="java.util.List"%>
<%@page import="com.game.dto.GameDto"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Semi_Project_Search_Page</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>
<link rel="stylesheet" href="assets/css/search.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function wrapWindowByMask() {
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});
		//마스크의 투명도 처리
		$('#mask').fadeTo("slow", 0.8);
	}

	$(document).ready(function() {
		//wrapWindowByMask();
		//불투명 배경 띄우기
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
<body>
	<!-- partial:index.partial.html -->
	<%@ include file="./header.jsp"%>
	<div class="main_visual">
		<div id="mask"></div>



		<!-- 슬라이더 -->
		<%@ include file="./mainSlide.jsp"%>



		<div class="main-wrapper">
			<div class="books-of">
				<%@ include file="./ROTW.jsp"%>
				<%@ include file="./GOTY.jsp"%>
				<div class="overlay"></div>
			</div>


			<div class="popular-books">
				<!-- 검색결과 게임 -->
				<div class="main-menu">
					<div class="genre">Search Result(Game)</div>
				</div>



				<c:choose>
					<c:when test="${empty dto }">

						<img alt="#"
							src="https://miro.medium.com/max/1400/1*zRvYJWeLF5dcxM1G2hcEHA.jpeg">


					</c:when>
					<c:otherwise>
						<c:forEach var="dto" items="${dto }" begin="0" end="0">

							<div class="book-cards"
								style="grid-template-columns: repeat(1, 1fr)">
								<div class="book-card">
									<div class="content-wrapper">
										<!-- 게임사진 -->
										<img src="${dto.game_screenshot }" alt=""
											class="book-card-img">

										<!-- 게임정보 -->
										<div class="card-content">
											<div class="book-name"
												onclick="location.href='pagemove?command=contentpage&game_no=${dto.game_no}&game_platform=${dto.game_platform }' ">
												<c:out value="${dto.game_name }"></c:out>
												<br>
												<div class="book-by">
													<c:choose>
														<c:when test="${dto.game_genre eq 1 }">
															<c:out value="ACTION"></c:out>
														</c:when>
														<c:when test="${dto.game_genre eq 2 }">
															<c:out value="ADVENTURE"></c:out>
														</c:when>
														<c:when test="${dto.game_genre eq 3 }">
															<c:out value="RPG"></c:out>
														</c:when>
														<c:when test="${dto.game_genre eq 4 }">
															<c:out value="SIMULATION"></c:out>
														</c:when>
														<c:when test="${dto.game_genre eq 5 }">
															<c:out value="AOS"></c:out>
														</c:when>
														<c:when test="${dto.game_genre eq 6 }">
															<c:out value="FPS"></c:out>
														</c:when>
														<c:when test="${dto.game_genre eq 7 }">
															<c:out value="RACING"></c:out>
														</c:when>
													</c:choose>
												</div>
											</div>
											<div class="book-by"></div>
											<div class="rate">
												<c:out value="${dto.game_staravg }"></c:out>
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
											<div class="book-sum card-sum">

												<c:out value="${dto.game_content }"></c:out>

											</div>
										</div>
									</div>
									<div class="likes">
										<div class="like-profile"></div>
									</div>
								</div>
							</div>
							<a href="pagemove?command=contentpage&game_no=${dto.game_no }"
								class="reviewmore2">게임 정보 더 보기</a>
						</c:forEach>

					</c:otherwise>
				</c:choose>
				<br> <br> <br>
				<br> <br>

				<!-- 검색결과 리뷰 -->
				<div class="main-menu">
					<div class="genre">Search Result (reviews)</div>
				</div>
				<div class="review-container">
					<c:choose>
						<c:when test="${empty dto }">
							<br>
							<br>


						</c:when>
						<c:otherwise>
							<c:forEach var="dto" items="${dto }" begin="0" end="3" step="1">
								<div>
									<table>
										<tr>
											<th>아이디</th>
											<td>${dto.rv_user_id }</td>
										</tr>
										<th>별점</th>
										<td>${dto.rv_star }</td>
										<tr>
										</tr>
										<th>등록일</th>
										<td>${dto.rv_date }</td>
										<tr>
										</tr>
										<th>평가</th>
										<td>${dto.rv_content }</td>
										<tr>
										</tr>
									</table>
								</div>
							</c:forEach>

						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- partial -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<%@include file="./footer.jsp"%>
</body>
</html>