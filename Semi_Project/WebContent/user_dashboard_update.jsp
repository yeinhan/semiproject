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
<html>
<head>
<meta charset="UTF-8">
<title>User dashboard update</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".starRev span").click(function() {
		$(this).parent().children("span").removeClass("on");
		$(this).addClass("on").prevAll("span").addClass("on");
		return false;
	})
});
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
	<section style="padding:10px;" >
		<div class="wrapper style2_1">
			<div class="reveiew-form">
				<h3 class="h1">Review this game</h3>
			</div>
			<div class="form-body">
				<form action="pagemove" method="post" class="review_writeform">
					<input type="hidden" name="command" value="user_dashboard_update">
					<input type="hidden" name="rv_no" value="${dto.rv_no }">
					<input type="hidden" name="rv_platform" value="${dto.rv_platform }">
					<div>${dto.game_name }</div>
					<div class="starRev">
						<span class="starR on">별1</span> <span class="starR">별2</span> <span
							class="starR">별3</span> <span class="starR">별4</span> <span
							class="starR">별5</span>
					</div>
					<input type="text" name="rv_star" value="${dto.rv_star }">
					<div class="form-group">
						<label class="control-label" for="review">Your Review:</label>
						<textarea class="form-control" rows="10" placeholder="Your Reivew"
							name="rv_content" id="review">${dto.rv_content }</textarea>
					</div>
					<input type="button" class="btn btn-default" value="취소" onclick="location.href='pagemove?command=backform&rv_platform=${dto.rv_platform }'">
					<input type="submit" class="btn btn-default" value="수정">
				</form>
			</div>
		</div>


	</section>


<%@include file="./footer.jsp" %>
</body>
</html>