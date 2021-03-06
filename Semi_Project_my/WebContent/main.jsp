<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@page import="com.game.dto.GameDto" %>
<%@page import="java.util.List" %>
	
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Semi_Project_Main_Page</title>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.css'>
<link rel="stylesheet" href="assets/css/mainpagestyle.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function wrapWindowByMask(){
	var maskHeight = $(document).height();  
	var maskWidth = $(window).width();
		$('#mask').css({'width':maskWidth,'height':maskHeight});  
     	 $('#mask').fadeTo("fast",0.8);    
	}
	
	$(document).ready(function(){
	$('.openMask').click(function(e){
		e.preventDefault();
		wrapWindowByMask();
	});
});
	
</script>

</head>
<body >
<!-- partial:index.partial.html -->
<%@include file="./header.jsp" %>
<div class="main_visual">
	<%@include file="./mainSlide.jsp" %>
 
 <div class="main-wrapper">
   <div class="books-of">
   	<%@include file="./ROTW.jsp" %>
   	<%@ include file="./GOTY.jsp" %>
   <div class="overlay"></div>
  </div>
  <div class="popular-books">
   <div class="main-menu">
    <div class="genre">Popular Games</div>
   </div>
   <div class="book-cards">
    <c:forEach var="dto" items="${list }">
    <div class="book-card">
     <div class="content-wrapper">
     <img src="${dto.game_screenshot }" alt="" class="book-card-img" >
     <div class="card-content">
     <div class="book-name"  onclick="location.href='pagemove?command=contentpage&game_no=${dto.game_no}' "><c:out value="${dto.game_name }"/></div>
      <div class="book-by"><c:out value="${dto.game_company }"></c:out></div>
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
</div>
       <div class="book-sum card-sum"><c:out value="${dto.game_content }"></c:out></div>
      </div>
    </div>
     <div class="likes">
     <div class="like-profile">
   </div>
   </div>
    </div>
    </c:forEach>
   </div>
  </div>
 </div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<%@include file="./footer.jsp" %>
</body>
</html>
