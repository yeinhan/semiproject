<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Semi_Project_Platfrom_Page</title>
<link rel="stylesheet" href="assets/css/platform.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="platfrom_main">
		 <%@ include file="./header.jsp" %>

		<div class="book-slide">
			<div class="book js-flickity"
				data-flickity-options='{ "wrapAround": true }'>

				<div class="book-cell">
					<div class="book-img">
						<img
							src="https://upload.wikimedia.org/wikipedia/en/4/4f/TLOU_P2_Box_Art_2.png"
							alt="" class="book-photo">
					</div>
					<div class="book-content">
						<div class="book-title">더 라스트 오브 어스 파트2</div>
						<div class="book-author">너티독</div>
						<div class="rate">
							<fieldset class="rating">
								<input type="checkbox" id="star5" name="rating" value="5" /> <label
									class="full" for="star5"></label> <input type="checkbox"
									id="star4" name="rating" value="4" /> <label class="full"
									for="star4"></label> <input type="checkbox" id="star3"
									name="rating" value="3" /> <label class="full" for="star3"></label>
								<input type="checkbox" id="star2" name="rating" value="2" /> <label
									class="full" for="star2"></label> <input type="checkbox"
									id="star1" name="rating" value="1" /> <label class="full"
									for="star1"></label>
							</fieldset>
							<!-- <span class="book-voters">1.987 voters</span> -->
						</div>
						<div class="book-sum">너티 독의 3인칭 액션 어드벤처 게임. 감독은 브루스 스트라레이,
							각본은 닐 드럭만. 2020년 6월 19일에 발매되었으며 전작의 크리에이티브 디렉터였던 닐 드럭만이 그대로 디렉터직을
							맡았다.</div>
						<div class="book-see">더 보기</div>
					</div>
				</div>
				<div class="book-cell">
					<div class="book-img">
						<img
							src="
    https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2Fp4R7f%2FbtqCKhqLhct%2F9y145IB5cRdK0fbtz0yBO0%2Fimg.png"
							alt="" class="book-photo">
					</div>
					<div class="book-content">
						<div class="book-title">리그 오브 레전드</div>
						<div class="book-author">라이엇 게임즈</div>
						<div class="rate">
							<fieldset class="rating blue">
								<input type="checkbox" id="star6" name="rating" value="5" /> <label
									class="full1" for="star6"></label> <input type="checkbox"
									id="star7" name="rating" value="4" /> <label class="full1"
									for="star7"></label> <input type="checkbox" id="star8"
									name="rating" value="3" /> <label class="full1" for="star8"></label>
								<input type="checkbox" id="star9" name="rating" value="2" /> <label
									class="full1" for="star9"></label> <input type="checkbox"
									id="star10" name="rating" value="1" /> <label class="full1"
									for="star10"></label>
							</fieldset>
							<!--<span class="book-voters">1.987 voters</span>  -->
						</div>
						<div class="book-sum">라이엇 게임즈가 개발 및 서비스 중인 MOBA 장르의 게임. 국내에선
							게임 명칭의 앞 글자들을 따서 롤(LoL), 서양에서는 League 등으로 불린다.</div>
						<div class="book-see book-blue">더 보기</div>
					</div>
				</div>
				<div class="book-cell">
					<div class="book-img">
						<img
							src="https://www.lifeisxbox.eu/wp-content/uploads/2019/12/rdr2.jpg"
							alt="" class="book-photo">
					</div>
					<div class="book-content">
						<div class="book-title">레드 데드 리뎀션 2</div>
						<div class="book-author">락스타 게임즈</div>
						<div class="rate">
							<fieldset class="rating purple">
								<input type="checkbox" id="star11" name="rating" value="5" /> <label
									class="full" for="star11"></label> <input type="checkbox"
									id="star12" name="rating" value="4" /> <label class="full"
									for="star12"></label> <input type="checkbox" id="star13"
									name="rating" value="3" /> <label class="full" for="star13"></label>
								<input type="checkbox" id="star14" name="rating" value="2" /> <label
									class="full" for="star14"></label> <input type="checkbox"
									id="star15" name="rating" value="1" /> <label class="full"
									for="star15"></label>
							</fieldset>
							<!--<span class="book-voters">1.987 voters</span>  -->
						</div>
						<div class="book-sum">GTA 시리즈 개발 참여를 통해 샌드박스의 노하우를 얻은 락스타
							샌디에이고가 서부극이라는 장르에 도전하여 그간의 노하우를 살린 오픈 월드 게임</div>
						<div class="book-see book-pink" onclick="location.href='#' ">더
							보기</div>
					</div>
				</div>
				<div class="book-cell">
					<div class="book-img">
						<img
							src="https://expertgamereviews.com/wp-content/uploads/2020/06/How-to-Play-TeamFight-Tactics-Complete-Guide.jpg"
							alt="" class="book-photo">
					</div>
					<div class="book-content">
						<div class="book-title">전략적 팀 전투</div>
						<div class="book-author">라이엇 게임즈</div>
						<div class="rate">
							<fieldset class="rating yellow">
								<input type="checkbox" id="star16" name="rating" value="5" /> <label
									class="full" for="star16"></label> <input type="checkbox"
									id="star17" name="rating" value="4" /> <label class="full"
									for="star17"></label> <input type="checkbox" id="star18"
									name="rating" value="3" /> <label class="full" for="star18"></label>
								<input type="checkbox" id="star19" name="rating" value="2" /> <label
									class="full" for="star19"></label> <input type="checkbox"
									id="star20" name="rating" value="1" /> <label class="full"
									for="star20"></label>
							</fieldset>
							<!-- <span class="book-voters">1.987 voters</span>  -->
						</div>
						<div class="book-sum">2019년 6월 11일 공개된 리그 오브 레전드의 새로운 모드의
							게임. 공식 명칭은 Teamfight Tactics</div>
						<div class="book-see book-yellow">더 보기</div>
					</div>
				</div>
				<div class="book-cell">
					<div class="book-img">
						<img
							src="https://gamespot1.cbsistatic.com/uploads/scale_medium/536/5360430/3080727-godofwar.jpg"
							alt="" class="book-photo">
					</div>
					<div class="book-content">
						<div class="book-title">갓 오브 워</div>
						<div class="book-author">산타모니카 스튜디오</div>
						<div class="rate">
							<fieldset class="rating dark-purp">
								<input type="checkbox" id="star21" name="rating" value="5" /> <label
									class="full" for="star21"></label> <input type="checkbox"
									id="star22" name="rating" value="4" /> <label class="full"
									for="star22"></label> <input type="checkbox" id="star23"
									name="rating" value="3" /> <label class="full" for="star23"></label>
								<input type="checkbox" id="star24" name="rating" value="2" /> <label
									class="full" for="star24"></label> <input type="checkbox"
									id="star25" name="rating" value="1" /> <label class="full"
									for="star25"></label>
							</fieldset>
							<!-- <span class="book-voters">1.987 voters</span> -->
						</div>
						<div class="book-sum">SIE WWS 산하의 SIE 산타모니카 스튜디오에서 개발하는 갓 오브
							워 시리즈의 8번째 작품[3]이자 북유럽 신화를 배경으로 한 첫 번째 작품.</div>
						<div class="book-see book-purple">더 보기</div>
					</div>
				</div>
			</div>
		</div>


		<div class="platform_main">

			<div class="platfrom_left">
				<div class="books-of">
					<div class="week">
						<div class="author-title">Reviewer Of The Week</div>
						<div class="author">
							<img
								src="https://pbs.twimg.com/profile_images/421125601957662720/stLaxOiN_400x400.jpeg"
								alt="" class="author-img">
							<div class="author-name" onclick="location.href='#' ">잔든건</div>
						</div>
						<div class="author">
							<img
								src="https://steemitimages.com/DQmY3S99RCbVPnw5ochqFnHvgb2zK1evi5GrwNpynoAYDti/1520096942841.jpg"
								alt="" class="author-img">
							<div class="author-name" onclick="location.href='#' ">페페</div>
						</div>
						<div class="author">
							<img
								src="https://image.yes24.com/momo/TopCate2377/MidCate001/237606400.jpg"
								alt="" class="author-img">
							<div class="author-name" onclick="location.href='#' ">제이슨
								므라즈</div>
						</div>
						<div class="author">
							<img
								src="https://mblogthumb-phinf.pstatic.net/MjAyMDAzMTNfMTY5/MDAxNTg0MTA5MjU4NjIy.JEMBH3pneXFmpD87CTSvhBl2JpRx3ya0-teEhlLRfJwg.1_T7hCTppCS7t9beb3WGVo5P6pDJR6XR6Pg3Qo3uLS0g.PNG.louis0826/%EB%A0%88%EC%98%A4%EB%82%982.PNG?type=w800"
								alt="" class="author-img">
							<div class="author-name" onclick="location.href='#' ">해삼레</div>
						</div>
						<div class="author">
							<img src="https://i.ytimg.com/vi/mYElFUim_j4/maxresdefault.jpg"
								alt="" class="author-img">
							<div class="author-name" onclick="location.href='#' ">엘리</div>
						</div>
						<div class="author">
							<img src="https://pbs.twimg.com/media/Ea9u_PJU4AATpgL.jpg:small"
								alt="" class="author-img">
							<div class="author-name" onclick="location.href='#' ">조엘</div>
						</div>
					</div>
					<div class="week year">
						<div class="author-title">올해의 게임</div>
						<div class="year-book">
							<img
								src="https://asia.playstation.com/content/dam/pscom/games/2019/sekiro-shadows-die-twice/sekiro-shadows-die-twice-mainvisual-sp.png"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#'">세키로 : 섀도우 다이 트와이스</b>
								</div>
								<div class="year-book-author">프롬소프트웨어</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://m.media-amazon.com/images/I/81epeZitzTL._SS500_.jpg"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">언챠티드 4</b>
								</div>
								<div class="year-book-author">너티독</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://store.playstation.com/store/api/chihiro/00_09_000/container/KR/ko/999/HP9000-CUSA12613_00-DEATHSTRANDELUXE/1592330398000/image?w=240&h=240&bg_color=000000&opacity=100&_version=00_09_000"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">데스 스트랜딩 </b>
								</div>
								<div class="year-book-author">코지마 프로덕션</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://www.oyunbufem.com/image/cache/catalog/Oyunlar/PS4/marvel-s-spider-man-374x374.jpg"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">마블 스파이더맨</b>
								</div>
								<div class="year-book-author">소니</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://gamespot1.cbsistatic.com/uploads/scale_medium/1197/11970954/2847691-2568037-91v3ozkg-ml._sl1500_.jpg"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">더 위쳐 : 와일드헌터 3</b>
								</div>
								<div class="year-book-author">CD Projekt</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://i.gadgets360cdn.com/large/star_wars_jedi_fallen_order_1555079220316.jpg"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">스타워즈 : 제다이 오더의 몰락</b>
								</div>
								<div class="year-book-author">EA</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://cdn-products.eneba.com/resized-products/FnTAm87OZrjCfroZMLASD2YN4cqqqrAEgWV2k2URIWs_390x400_1x-0.jpeg	"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">레지던트 이블 2</b>
								</div>
								<div class="year-book-author">캡콤</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://cdn2.unrealengine.com/Diesel%2Fproduct%2Fcalluna%2Fhome%2FAbout_Control_EPIC_keyart_1000x840-1000x840-ec97a3b78fe732588b6ffca22130244f98f5f5bb.jpg"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">컨트롤</b>
								</div>
								<div class="year-book-author">레메디 엔터테이먼트</div>
							</div>
						</div>
						<div class="year-book">
							<img
								src="https://vignette.wikia.nocookie.net/devilmaycry/images/2/27/DMC5_Deluxe_Edition.png/revision/latest?cb=20180924211426"
								alt="" class="year-book-img">
							<div class="year-book-content">
								<div class="year-book-name">
									<b onclick="location.href='#' ">데빌 메이 크라이 5</b>
								</div>
								<div class="year-book-author">캡콤</div>
							</div>
						</div>
					</div>
					<div class="overlay"></div>
				</div>
			</div>


			<div class="platform_right" style="margin-left : 0%">
				<div class="main-menu">
					<div class="genre">Games Ranking</div>

					<table class="sort_pf" style="float: right">
						<tr>
							<!--
							<td class="1"><span>Platform</span> <span class="pf">
									<select>
										<option value="pc">PC</option>
										<option value="ps4">PS4</option>
										<option value="xbox">XBOX</option>
										<option value="nintendo">NINTENDO</option>
								</select>
							</span></td>
 -->
							<td style="padding-left: 60%; "><span>정렬방법</span> <span class="sort"> 
								<select style="width: 20%">
										<option value="star_score">평점순</option>
										<option value="name">이름순</option>
										<option value="date">출시일순</option>
								</select>
							</span></td>
						</tr>
					</table>
				</div>
				<br>
				<div class="ranking">
					<table class="ranking_table">
						<thead>
							<tr>
								<th>순위</th>
								<th>별점</th>
								<th>이름</th>
								<th>출시일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
							<tr>
								<td class="rank">순위</td>
								<td class="star_point">
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
								</td>
								<td class="name">이름</td>
								<td class="date">출시일</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="pageinfo">
					<ul class="pagination button">
						<li class="next"><a title="Go to previous page"
							class="pagination-prev"> <span>Prev</span>
						</a></li>
						<li><a title="Page 1" href="#">1 page</a></li>
						<li><a title="Go to next page" class="pagination-next"> <span>Next</span>
						</a></li>
					</ul>
				</div>
			</div>
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