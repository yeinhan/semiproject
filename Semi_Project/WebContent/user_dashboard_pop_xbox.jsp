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
<title>User dashboard popup</title>
<!--스타일 css-->
<link rel="stylesheet" href="assets/css/popup.css">
<link rel="stylesheet" href="assets/css/platform.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	window.opener.location.reload();
</script>
</head>
<body>
	<div class="popup_wrap" style="padding: 10px 20px;">
		<h1 class="h1"
			style="font-size: 30px; text-align: center; font-weight: 500;">
			XBOX</h1>
		<div>
			<table class="popup">
				<col width="110px">
				<col width="96px">
				<col width="740px">
				<col width="140px">
				<thead>
					<tr>
						<th>게임이름</th>
						<th>별점</th>
						<th>게임리뷰</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="4">작성된 글이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.game_name }</td>
									<td>${dto.rv_star }</td>
									<td>${dto.rv_content }</td>
									<td><input type="button" value="수정"
										onclick="location.href='pagemove?command=updateform&rv_no=${dto.rv_no}'">
										<input type="button" value="삭제"
										onclick="location.href='pagemove?command=deleteform&rv_no=${dto.rv_no }&rv_platform=${dto.rv_platform }'"></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>

	</div>

</body>
</html>