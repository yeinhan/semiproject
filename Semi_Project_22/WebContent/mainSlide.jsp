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
<link rel="stylesheet" href="assets/css/mainpagestyle.css">
</head>
<body>

<!-- 메인 슬라이드 -->
<div class="book-slide">
  <div class="book js-flickity" data-flickity-options='{ "wrapAround": true , "autoPlay": 2000 }'>
  <c:forEach var="list" items="${alist }">
   <div class="book-cell" style="background-image : url('${list.game_screenshot2}'); background-size : cover;">
    <div class="book-img">
     <img src="${list.game_screenshot}" alt="" class="book-photo">
    </div>
    <div class="book-content">
     <div class="book-title"><c:out value="${list.game_name }"></c:out></div>
     <div class="book-author"><c:out value="${list.game_company }"></c:out></div>
     <div class="rate">
      <c:choose>
        <c:when test="${list.game_staravg >= 5 }">
            <fieldset class="rating">
            <input type="checkbox" id="star5" name="rating" value="5" checked="checked" onclick="return false" />
             <label class="full" for="star5"></label>
             <input type="checkbox" id="star4" name="rating" value="4" onclick="return false" />
             <label class="full" for="star4"></label>
             <input type="checkbox" id="star3" name="rating" value="3" onclick="return false" />
             <label class="full" for="star3"></label>
             <input type="checkbox" id="star2" name="rating" value="2" onclick="return false" />
             <label class="full" for="star2"></label>
             <input type="checkbox" id="star1" name="rating" value="1" onclick="return false" />
             <label class="full" for="star1"></label>
      </fieldset>
      </c:when>
      <c:when test="${list.game_staravg >= 5 }">
            <fieldset class="rating">
            <input type="checkbox" id="star5" name="rating" value="5" checked="checked" onclick="return false" />
             <label class="full" for="star5"></label>
             <input type="checkbox" id="star4" name="rating" value="4" onclick="return false" />
             <label class="full" for="star4"></label>
             <input type="checkbox" id="star3" name="rating" value="3" onclick="return false" />
             <label class="full" for="star3"></label>
             <input type="checkbox" id="star2" name="rating" value="2" onclick="return false" />
             <label class="full" for="star2"></label>
             <input type="checkbox" id="star1" name="rating" value="1" onclick="return false" />
             <label class="full" for="star1"></label>
      </fieldset>
      </c:when>
      <c:when test="${list.game_staravg < 5 and list.game_staravg >= 4 }">
            <fieldset class="rating">
            <input type="checkbox" id="star5" name="rating" value="5" onclick="return false" />
             <label class="full" for="star5"></label>
             <input type="checkbox" id="star4" name="rating" value="4" checked="checked" onclick="return false" />
             <label class="full" for="star4"></label>
             <input type="checkbox" id="star3" name="rating" value="3" onclick="return false" />
             <label class="full" for="star3"></label>
             <input type="checkbox" id="star2" name="rating" value="2" onclick="return false" />
             <label class="full" for="star2"></label>
             <input type="checkbox" id="star1" name="rating" value="1" onclick="return false" />
             <label class="full" for="star1"></label>
      </fieldset>
      </c:when>
      <c:when test="${list.game_staravg < 4 and list.game_staravg >= 3 }">
            <fieldset class="rating">
            <input type="checkbox" id="star5" name="rating" value="5" onclick="return false" />
             <label class="full" for="star5"></label>
             <input type="checkbox" id="star4" name="rating" value="4" onclick="return false" />
             <label class="full" for="star4"></label>
             <input type="checkbox" id="star3" name="rating" value="3" checked="checked" onclick="return false" />
             <label class="full" for="star3"></label>
             <input type="checkbox" id="star2" name="rating" value="2" onclick="return false" />
             <label class="full" for="star2"></label>
             <input type="checkbox" id="star1" name="rating" value="1" onclick="return false" />
             <label class="full" for="star1"></label>
      </fieldset>
      </c:when>
      <c:when test="${list.game_staravg < 3 and list.game_staravg >= 2 }">
            <fieldset class="rating">
            <input type="checkbox" id="star5" name="rating" value="5" onclick="return false" />
             <label class="full" for="star5"></label>
             <input type="checkbox" id="star4" name="rating" value="4" onclick="return false" />
             <label class="full" for="star4"></label>
             <input type="checkbox" id="star3" name="rating" value="3" onclick="return false" />
             <label class="full" for="star3"></label>
             <input type="checkbox" id="star2" name="rating" value="2" checked="checked" onclick="return false" />
             <label class="full" for="star2"></label>
             <input type="checkbox" id="star1" name="rating" value="1" onclick="return false" />
             <label class="full" for="star1"></label>
      </fieldset>
      </c:when>
      <c:when test="${list.game_staravg < 2 and list.game_staravg >= 1 }">
            <fieldset class="rating">
            <input type="checkbox" id="star5" name="rating" value="5" onclick="return false" />
             <label class="full" for="star5"></label>
             <input type="checkbox" id="star4" name="rating" value="4" onclick="return false" />
             <label class="full" for="star4"></label>
             <input type="checkbox" id="star3" name="rating" value="3" onclick="return false" />
             <label class="full" for="star3"></label>
             <input type="checkbox" id="star2" name="rating" value="2" onclick="return false" />
             <label class="full" for="star2"></label>
             <input type="checkbox" id="star1" name="rating" value="1" checked="checked" onclick="return false" />
             <label class="full" for="star1"></label>
      </fieldset>
      </c:when>
      <c:otherwise>
         <fieldset class="rating">
            <input type="checkbox" id="star5" name="rating" value="5" onclick="return false" />
             <label class="full" for="star5"></label>
             <input type="checkbox" id="star4" name="rating" value="4" onclick="return false" />
             <label class="full" for="star4"></label>
             <input type="checkbox" id="star3" name="rating" value="3" onclick="return false" />
             <label class="full" for="star3"></label>
             <input type="checkbox" id="star2" name="rating" value="2" onclick="return false" />
             <label class="full" for="star2"></label>
             <input type="checkbox" id="star1" name="rating" value="1" onclick="return false" />
             <label class="full" for="star1"></label>
             </fieldset>
      </c:otherwise>
      </c:choose>
     </div>
     <div class="book-sum"><c:out value="${list.game_content }"></c:out></div>
     <div class="book-see" onclick="location.href='pagemove?command=contentpage&game_no=${list.game_no}&game_platform=${list.game_platform }'">더 보기</div>
    </div>
   </div>
   </c:forEach>
  </div>
 </div>
<!--   -->


</body>
</html>