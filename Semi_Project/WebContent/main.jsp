<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
	
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Semi_Project_Main_Page</title>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>
<link rel="stylesheet" href="./mainpagestyle.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript"></script>

</head>
<body>
<!-- partial:index.partial.html -->
<div class="main_visual">
 <div class="header">
  <div class="header-title">DOM<span>Critic</span></div>
  <div class="main_menu">
  	<span class="menu_pc" onclick="">PC</span>
  	<span class="menu_ps4" onclick="">PS4</span>
  	<span class="menu_xbox" onclick="">XBOX</span>
  	<span class="menu_switch" onclick="">Switch</span>
  </div>
  <div class="browse">
   <div class="search-bar">
    <input type="search" placeholder="Search Games" />
   </div>
  </div>
  <div class="profile">
   <div class="user-profile">
    <img src=
    "https://png.pngtree.com/png-vector/20190919/ourmid/pngtree-user-login-or-authenticate-icon-on-gray-background-flat-icon-ve-png-image_1742031.jpg" alt="" class="user-img">
   </div>
   <div class="profile-menu">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu">
    </svg>
    <div class="login_button1"><a href="#" class="login_text">Sign In / Sign Up</a></div>&nbsp;&nbsp;&nbsp;&nbsp;
   </div>
  </div>
 </div>
 <div class="book-slide">
  <div class="book js-flickity" data-flickity-options='{ "wrapAround": true }'>
  
   <div class="book-cell" >
    <div class="book-img">
     <img src="https://upload.wikimedia.org/wikipedia/en/4/4f/TLOU_P2_Box_Art_2.png" alt="" class="book-photo">
    </div>
    <div class="book-content">
     <div class="book-title">더 라스트 오브 어스 파트2</div>
     <div class="book-author">너티독</div>
     <div class="rate">
      <fieldset class="rating">
       <input type="checkbox" id="star5" name="rating" value="5" />
       <label class="full" for="star5"></label>
       <input type="checkbox" id="star4" name="rating" value="4" />
       <label class="full" for="star4"></label>
       <input type="checkbox" id="star3" name="rating" value="3" />
       <label class="full" for="star3"></label>
       <input type="checkbox" id="star2" name="rating" value="2" />
       <label class="full" for="star2"></label>
       <input type="checkbox" id="star1" name="rating" value="1" />
       <label class="full" for="star1"></label>
      </fieldset>
      <!-- <span class="book-voters">1.987 voters</span> -->
     </div>
     <div class="book-sum">너티 독의 3인칭 액션 어드벤처 게임. 감독은 브루스 스트라레이, 각본은 닐 드럭만. 
     2020년 6월 19일에 발매되었으며 전작의 크리에이티브 디렉터였던 닐 드럭만이 그대로 디렉터직을 맡았다.</div>
     <div class="book-see">더 보기</div>
    </div>
   </div>
   <div class="book-cell" >
    <div class="book-img">
     <img src="
    https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2Fp4R7f%2FbtqCKhqLhct%2F9y145IB5cRdK0fbtz0yBO0%2Fimg.png" 
     alt="" class="book-photo">
    </div>
    <div class="book-content">
     <div class="book-title">리그 오브 레전드</div>
     <div class="book-author">라이엇 게임즈</div>
     <div class="rate">
      <fieldset class="rating blue">
       <input type="checkbox" id="star6" name="rating" value="5" />
       <label class="full1" for="star6"></label>
       <input type="checkbox" id="star7" name="rating" value="4" />
       <label class="full1" for="star7"></label>
       <input type="checkbox" id="star8" name="rating" value="3" />
       <label class="full1" for="star8"></label>
       <input type="checkbox" id="star9" name="rating" value="2" />
       <label class="full1" for="star9"></label>
       <input type="checkbox" id="star10" name="rating" value="1" />
       <label class="full1" for="star10"></label>
      </fieldset>
      <!--<span class="book-voters">1.987 voters</span>  -->
     </div>
     <div class="book-sum">라이엇 게임즈가 개발 및 서비스 중인 MOBA 장르의 게임. 국내에선 게임 명칭의 앞 글자들을 따서 롤(LoL), 서양에서는 League 등으로 불린다.</div>
     <div class="book-see book-blue">더 보기</div>
    </div>
   </div>
   <div class="book-cell">
    <div class="book-img">
     <img src="https://www.lifeisxbox.eu/wp-content/uploads/2019/12/rdr2.jpg" alt="" class="book-photo">
    </div>
    <div class="book-content">
     <div class="book-title">레드 데드 리뎀션 2</div>
     <div class="book-author">락스타 게임즈</div>
     <div class="rate">
      <fieldset class="rating purple">
       <input type="checkbox" id="star11" name="rating" value="5" />
       <label class="full" for="star11"></label>
       <input type="checkbox" id="star12" name="rating" value="4" />
       <label class="full" for="star12"></label>
       <input type="checkbox" id="star13" name="rating" value="3" />
       <label class="full" for="star13"></label>
       <input type="checkbox" id="star14" name="rating" value="2" />
       <label class="full" for="star14"></label>
       <input type="checkbox" id="star15" name="rating" value="1" />
       <label class="full" for="star15"></label>
      </fieldset>
      <!--<span class="book-voters">1.987 voters</span>  -->
     </div>
     <div class="book-sum">GTA 시리즈 개발 참여를 통해 샌드박스의 노하우를 얻은 락스타 샌디에이고가 서부극이라는 장르에 도전하여 
     그간의 노하우를 살린 오픈 월드 게임</div>
     <div class="book-see book-pink" onclick="location.href='#' ">더 보기</div>
    </div>
   </div>
   <div class="book-cell">
    <div class="book-img">
     <img src="https://expertgamereviews.com/wp-content/uploads/2020/06/How-to-Play-TeamFight-Tactics-Complete-Guide.jpg" alt="" class="book-photo">
    </div>
    <div class="book-content">
     <div class="book-title">전략적 팀 전투</div>
     <div class="book-author">라이엇 게임즈</div>
     <div class="rate">
      <fieldset class="rating yellow">
       <input type="checkbox" id="star16" name="rating" value="5" />
       <label class="full" for="star16"></label>
       <input type="checkbox" id="star17" name="rating" value="4" />
       <label class="full" for="star17"></label>
       <input type="checkbox" id="star18" name="rating" value="3" />
       <label class="full" for="star18"></label>
       <input type="checkbox" id="star19" name="rating" value="2" />
       <label class="full" for="star19"></label>
       <input type="checkbox" id="star20" name="rating" value="1" />
       <label class="full" for="star20"></label>
      </fieldset>
     <!-- <span class="book-voters">1.987 voters</span>  -->
     </div>
     <div class="book-sum">
2019년 6월 11일 공개된 리그 오브 레전드의 새로운 모드의 게임. 공식 명칭은 Teamfight Tactics</div>
     <div class="book-see book-yellow">더 보기</div>
    </div>
   </div>
   <div class="book-cell">
    <div class="book-img">
     <img src="https://gamespot1.cbsistatic.com/uploads/scale_medium/536/5360430/3080727-godofwar.jpg" alt="" class="book-photo">
    </div>
    <div class="book-content">
     <div class="book-title">갓 오브 워</div>
     <div class="book-author">산타모니카 스튜디오</div>
     <div class="rate">
      <fieldset class="rating dark-purp">
       <input type="checkbox" id="star21" name="rating" value="5" />
       <label class="full" for="star21"></label>
       <input type="checkbox" id="star22" name="rating" value="4" />
       <label class="full" for="star22"></label>
       <input type="checkbox" id="star23" name="rating" value="3" />
       <label class="full" for="star23"></label>
       <input type="checkbox" id="star24" name="rating" value="2" />
       <label class="full" for="star24"></label>
       <input type="checkbox" id="star25" name="rating" value="1" />
       <label class="full" for="star25"></label>
      </fieldset>
     <!-- <span class="book-voters">1.987 voters</span> -->
     </div>
     <div class="book-sum">SIE WWS 산하의 SIE 산타모니카 스튜디오에서 개발하는 갓 오브 워 시리즈의 8번째 작품[3]이자 북유럽 신화를 배경으로 한 첫 번째 작품.</div>
     <div class="book-see book-purple">더 보기</div>
    </div>
   </div>
  </div>
 </div>
 <div class="main-wrapper">
  <div class="books-of">
   <div class="week">
    <div class="author-title">Reviewer Of The Week</div>
    <div class="author">
     <img src="https://pbs.twimg.com/profile_images/421125601957662720/stLaxOiN_400x400.jpeg" alt="" class="author-img">
     <div class="author-name" onclick="location.href='#' ">잔든건	</div>
    </div>
    <div class="author">
     <img src="https://steemitimages.com/DQmY3S99RCbVPnw5ochqFnHvgb2zK1evi5GrwNpynoAYDti/1520096942841.jpg" alt="" class="author-img">
     <div class="author-name" onclick="location.href='#' ">페페</div>
    </div>
    <div class="author">
     <img src="https://image.yes24.com/momo/TopCate2377/MidCate001/237606400.jpg" alt="" class="author-img">
     <div class="author-name" onclick="location.href='#' ">제이슨 므라즈</div>
    </div>
    <div class="author">
     <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDAzMTNfMTY5/MDAxNTg0MTA5MjU4NjIy.JEMBH3pneXFmpD87CTSvhBl2JpRx3ya0-teEhlLRfJwg.1_T7hCTppCS7t9beb3WGVo5P6pDJR6XR6Pg3Qo3uLS0g.PNG.louis0826/%EB%A0%88%EC%98%A4%EB%82%982.PNG?type=w800" alt="" class="author-img">
     <div class="author-name" onclick="location.href='#' ">해삼레</div>
    </div>
    <div class="author">
     <img src="https://i.ytimg.com/vi/mYElFUim_j4/maxresdefault.jpg" alt="" class="author-img">
     <div class="author-name" onclick="location.href='#' ">엘리</div>
    </div>
    <div class="author">
     <img src="https://pbs.twimg.com/media/Ea9u_PJU4AATpgL.jpg:small" alt="" class="author-img">
     <div class="author-name" onclick="location.href='#' ">조엘</div>
    </div>
   </div>
   <div class="week year">
    <div class="author-title">올해의 게임</div>
    <div class="year-book">
     <img src="https://asia.playstation.com/content/dam/pscom/games/2019/sekiro-shadows-die-twice/sekiro-shadows-die-twice-mainvisual-sp.png" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#'">세키로 : 섀도우 다이 트와이스</b></div>
      <div class="year-book-author">프롬소프트웨어</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://m.media-amazon.com/images/I/81epeZitzTL._SS500_.jpg" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#' ">언챠티드 4</b></div>
      <div class="year-book-author">너티독</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://store.playstation.com/store/api/chihiro/00_09_000/container/KR/ko/999/HP9000-CUSA12613_00-DEATHSTRANDELUXE/1592330398000/image?w=240&h=240&bg_color=000000&opacity=100&_version=00_09_000" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#' ">데스 스트랜딩 </b></div>
      <div class="year-book-author">코지마 프로덕션</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://www.oyunbufem.com/image/cache/catalog/Oyunlar/PS4/marvel-s-spider-man-374x374.jpg" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#' ">마블 스파이더맨</b></div>
      <div class="year-book-author">소니</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://gamespot1.cbsistatic.com/uploads/scale_medium/1197/11970954/2847691-2568037-91v3ozkg-ml._sl1500_.jpg" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#' ">더 위쳐 : 와일드헌터 3</b></div>
      <div class="year-book-author">CD Projekt</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://i.gadgets360cdn.com/large/star_wars_jedi_fallen_order_1555079220316.jpg" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#' ">스타워즈 : 제다이 오더의 몰락</b></div>
      <div class="year-book-author">EA</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://cdn-products.eneba.com/resized-products/FnTAm87OZrjCfroZMLASD2YN4cqqqrAEgWV2k2URIWs_390x400_1x-0.jpeg	" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#' ">레지던트 이블 2</b></div>
      <div class="year-book-author">캡콤</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://cdn2.unrealengine.com/Diesel%2Fproduct%2Fcalluna%2Fhome%2FAbout_Control_EPIC_keyart_1000x840-1000x840-ec97a3b78fe732588b6ffca22130244f98f5f5bb.jpg" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='#' ">컨트롤</b></div>
      <div class="year-book-author">레메디 엔터테이먼트</div>
     </div>
    </div>
    <div class="year-book">
     <img src="https://vignette.wikia.nocookie.net/devilmaycry/images/2/27/DMC5_Deluxe_Edition.png/revision/latest?cb=20180924211426" alt="" class="year-book-img">
     <div class="year-book-content">
     <div class="year-book-name"><b onclick="location.href='#' ">데빌 메이 크라이 5</b></div>
      <div class="year-book-author">캡콤</div>
     </div>
    </div>
   </div>
   <div class="overlay"></div>
  </div>
  <div class="popular-books">
   <div class="main-menu">
    <div class="genre">Popular Games</div>
    <div class="book-types">
     <a href="#" class="book-type active"> All Platforms</a>
     <a href="#" class="book-type" onclick="showDivPC();"> PC</a>
     <a href="#" class="book-type"> PS4</a>
     <a href="#" class="book-type"> Xbox</a>
     <a href="#" class="book-type"> Switch</a>
    </div>
   </div>
   <div class="book-cards">
    <div class="book-card">
     <div class="content-wrapper">
     <img src="data:image/jpeg;base64,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" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">사이버펑크 2077</div>
      <div class="book-by">CD PROJEKT</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c1" name="rating" value="5">
<label class="full" for="star-c1"></label>
<input type="checkbox" id="star-c2" name="rating" value="4">
<label class="full" for="star-c2"></label>
<input type="checkbox" id="star-c3" name="rating" value="3">
<label class="full" for="star-c3"></label>
<input type="checkbox" id="star-c4" name="rating" value="2">
<label class="full" for="star-c4"></label>
<input type="checkbox" id="star-c5" name="rating" value="1">
<label class="full" for="star-c5"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">CD 프로젝트 RED가 개발한 1인칭 오픈 월드 액션 RPG 게임.마이크 폰드스미스의 TRPG 《사이버펑크 2020》을 기반으로 원작에서 50여 년 후의 미래를 그리고 있다. </div>
      </div>
    </div>
     <div class="likes">
     <div class="like-profile">
   </div>
   </div>
    </div>
    <div class="book-card">
     <div class="content-wrapper">
     <img src="https://s3.ap-northeast-2.amazonaws.com/minimapimage/game/cover/original/the-legend-of-zelda-breath-of-the-wild.jpg" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">젤다의 전설 : 야생의숨결</div>
      <div class="book-by">닌텐도</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c6" name="rating" value="5">
<label class="full" for="star-c6"></label>
<input type="checkbox" id="star-c7" name="rating" value="4">
<label class="full" for="star-c7"></label>
<input type="checkbox" id="star-c8" name="rating" value="3">
<label class="full" for="star-c8"></label>
<input type="checkbox" id="star-c9" name="rating" value="2">
<label class="full" for="star-c9"></label>
<input type="checkbox" id="star-c10" name="rating" value="1">
<label class="full" for="star-c10"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">닌텐도가 개발/배급한 젤다의 전설 시리즈 중 하나인 오픈월드 액션 어드벤처 게임. Wii U와 닌텐도 스위치로 발매되었다. 속편으로 젤다의 전설 브레스 오브 더 와일드 속편(가제)이 발매 예정이다. </div>
      </div>
    </div>
     <div class="likes">
     <div class="like-profile">
   </div>
   </div>
    </div>
    <div class="book-card">
     <div class="content-wrapper">
     <img src="https://upload.wikimedia.org/wikipedia/en/1/1f/Animal_Crossing_New_Horizons.jpg" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">모여봐요 동물의 숲</div>
      <div class="book-by">닌텐도</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c11" name="rating" value="5">
<label class="full" for="star-c11"></label>
<input type="checkbox" id="star-c12" name="rating" value="4">
<label class="full" for="star-c12"></label>
<input type="checkbox" id="star-c13" name="rating" value="3">
<label class="full" for="star-c13"></label>
<input type="checkbox" id="star-c14" name="rating" value="2">
<label class="full" for="star-c14"></label>
<input type="checkbox" id="star-c15" name="rating" value="1">
<label class="full" for="star-c15"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">2020년 3월 20일 Nintendo Switch로 전 세계 동시 발매된 동물의 숲 시리즈의 신작 게임이다. 한국에서는 모동숲, 영미권 국가에서는 ACNH(Animal Crossing New Horizons)라고 불린다. </div>
      </div>
    </div>
     <div class="likes">
     <div class="like-profile">
   </div>
     <div class="like-profile">
   </div>
   </div>
    </div>
    <div class="book-card">
     <div class="content-wrapper">
     <img src="data:image/jpeg;base64,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" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">헤일로 5</div>
      <div class="book-by">마이크로소프트</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c16" name="rating" value="5">
<label class="full" for="star-c16"></label>
<input type="checkbox" id="star-c17" name="rating" value="4">
<label class="full" for="star-c17"></label>
<input type="checkbox" id="star-18" name="rating" value="3">
<label class="full" for="star-c18"></label>
<input type="checkbox" id="star-c19" name="rating" value="2">
<label class="full" for="star-c19"></label>
<input type="checkbox" id="star-c20" name="rating" value="1">
<label class="full" for="star-c20"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">헤일로 4의 이후 이야기를 주인공 마스터 치프가 이끄는 스파르탄 블루 팀과 새로운 캐릭터 제임슨 로크 요원이 이끄는 오시리스 화력팀의 시점으로 각각 다룰 예정</div>
      </div>
    </div>
     <div class="likes">
     <div class="like-profile">
   </div>
     <div class="like-profile">
   </div>
     <div class="like-profile"> 
   </div>
   </div>
    </div>
    <div class="book-card">
     <div class="content-wrapper">
     <img src="https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltcb65be6b210cc2e4/5ed0002698ef630b1d7c0e7c/Patch_Notes_banner.jpg" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">발로란트</div>
      <div class="book-by">라이엇 게임즈</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c21" name="rating" value="5">
<label class="full" for="star-c21"></label>
<input type="checkbox" id="star-c22" name="rating" value="4">
<label class="full" for="star-c22"></label>
<input type="checkbox" id="star-c23" name="rating" value="3">
<label class="full" for="star-c23"></label>
<input type="checkbox" id="star-c24" name="rating" value="2">
<label class="full" for="star-c24"></label>
<input type="checkbox" id="star-c25" name="rating" value="1">
<label class="full" for="star-c25"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">라이엇 게임즈가 처음으로 개발한 카운터 스트라이크 스타일의 1인칭 슈팅 게임. 밀리터리 FPS의 감각을 유지하면서도 스킬 시스템을 도입했다. </div>
      </div>
    </div>
    </div>
    <div class="book-card">
     <div class="content-wrapper">
     <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDAzMTNfMjg5/MDAxNTg0MDI1ODAxNjAx.SNj8dGSPSxcOoN4ADV669wt7z9VjvYW7XfrT-05JDPEg.8Hb8RFwYql09VeXqzvLUNtYATbV_5wDrNy_7mkGzzFAg.PNG.eternalguard/SE-44fc9549-3b2c-4715-9d6e-3cbc7b904605.png?type=w800" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">오리와 도깨비불</div>
      <div class="book-by">문 스튜디오</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c1" name="rating" value="5">
<label class="full" for="star-c1"></label>
<input type="checkbox" id="star-c2" name="rating" value="4">
<label class="full" for="star-c2"></label>
<input type="checkbox" id="star-c3" name="rating" value="3">
<label class="full" for="star-c3"></label>
<input type="checkbox" id="star-c4" name="rating" value="2">
<label class="full" for="star-c4"></label>
<input type="checkbox" id="star-c5" name="rating" value="1">
<label class="full" for="star-c5"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">오스트리아의 문 스튜디오에서 제작하고, 엑스박스 게임 스튜디오에서 유통하는 인디 플랫폼 게임. 전작 Ori and the Blind Forest의 후속작이다.</div>
      </div>
    </div>
    </div>
    <div class="book-card">
     <div class="content-wrapper">
     <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDA1MjhfMjY3/MDAxNTkwNjc1NDIzNjQw.USCiZccNlmlTyfLiyyvEHy6ETeOV3CJAlF4Sjwd5rnMg.iuQ9TLrZSRAB5v7-m8snZB3MFuAPoQnd36DnuJ6Grp4g.PNG.eternalguard/SE-79a68fe6-3c86-4449-bc4a-3ef655aa5896.png?type=w800" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">데스페라도 3</div>
      <div class="book-by">미미미 게임즈</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c1" name="rating" value="5">
<label class="full" for="star-c1"></label>
<input type="checkbox" id="star-c2" name="rating" value="4">
<label class="full" for="star-c2"></label>
<input type="checkbox" id="star-c3" name="rating" value="3">
<label class="full" for="star-c3"></label>
<input type="checkbox" id="star-c4" name="rating" value="2">
<label class="full" for="star-c4"></label>
<input type="checkbox" id="star-c5" name="rating" value="1">
<label class="full" for="star-c5"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">데스페라도스 3(Desperados III)는 Mimimi Games가 개발, THQ 노르딕이 발매하는 코만도스 스타일의 잠입 실시간 전술 게임으로 데스페라도스 시리즈의 신작.</div>
      </div>
    </div>
    </div>
    <div class="book-card">
     <div class="content-wrapper">
     <img src="https://blznav.akamaized.net/img/games/cards/card-overwatch2-2f18e8a019a30a6d.jpg" alt="" class="book-card-img">
     <div class="card-content">
     <div class="book-name" onclick="location.href='#' ">오버워치 2</div>
      <div class="book-by">Blizzard Entertainment</div>
      <div class="rate">
<fieldset class="rating book-rate">
<input type="checkbox" id="star-c1" name="rating" value="5">
<label class="full" for="star-c1"></label>
<input type="checkbox" id="star-c2" name="rating" value="4">
<label class="full" for="star-c2"></label>
<input type="checkbox" id="star-c3" name="rating" value="3">
<label class="full" for="star-c3"></label>
<input type="checkbox" id="star-c4" name="rating" value="2">
<label class="full" for="star-c4"></label>
<input type="checkbox" id="star-c5" name="rating" value="1">
<label class="full" for="star-c5"></label>
</fieldset>
<span class="book-voters card-vote">1.987 voters</span>
</div>
       <div class="book-sum card-sum">오버워치의 후속작인 하이퍼 FPS 게임이다.PvE에서는 영웅 레벨이 존재하고 영웅의 스킬 효과를 강화할 수 있는 특성을 선택할 수 있으며, 특성은 영웅의 레벨에 따라 선택 가능하다. </div>
      </div>
    </div>
    </div>
   </div>
  </div>
 </div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<footer class="footer">Copyright &copy; KH Academy All right reserved </footer>
</body>
</html>
