<%@page import="com.heaven.dto.ProjectBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List pList = (List)request.getAttribute("list");
	int rowOrder = 1;
%>

<div id="wrap">
<nav class="funding_list">

<ul>
<% for(int i=0;i<pList.size();i++){
			ProjectBean bean =(ProjectBean)pList.get(i);
			int cmoney = bean.getPROJECT_CMONEY();
			int gmoney = bean.getPROJECT_GMONEY();
			double rate = (double)((double)cmoney/(double)gmoney) * 100;
	%>		
<li>
	<div class="thumb">
	<a class="link link1" href="#">
		<img src="./resources/img/upload/<%= bean.getPROJECT_IMG() %>" width="250" height="167"  /></a>
		</div>
	<p class="li_title">제목 <%=bean.getPROJECT_TITLE() %></p>
	<p class="li_username"><%=bean.getPROJECT_TEAMNAME() %></p> 
	<p class="li_funds">모금액 : <%=rate%>%<strong></strong></p> 
	<p class="li_meter"><meter value="0.25">Low </meter> 25%</p>

</li>
<%} %>
<%-- <c:forEach var="pList" items="${list}">
<li>
	<div class="thumb">
	<a class="link link1" href="./project_detailAction.pr?pNum=${ pList.PROJECT_NUM }">
		<img src="./upload/${ pList.PROJECT_IMG }" width="250" height="167"  /></a>
		</div>
	<p class="li_title">제목 ${ pList.PROJECT_TITLE }</p>
	<p class="li_username">${ pList.PROJECT_TEAMNAME }</p> 
	<p class="li_funds">모금액 : <strong>${ pList.PROJECT_CMONEY }</strong></p> 
	<p class="li_meter"><meter value="0.25">Low </meter> 25%</p>

</li>
</c:forEach> --%>

</ul>
<h2>here up</h2>
</nav>
</div>
<!--wrap end -->