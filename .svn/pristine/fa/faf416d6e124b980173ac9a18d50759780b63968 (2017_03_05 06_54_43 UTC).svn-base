<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 근데 admin계정은 어디 bean에 넣어둠? -->
<%@page import="com.heaven.dto.MemberBean" %>
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

<header>
<h2 class="noVisible">GNB</h2>
		<ul id="gnb">
		<!-- #대신에 ./뭐시기.ad -->
		<!-- 관리자의꿈에 태블로 data분석을 넣고 싶음 -->
			<li><a href="#">게시글승인</a></li>
			<li><a href="./projectAddView.do">QnAAAA</a></li>
			<li><a href="#">관리자의꿈</a></li>			
			
			<!-- email 대신에 admin ID -->
			<c:if test="${ sessionScope.email != null && sessionScope.email != ''}">
			<li class="mom">관리자관리<%=session.getAttribute("email")%>님
				<ul class="sub">
					<li><a href="./MyProjectView.do?page=1">회원관리</a></li>
					<li><a href="./MyDonationView.do">관리자 관리</a></li>
					<li><a href="./MyAccountView.do">꿈꿈</a></li>
					<li><a href="MemberLogout.do">로그아웃</a></li>
				</ul>			
			</li>
			</c:if>
			<c:if test="${sessionScope.email == null || sessionScope.email == ''}">
			<!-- 로그인 안했을때 보이는 것 -->
			<li><a href="MemberLoginView.do" onclick="login_toggle">로그인</a></li>
			</c:if>
			
		</ul>
</header>