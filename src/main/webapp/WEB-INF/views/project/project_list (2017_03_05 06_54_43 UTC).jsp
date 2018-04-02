<%@page import="com.heaven.dto.ProjectBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String title="Haven Fund-Board"; %>
<%
	List pList = (List)request.getAttribute("projectList");
	int rowOrder = 1;
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=title %></title>
</head>
<body>
<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />

<!-- 리스트 시작 -->
<div id="wrap">
<h2>펀딩  보기</h2>
<nav class="funding_list2">
<ul>
<% for(int i=0;i<pList.size();i++){
			ProjectBean bean =(ProjectBean)pList.get(i);
			String pro_img =  bean.getPROJECT_IMG();
			String p_title = bean.getPROJECT_TITLE();
			String teamName = bean.getPROJECT_TEAMNAME();
			int cmoney = bean.getPROJECT_CMONEY();
			int gmoney = bean.getPROJECT_GMONEY();
			double rate = (double)((double)cmoney/(double)gmoney) * 100;
	%>		
<li>
	<div class="thumb">
	<a class="link link1" href="./project_detailAction.do?pNum=<%=bean.getPROJECT_NUM()%>">
		<img src="./resources/img/upload/<%=pro_img%>.jpg" width="250" height="167"  /></a>
		</div>
	<p class="li_title">제목 : <%=p_title%></p>
	<p class="li_username"><%=teamName%></p>
	<p class="boardShortText"><%=bean.getPROJECT_BRIEFING() %></p> 
	<p class="li_funds"><strong>모인 금액 : <%=cmoney%>원</strong></p>
	<p class="li_funds"><strong>목표 금액 : <%=gmoney%>원</strong></p>	
	<p class="li_meter"><meter value="<%=rate%>" min="0" max="100">Low </meter> <%=rate%>%</p>
	
	<p class="d_dayString"><strong>남은 날짜 : <%=bean.getPROJECT_D_DAY() %>일</strong></p>
</li>
<%} %>
</ul>
</nav>
</div>
<!-- 끝 -->
			

<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />

</body>
</html>