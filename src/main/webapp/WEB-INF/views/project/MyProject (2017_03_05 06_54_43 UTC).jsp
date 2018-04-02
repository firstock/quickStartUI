<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 프로젝트 현황</title>
<link rel="stylesheet" type="text/css" href="./project/css/MyProject.css" />
<style type="text/css">
#top {height:50px; padding:25px 0; text-align:center;}
#thumb { width:250px; height:150px;}
#container { width:80%; margin:0 auto; text-align: center;}
</style>
</head>
<body>
<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />


	<div id="top">	
		<h1>나의 프로젝트 현황 page</h1>
	</div>
	<div id="container">
	<table id="myPro">
		<colgroup>
			<col width="10%"><col width="25%"><col width="10%">
			<col width="20%"><col width="15%"><col width="15%">
		</colgroup>

<c:if test="${listcount>0}">
		<tr>
			<th>사진</th><th>프로젝트명</th><th>프로젝트기간</th><th>달성 금액</th><th>프로젝트 상황</th><th>최초등록일</th>
		</tr>
	
	
	<c:forEach var="prolist" items="${prolist}">
		<tr>
			<td><img id="thumb" src="./resources/img/upload/${prolist.PROJECT_IMG}" /></td>
			<td>${prolist.PROJECT_TITLE}</td>
			<td>${prolist.PROJECT_D_DAY}</td>
			<td>${prolist.PROJECT_CMONEY} <b>/</b> ${prolist.PROJECT_GMONEY}</td>
			<td>${prolist.PROJECT_STATE}</td>
			<td>${prolist.PROJECT_DATE}</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="6">
			<c:if test="${page>BLOCK}">			
				[<a href="MyProjectView.do?page=1">◀◀</a>]
				[<a href="MyProjectView.do?page=${startPage-1}">◀</a>]
			
			</c:if>
			<c:forEach var="i" begin="${ startPage }" end="${ endPage }" step="1">
				<c:choose>
					<c:when test="${ i==page }">
					<u><b>[${ i }]</b></u>
					</c:when>
					<c:otherwise>
					[<a href="MyProjectView.do?page=${ i }">${ i }</a>]
					</c:otherwise>
				</c:choose>
			</c:forEach>	
			<c:if test="${ endPage<allPage }">
				[<a href="MyProjectView.do?page=${ endPage+1 }">▶</a>]
				[<a href="MyProjectView.do?page=${ allPage }">▶▶</a>]
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