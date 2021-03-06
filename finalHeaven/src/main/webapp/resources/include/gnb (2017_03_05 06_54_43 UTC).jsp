<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<!-- 검색 쿼리 -->
<script>
function search() {
    var sch_value = jQuery('#form_search #search_pr').val();
    if (sch_value == ' ') { alert('검색어를 입력하세요.'); }
    else {
         jQuery('#form_search').submit();
    }
}
</script>

<script>
function login_toggle() {	
}
/* function login(){	
	var str = "./member/view/Login.jsp" + encodeURIComponent(window.location.href);
	document.location.href = str;
} */
function logout(){
	var str = "" + encodeURIComponent(window.location.href);
	document.location.href = str;
}
</script>
<%
MemberBean member = new MemberBean();
try{
 if(session.getAttribute("user_name")==null){
 response.sendRedirect("./WEB-INF/view/member/Login.jsp");}
 }catch(Exception e){} 
%>
<header>
<h1 id="logo"><a href="./main.do">HeavenFunding</a></h1>


<!-- 프로젝트 검색 폼 -->
<form name="search" action="./ProjectListAction_search.do" method="post" id="search">
<ul id="search_layout">
<li><input type="text" name="search_pr" id="search_pr" /></li>
<li><button type="submit" id="search_btn" onclick="search();">검색</button></li>
</ul>
</form>


<h2 class="noVisible">GNB</h2>
		<ul id="gnb">
			<li><a href="./ProjectListAction.do">펀딩 보기</a></li>
			<li><a href="./projectAddView.do">펀딩 올리기</a></li>
			<li><a href="#">펀딩이란?</a></li>			
			
			<c:if test="${ sessionScope.email != null && sessionScope.email != ''}">
			<li class="mom"><%=session.getAttribute("email")%>님 
				<ul class="sub">
					<li><a href="./MyProjectView.do?page=1">나의 프로젝트 현황</a></li>
					<li><a href="./MyDonationView.do">나의 후원 현황</a></li>
					<li><a href="./MyAccountView.do">나의 계좌 관리</a></li>
					<li><a href="MemberLogout.do">로그아웃</a></li>
				</ul>			
			</li>
			</c:if>
			<c:if test="${sessionScope.email == null || sessionScope.email == ''}">
			<li><a href="MemberLoginView.do" onclick="login_toggle">로그인</a></li>
			</c:if>
			
		</ul>
</header>
