<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 Main 페이지 </title>
</head>
<body>
	Main페이지입니다.
	<c:if test="${ sessionScope.email != null && sessionScope.email != ''}">
	<a href="projectAddView.do">프로젝트 새로 만들기</a>
	<a href="MyProjectView.do">나의 프로젝트 현황</a>
	<a href="MyDonationView.do">나의 기부 현황</a>
	<a href="MyAccountView.do">나의 계좌 관리</a>
	<a href="MemberLogout.do">로그아웃하기</a>
	</c:if>
	
	<c:if test="${sessionScope.email == null || sessionScope.email == ''}">
	<% response.sendRedirect("MemberLoginView.do"); %>
	</c:if>
</body>
</html>