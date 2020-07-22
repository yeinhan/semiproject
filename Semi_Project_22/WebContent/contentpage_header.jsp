<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    <%response.setContentType("text/html; charset=UTF-8"); %>
    
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/contentpage_headerstyle.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
		<section id="banner" style="background-image : url('${dto.game_screenshot2 }')">
		<div class="inner">
			<header>
				<h1><c:out value="${dto.game_name }" /></h1>
				<p>
					${dto.game_company }<br />
				</p>
				<div class="maingame-vertical"></div>
			</header>
		</div>
	</section>
</body>
</html>