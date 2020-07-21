<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>

 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Semi_Project_ContentPage</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".starRev span").click(function() {
		$(this).parent().children("span").removeClass("on");
		$(this).addClass("on").prevAll("span").addClass("on");
		return false;
	})
});
function loginChk() {	
	alert("리뷰를 작성하시려면 먼저 로그인을 해주세요");
	location.href="pagemove?command=contentpage_more&game_no=${dto.game_no}";
}
</script>

<!-- 부트스트랩  / css-->
<link rel="stylesheet" href="./resource/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/contentpage_more.css">

<!-- BootStrap -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="./header.jsp" %>
	<%@include file="./contentpage_header.jsp" %>
	<section class="main">
	
		<%	
				if (session.getAttribute("login") == null || session.getAttribute("login").equals(null)) { 
		%>
			<div class="wrapper style2_1">
			<div class="reveiew-form">
				<h3 class="h1">Review this game</h3>
			</div>
			<div class="form-body">
				<form action="pagemove" method="post" class="review_writeform">
				<input type="hidden" name="command" value="contentpage_review2">
				<input type="hidden" name="game_no" value="${dto.game_no }">
				<input type="hidden" name="game_platform" value="${dto.game_platform }">
					<div class="starRev">
						<span class="starR on" name="rv_star1" value="1">별1</span> 
						<span class="starR" name="rv_star2">별2</span> 
						<span class="starR" name="rv_star3">별3</span> 
						<span class="starR" name="rv_star4">별4</span> 
						<span class="starR" name="rv_star5">별5</span>
					</div>
					<div class="form-group">
						<label class="control-label" for="review">Your Review:</label>
						<textarea class="form-control" rows="10" placeholder="리뷰를 작성 해 주세요."
							name="rv_content" id="review" onclick="loginChk();"></textarea>
					</div>
					<input type="submit" class="btn btn-default" value="작성">
				</form>
			</div>
		</div>
		<%
				} else {
		%>
		<div class="wrapper style2_1">
			<div class="reveiew-form">
				<h3 class="h1">Review this game</h3>
			</div>
			<div class="form-body">
				<form action="pagemove" method="post" class="review_writeform">
				<input type="hidden" name="command" value="contentpage_review2">
				<input type="hidden" name="game_no" value="${dto.game_no }">
				<input type="hidden" name="game_platform" value="${dto.game_platform }">
					<div class="starRev">
						<span class="starR on" name="rv_star1" value="1">별1</span> 
						<span class="starR" name="rv_star2">별2</span> 
						<span class="starR" name="rv_star3">별3</span> 
						<span class="starR" name="rv_star4">별4</span> 
						<span class="starR" name="rv_star5">별5</span>
					</div>
					<div class="form-group">
						<label class="control-label" for="review">Your Review:</label>
						<textarea class="form-control" rows="10" placeholder="리뷰를 작성 해 주세요."
							name="rv_content" id="review"></textarea>
					</div>
					<input type="submit" class="btn btn-default" value="작성">
				</form>
			</div>
		</div>
				<%
						}
				%>
		
		<div class="review_list">
			<h1 class="h1">Review</h1>
			<c:forEach var="list" items="${list }">
			<div class="review_box">
				<div class="writer">${list.rv_user_id }</div>
				<div class="date_write">${list.rv_date }</div>
				<div class="content_box">
					<div readonly="readonly" class="content"><c:out value="${list.rv_content }"></c:out></div>
				</div>
				<div class="star_box">
					<div class="star">
						<svg width="1em" height="1em" viewBox="0 0 16 16"
							class="bi bi-star-fill" fill="currentColor"
							xmlns="http://www.w3.org/2000/svg">
					<path
								d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
				</svg>
					</div>
					<div class="grade">${list.rv_star }</div>
				</div>
			</div>
			</c:forEach>

				<div class="star"></div>
			</div>

			<div style="text-align: center;">
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>

		</div>
	</section>
	<!--부트 스트랩 js  사용-->
	<script type="text/javascript" src="./resource/js/bootstrap.js"></script>
	<%@include file="./footer.jsp" %>
</body>
</html>