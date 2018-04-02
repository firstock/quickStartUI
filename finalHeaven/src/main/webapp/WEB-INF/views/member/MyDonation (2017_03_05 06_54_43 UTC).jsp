<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 기부현황 page</title>
<link rel="stylesheet" type="text/css" href="./project/css/MyDonation.css" />
</head>
<body>
<style>

</style>
</head>
<body>

<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />


	<div id="top">	
		<span>나의 기부 현황 page</span>
	</div>
	<div id="container">
	<table border="1">
		<colgroup>
			<col width="5%"><col width="10%"><col width="25%"><col width="10%">
			<col width="20%"><col width="15%"><col width="15%">
		</colgroup>

<c:if test="${listcount>0}">
		<tr>
			<th>번호</th><th>프로젝트 이름</th><th>기부금</th><th>기부 날짜</th>
		</tr>
	
	
	<c:forEach var="fundlist" items="${fundlist}">
		<tr>
			<td>${fundlist.FUND_NUM}</td>
			<td>${fundlist.PROJECT_TITLE}</td>
			<td>${fundlist.FUND_DONATION}</td>
			<td>${fundlist.FUND_DATE}</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="4">
			<c:if test="${page>BLOCK}">			
				[<a href="MyDonationView.do?page=1">◀◀</a>]
				[<a href="MyDonationView.do?page=${startPage-1}">◀</a>]
			
			</c:if>
			<c:forEach var="i" begin="${ startPage }" end="${ endPage }" step="1">
				<c:choose>
					<c:when test="${ i==page }">
					<u><b>[${ i }]</b></u>
					</c:when>
					<c:otherwise>
					[<a href="MyDonationView.do?page=${ i }">${ i }</a>]
					</c:otherwise>
				</c:choose>
			</c:forEach>	
			<c:if test="${ endPage<allPage }">
				[<a href="MyDonationView.do?page=${ endPage+1 }">▶</a>]
				[<a href="MyDonationView.do?page=${ allPage }">▶▶</a>]
			</c:if>
		</td>
	</tr>
</c:if>
	</table>
	</div>
<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />
</body>
</html>