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
</head>
<body>
<div class="week year">
    <div class="author-title">올해의 게임</div>
    <c:forEach var="goty" items="${gotylist }">
    <div class="year-book">
     <img src="${goty.game_screenshot }" alt="" class="year-book-img">
     <div class="year-book-content">
      <div class="year-book-name"><b onclick="location.href='pagemove?command=contentpage&game_no=${goty.game_no}'"><c:out value="${goty.game_name }"></c:out></b></div>
      <div class="year-book-author"><c:out value="${goty.game_company }"></c:out></div>
     </div>
    </div>
    </c:forEach>
   </div>
</body>
</html>