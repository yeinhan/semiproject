<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
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
	function moveToReview() {
		window.open("https://bbs.ruliweb.com/news/board/11/read/1851");
	}
	function moveToReview2() {
		window.open("http://www.inven.co.kr/webzine/news/?news=239452");
	}
	function moveToReview3() {
		window
				.open("http://www.kyeonggi.com/news/articleView.html?idxno=2300653");
	}
</script>
</head>
<body>
	<!-- Header -->
	<%@ include file="./header.jsp"%>

	<!-- Nav -->


	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<header>
				<h1>The Last Of US Part II</h1>
				<p>
					Sony Interactive Entertainment, Naughty Dog<br />
				</p>
				<div class="maingame-vertical"></div>
			</header>

		</div>
	</section>

	<!-- Main -->
	<div id="main">

		<!-- Section -->
		<section class="wrapper style1">
			<div class="articles">
				<div class="game_summary">Summary & General Information</div>
				<div class="line"></div>
				<p class="lastofus_summary">게임의 배경은 시애틀이며 성장한 엘리와 나이 든 조엘이 등장하면서
					전작의 내용이 이어지는 건 확정이다. 이번 작에서 엘리는 19세로, 전작의 도입부에서 5년, 엔딩에서 4년이 지났다.
					전작의 도입부가 2033년이었으니 파트 2의 시대적 배경은 2038년이다. 스토리의 테마는 증오이며 핵심 플레이어
					캐릭터는 엘리와 애비이다. 훌륭한 상황 묘사와 액션 메커니즘을 보여주었는데 전작보다 더 다양해진 전장 구성에, 플레이어의
					이동과 장면 연결이 더욱 부드러워짐과 동시에 역동적인 표현을 추가하여 엘리가 적에게 돌진하며 병을 주워 들고 던지는
					모션이 부드럽게 연결되며 또한 쓰러져 있는 적에게서 총알을 회수할 때 탄창만 빼내가는 사실적인 동작 연출을 보여준다.</p>
				<p class="lastofus_summary_2">
					개발 : Naughty Dog<br> 유통 : Sony Interactive Entertainment<br>
					플랫폼 : PS4<br> 출시일자 : 2020년 6월 9일<br> 장르 : 액션 어드벤쳐<br>
					심의등급 : 청소년 이용불가
				</p>
			</div>
		</section>


		<!-- Section -->
		<section class="wrapper style2">
			<div class="title">The Last Of Us Part II Reviews</div>
			<div class="line"></div>
			<div class="review-container">
				<div>리뷰1</div>
				<div>리뷰2</div>
				<div>리뷰3</div>
				<div>리뷰4</div>
				<div>리뷰5</div>
				<div>리뷰6</div>
				<div>리뷰7</div>
				<div>리뷰8</div>
				<div>리뷰9</div>
				<div>리뷰10</div>
			</div>
			<a href="#" class="button" onclick="location.href='pagemove?command=contentpage_more'" >리뷰 더 보기</a>
		</section>

		<section class="wrapper">
			<div class="reveiew-form">
				<div class="head">
					<div class="title">Review this game</div>
				</div>
			</div>
			<div class="line"></div>
			<div class="form-body">
				<form action="#" method="post" class="review_writeform">
					<div class="starRev">
						<span class="starR on">별1</span> <span class="starR">별2</span> <span
							class="starR">별3</span> <span class="starR">별4</span> <span
							class="starR">별5</span>
					</div>
					<textarea rows="10" cols="60" name="" class="review_area"
						placeholder="리뷰를 작성 해 주세요."></textarea>
					<input type="submit" value="작성">
				</form>
			</div>
	</div>
	</section>

	<!-- Section -->
	<section id="main">
		<div class="wrapper">
			<div class="title">Screen Shots</div>
			<div class="line"></div>
			<div class="screenshot-container">
				<div>
					<img
						src="https://cdn.mos.cms.futurecdn.net/szukg9JzgNt8f7wXCUJcnh.jpg"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage();">
					<div class="img-resizecontainer_1">
						<div class="click-resize">
							<img
								src="https://cdn.mos.cms.futurecdn.net/szukg9JzgNt8f7wXCUJcnh.jpg"
								style="width: 900px; height: 500px; border-radius: 5px; animation-duration: 0.7s;"
								onclick="hideImage();">
						</div>
					</div>
				</div>
				<div>
					<img
						src="https://i.inews.co.uk/content/uploads/2020/06/PRI_155019864.jpg"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage2();">
					<div class="img-resizecontainer_2">
						<div class="click-resize">
							<img
								src="https://i.inews.co.uk/content/uploads/2020/06/PRI_155019864.jpg"
								style="width: 900px; height: 500px; border-radius: 5px; animation-duration: 0.7s;"
								onclick="hideImage2();">
						</div>
					</div>
				</div>
				<div>
					<img
						src="https://www.syfy.com/sites/syfy/files/styles/1200x680_hero/public/2020/06/the-last-of-us-part-ii-screenshots-05-en-us-29may20.jpg"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage3();">
					<div class="img-resizecontainer_3">
						<div class="click-resize">
							<img
								src="https://www.syfy.com/sites/syfy/files/styles/1200x680_hero/public/2020/06/the-last-of-us-part-ii-screenshots-05-en-us-29may20.jpg"
								style="width: 900px; height: 500px; border-radius: 5px; animation-duration: 0.7s;"
								onclick="hideImage3();">
						</div>
					</div>
				</div>
				<div>
					<img
						src="https://assets1.ignimgs.com/2020/06/17/tlou-2-combat-tips-1592425440421.png?width=1280"
						style="width: 350px; height: 200px; margin-top: -20px; border-radius: 5px;"
						onclick="showImage4();">
					<div class="img-resizecontainer_4">
						<div class="click-resize">
							<img
								src="https://assets1.ignimgs.com/2020/06/17/tlou-2-combat-tips-1592425440421.png?width=1280"
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
					<img src="https://img.youtube.com/vi/TXl9GI1p_Os/hqdefault.jpg "
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid();">
					<p>
						<br>"The Last of Us Part 2" 트레일러 (4K)
					</p>
					<div class="video-playwrapper_1">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="https://www.youtube.com/embed/rLYk1YKu7j8"
								frameborder="0"
								allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen id="playerID"></iframe>
							<input type="button" value="Close" onclick="hideVid();"
								class="vidClosebBtn">
						</div>
					</div>
				</div>
				<div>
					<img src="https://img.youtube.com/vi/eOiUtRF8k28/hqdefault.jpg "
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid2();">
					<p>
						<br>PS4 I The Last of Us Part II <br> 공식 스토리 트레일러
					</p>
					<div class="video-playwrapper_2">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="https://www.youtube.com/embed/N1loQ61oB-w"
								frameborder="0"
								allow="accelerometer; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen id="playerID2"></iframe>
							<input type="button" value="Close" onclick="hideVid2();"
								class="vidClosebBtn">
						</div>
					</div>
				</div>
				<div>
					<img src="https://img.youtube.com/vi/btmN-bWwv0A/hqdefault.jpg"
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid3();">
					<p>
						<br>PS4™ I The Last of Us™ Part II <br>발매일 공개 트레일러
					</p>
					<div class="video-playwrapper_3">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="https://www.youtube.com/embed/Fg8qhCtMUWo"
								frameborder="0"
								allow="accelerometer;  encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen id="playerID3"></iframe>
							<input type="button" value="Close" onclick="hideVid3();"
								class="vidClosebBtn">
						</div>
					</div>
				</div>
				<div>
					<img src="https://img.youtube.com/vi/eML5icfq5VM/hqdefault.jpg "
						style="width: 220%; height: 128%; margin-top: -20px; border-radius: 5px;"
						onclick="showVid4();">
					<p>
						<br>PS4 I The Last of Us Part II <br>공식 TV CM (총 버전)
					</p>
					<div class="video-playwrapper_4">
						<div class="videoplay">
							<iframe width="900px" height="500px"
								src="https://www.youtube.com/embed/SPWKsrqAXws"
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
						src="https://cdn.mos.cms.futurecdn.net/tPhaRXEBfUH8Ev4vgRxqVE-1200-80.jpg"
						style="width: 100%; height: 50%; margin-top: 0%;"
						onclick="moveToReview();">
					<div class="card-body">
						<h4>[리뷰] [PS4] 우리들이 바란 이야기는 아닌 이야기, 더 라스트 오브 어스 파트 2</h4>
						<p class="article-p">‘더 라스트 오브 어스’ 가 얼마나 대단한 게임인지를 설명하는 건 사실
							그리 쉬워보이지는 않습니다. 명작에는 두가지 종류가 있습니다.</p>
					</div>
				</div>
				<div class="card-header">
					<img alt="#"
						src="https://cdn.vox-cdn.com/thumbor/DnVRsBQPJsXx81RH9gJQB8Bzkvg=/0x0:3840x2160/1200x0/filters:focal(0x0:3840x2160):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/20013526/TLOUPII_Preview_Screenshot_04.jpg"
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
						src="https://c.opencritic.com/news/WcV7bdhM75gBqBoQQ4YLYbK9QYlNDvCjHAYBFXntc9SEmSvOGxQE3N7Pw_th.jpg"
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
	<footer id="footer">
		<div class="copyright">

			<p>
				Copyright &copy; KH Academy All right reserved <a
					href="https://templated.co"></a>
			</p>
		</div>
	</footer>


</body>
</html>