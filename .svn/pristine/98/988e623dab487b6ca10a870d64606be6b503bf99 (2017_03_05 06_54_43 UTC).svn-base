<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.heaven.dto.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Funding</title>

<link rel="stylesheet" type="text/css"  href="./resources/css/main/desktop.css" media="only screen and (min-width:401px)"  />
<script src="http://code.jquery.com/jquery-latest.js" ></script>
<script src="./resources/js/main/rolling.js"></script>
<!-- 롤오버메뉴 쿼리 -->
<script>
$( document ).ready( function() {
$('.mom').hover(
		function() {
			$('.sub', this).show();
		},
		function() {
			$('.sub', this).hide();
		}
	);
});
</script>

<!-- 롤링배너 쿼리 -->
<script>
$(document).ready(function() {
    $('.rolling_wrap').rolling({
		arrowBtn:true,
		rollingBtn:true,
		main:true,
		timer:6000
	});
});
</script>


</head>
<body>

<div id="skipNav">
	<a href="#contents">본문 바로가기</a>
</div>
<hr class="hidden" />

<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />

<!-- 배너영역 영역 -->
<%-- <jsp:include page="/WEB-INF/views/main/main_ban.jsp" flush="false" /> --%> 
<div id="main_ban">
<ul class="rolling_wrap">
	<c:forEach var="pList" items="${list}">
		<li>
		<%-- <a class="link link1" href="./project_detailAction.pr?pNum=${ pList.PROJECT_NUM }"> --%>
		<a class="link link1" href="#">
<%-- 		${ pList.PROJECT_NUM } --%>
		<img src="./resources/img/upload/${ pList.PROJECT_IMG }.jpg" />
		</a>
		</li>
	</c:forEach> 
</ul>
<!-- <h2>here up</h2> -->
</div>
 
<!-- 리스트 영역 -->
<jsp:include page="/WEB-INF/views/main/project_main_list.jsp" flush="false">
	<jsp:param value="${list}" name="list"/>
</jsp:include>
 
<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />


</body>
</html>
