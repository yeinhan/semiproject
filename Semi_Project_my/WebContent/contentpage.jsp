<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
<head>
<title>Semi_Project_ContentPage</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/contentpagestyle.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".starRev span").click(function() {
			$(this).parent().children("span").removeClass("on");
			$(this).addClass("on").prevAll("span").addClass("on");
			return false;
		})
	});

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

	function showImage() {
		$(".img-resizecontainer_1").fadeIn(300);
		wrapWindowByMask();
	}
	function hideImage() {
		$(".img-resizecontainer_1").fadeOut(300);
		$('#mask').hide();
	}

	function showImage2() {
		$(".img-resizecontainer_2").fadeIn(300);
		wrapWindowByMask();
	}
	function hideImage2() {
		$(".img-resizecontainer_2").fadeOut(300);
		$('#mask').hide();
	}
	function showImage3() {
		$(".img-resizecontainer_3").fadeIn(300);
		wrapWindowByMask();
	}
	function hideImage3() {
		$(".img-resizecontainer_3").fadeOut(300);
		$('#mask').hide();
	}
	function showImage4() {
		$(".img-resizecontainer_4").fadeIn(300);
		wrapWindowByMask();
	}
	function hideImage4() {
		$(".img-resizecontainer_4").fadeOut(300);
		$('#mask').hide();
	}

	function showVid() {
		$(".video-playwrapper_1").show();
		wrapWindowByMask();
	}
	function hideVid() {
		$(".video-playwrapper_1").hide();
		$('#mask').hide();
		var videoURL = $('#playerID').prop('src');
		videoURL = videoURL.replace("?autoplay=1", "");
		$('#playerID').prop('src', '');
		$('#playerID').prop('src', videoURL);
	}
	function showVid2() {
		$(".video-playwrapper_2").show();
		wrapWindowByMask();
	}
	function hideVid2() {
		$(".video-playwrapper_2").hide();
		$('#mask').hide();
		var videoURL = $('#playerID2').prop('src');
		videoURL = videoURL.replace("?autoplay=1", "");
		$('#playerID2').prop('src', '');
		$('#playerID2').prop('src', videoURL);
	}
	function showVid3() {
		$(".video-playwrapper_3").show();
		wrapWindowByMask();
	}
	function hideVid3() {
		$(".video-playwrapper_3").hide();
		$('#mask').hide();
		var videoURL = $('#playerID3').prop('src');
		videoURL = videoURL.replace("?autoplay=1", "");
		$('#playerID3').prop('src', '');
		$('#playerID3').prop('src', videoURL);
	}
	function showVid4() {
		$(".video-playwrapper_4").show();
		wrapWindowByMask();
	}
	function hideVid4() {
		$(".video-playwrapper_4").hide();
		$('#mask').hide();
		var videoURL = $('#playerID4').prop('src');
		videoURL = videoURL.replace("?autoplay=1", "");
		$('#playerID4').prop('src', '');
		$('#playerID4').prop('src', videoURL);
	}
	
	function loginChk() {	
		alert("리뷰를 작성하시려면 먼저 로그인을 해주세요");
		location.href="pagemove?command=contentpage&game_no=${dto.game_no}";
	}
</script>
</head>
<body>
	<!-- Header -->
	<%@ include file="./header.jsp"%>

	<!-- Nav -->


	<!-- Banner -->
	
	<%@include file="./contentpage_header.jsp" %>
	
	<!-- Main -->
	<div id="main">

		<!-- Section -->
		<section class="wrapper style1">
			<div class="articles">
				<div class="game_summary">Summary & General Information</div>
				<div class="line"></div>
				<p class="lastofus_summary">${dto.game_content }</p>
				<p class="lastofus_summary_2">
					개발 : <c:out value="${dto.game_company }"></c:out><br>
					플랫폼 : <c:choose>
						<c:when test="${dto.game_platform eq 1 }"><c:out value="PC"></c:out></c:when>
						<c:when test="${dto.game_platform eq 2}"><c:out value="PS4"></c:out></c:when>
						<c:when test="${dto.game_platform eq 3  }"><c:out value="XBOX"></c:out></c:when>
						<c:when test="${dto.game_platform eq 4} "><c:out value="Switch"></c:out></c:when>
					</c:choose><br> 출시일자 : 2020년 6월 9일<br> 
					장르 : <c:choose>
					<c:when test="${dto.game_genre eq 1 }"><c:out value="ACTION"></c:out></c:when>
					<c:when test="${dto.game_genre eq 2 }"><c:out value="ADVENTURE"></c:out></c:when>
					<c:when test="${dto.game_genre eq 3 }"><c:out value="RPG"></c:out></c:when>
					<c:when test="${dto.game_genre eq 4 }"><c:out value="SIMULATION"></c:out></c:when>
					<c:when test="${dto.game_genre eq 5 }"><c:out value="AOS"></c:out></c:when>
					<c:when test="${dto.game_genre eq 6 }"><c:out value="FPS"></c:out></c:when>
					<c:when test="${dto.game_genre eq 7 }"><c:out value="RACING"></c:out></c:when>
					</c:choose><br>
				</p>
			</div>
		</section>


		<!-- Section -->
		<section class="wrapper style2">
			<div class="title">Reviews</div>
			<div class="line"></div>
			<div class="review-container">
			
			<c:forEach var="list" items="${list }" begin="0" end="7">
				<div>
					<div class="review-wrap1">
						<c:out value="${list.rv_star }"></c:out>
						<c:out value="${list.rv_user_id }"></c:out>
						<c:out value="${list.rv_date }"></c:out>
					</div>
					<div class="review-wrap2">
						<c:out value="${list.rv_content }"></c:out>
					</div>
				</div>
			</c:forEach>
			</div>
			<a href="pagemove?command=contentpage_more&game_no=${dto.game_no}"  class="button">리뷰 더 보기</a>
		</section>
			<%	
				if (session.getAttribute("login") == null || session.getAttribute("login").equals(null)) { 
			%>
				<section class="wrapper">
			<div class="reveiew-form">
				<div class="head">
					<div class="title">Review this game</div>
				</div>
			</div>
			<div class="line"></div>
			<div class="form-body">
				<form action="pagemove" method="post" class="review_writeform">
				<input type="hidden" name="command" value="contentpage_review">
				<input type="hidden" name="game_no" value="${dto.game_no }">
				<input type="hidden" name="game_platform" value="${dto.game_platform }">
					<div class="starRev" >
						<span class="starR on" name="rv_star1" value="1">별1</span> 
						<span class="starR" name="rv_star2">별2</span> 
						<span class="starR" name="rv_star3">별3</span> 
						<span class="starR" name="rv_star4">별4</span> 
						<span class="starR" name="rv_star5">별5</span>
					</div>
					<textarea rows="10" cols="60" name="rv_content" class="review_area"
						placeholder="리뷰를 작성 해 주세요." onclick="loginChk();"></textarea>
					<input type="submit" value="작성">
				</form>
			</div>
	</div>
	</section>
			<%
						} else {
			%>
		<section class="wrapper">
			<div class="reveiew-form">
				<div class="head">
					<div class="title">Review this game</div>
				</div>
			</div>
			<div class="line"></div>
			<div class="form-body">
				<form action="pagemove" method="post" class="review_writeform">
				<input type="hidden" name="command" value="contentpage_review">
				<input type="hidden" name="game_no" value="${dto.game_no }">
				<input type="hidden" name="game_platform" value="${dto.game_platform }">
					<div class="starRev" >
						<span class="starR on" name="rv_star1" value="1">별1</span> 
						<span class="starR" name="rv_star2">별2</span> 
						<span class="starR" name="rv_star3">별3</span> 
						<span class="starR" name="rv_star4">별4</span> 
						<span class="starR" name="rv_star5">별5</span>
					</div>
					<textarea rows="10" cols="60" name="rv_content" class="review_area"
						placeholder="리뷰를 작성 해 주세요."></textarea>
					<input type="submit" value="작성">
				</form>
			</div>
	</div>
	</section>
				<%
						}
				%>
	<!-- Section -->
	<section id="main">
		<div class="wrapper">
			<div class="title">Screen Shots</div>
			<div class="line"></div>
			<div class="screenshot-container">
				<div>
					<img
						src="${dto.image1 }"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage();">
					<div class="img-resizecontainer_1">
						<div class="click-resize">
							<img
								src="${dto.image1 }"
								style="width: 900px; height: 500px; border-radius: 5px; animation-duration: 0.7s;"
								onclick="hideImage();">
						</div>
					</div>
				</div>
				<div>
					<img
						src="${dto.image2 }"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage2();">
					<div class="img-resizecontainer_2">
						<div class="click-resize">
							<img
								src="${dto.image2 }"
								style="width: 900px; height: 500px; border-radius: 5px; animation-duration: 0.7s;"
								onclick="hideImage2();">
						</div>
					</div>
				</div>
				<div>
					<img
						src="${dto.image3 }"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage3();">
					<div class="img-resizecontainer_3">
						<div class="click-resize">
							<img
								src="${dto.image3 }"
								style="width: 900px; height: 500px; border-radius: 5px; animation-duration: 0.7s;"
								onclick="hideImage3();">
						</div>
					</div>
				</div>
				<div>
					<img
						src="${dto.image4 }"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage4();">
					<div class="img-resizecontainer_4">
						<div class="click-resize">
							<img
								src="${dto.image4 }"
								style="width: 900px; height: 500px; border-radius: 5px; animation-duration: 0.7s;"
								onclick="hideImage4();">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="main">
		<div class="wrapper">
			<div class="title">Trailers</div>
			<div class="line"></div>
			<div class="tr_container">
				<div>
					<img src="${dto.main_image } "
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid();">
					<p>
						<br>"The Last of Us Part 2" 트레일러 (4K)
					</p>
					<div class="video-playwrapper_1">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="${dto.video1 }"
								frameborder="0"
								allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen id="playerID"></iframe>
							<input type="button" value="Close" onclick="hideVid();"
								class="vidClosebBtn">
						</div>
					</div>
				</div>
				<div>
					<img src="${dto.image3 } "
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid2();">
					<p>
						<br>PS4 I The Last of Us Part II <br> 공식 스토리 트레일러
					</p>
					<div class="video-playwrapper_2">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="${dto.video2 }"
								frameborder="0"
								allow="accelerometer; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen id="playerID2"></iframe>
							<input type="button" value="Close" onclick="hideVid2();"
								class="vidClosebBtn">
						</div>
					</div>
				</div>
				<div>
					<img src="${dto.a_image1 }"
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid3();">
					<p>
						<br>PS4™ I The Last of Us™ Part II <br>발매일 공개 트레일러
					</p>
					<div class="video-playwrapper_3">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="${dto.video3 }"
								frameborder="0"
								allow="accelerometer;  encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen id="playerID3"></iframe>
							<input type="button" value="Close" onclick="hideVid3();"
								class="vidClosebBtn">
						</div>
					</div>
				</div>
				<div>
					<img src="${dto.image4 } "
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid4();">
					<p>
						<br>PS4 I The Last of Us Part II <br>공식 TV CM (총 버전)
					</p>
					<div class="video-playwrapper_4">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="${dto.video4 }"
								frameborder="0"
								allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen id="playerID4"></iframe>
							<input type="button" value="Close" onclick="hideVid4();"
								class="vidClosebBtn">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="main">
		<div class="wrapper">
			<div class="title">Recent News & Article</div>
			<div class="line"></div>
			<div class="article-wrapper">
				<div class="card-header">
					<img alt="#"
						src="${dto.a_image1 }"
						style="width: 100%; height: 60%; margin-top: 0%;"
						onclick="location.href='${dto.article1 }';">
					<div class="card-body">
						<p class="article-p"><c:out value="${dto.game_name }"></c:out></p>
					</div>
				</div>
				<div class="card-header">
					<img alt="#"
						src="${dto.a_image2}"
						style="width: 100%; height: 50%; margin-top: 0%;"
						onclick="moveToReview2();">
					<div class="card-body">
						<h4>
							[리뷰] 라스트 오브 어스2는 <br>'올해 최고의게임'일 수밖에 없다
						</h4>
						<p class="article-p">금요일에서 토요일로 넘어가는 자정 즈음. TV 화면을 두고 라스트 오브
							어스 파트2의 엔딩 장면을 마주했다.</p>
					</div>
				</div>
				<div class="card-header">
					<img alt="#"
						src="${dto.a_image3 }"
						style="width: 100%; height: 50%; margin-top: 0%;"
						onclick="moveToReview3();">
					<div class="card-body">
						<h4>[리뷰] ‘더 라스트 오브 어스 파트2’ 너티독의 '증오'와 '용서'</h4>
						<p class="article-p">지난 19일 발매된 플레이스테이션4의 기대작 너티독의 ’더 라스트 오브
							어스 파트2‘(이하 ’라오어2‘)는 엘리와 애비, 두 주인공의 이야기를 담고 있다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	</div>

	<!-- Footer -->
	<%@include file="./footer.jsp" %>


</body>
</html>