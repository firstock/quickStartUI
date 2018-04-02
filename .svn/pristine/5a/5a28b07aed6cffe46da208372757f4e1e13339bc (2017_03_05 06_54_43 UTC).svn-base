<%@page import="com.heaven.dto.ProjectBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="./resources/js/main/rolling.js"></script>
<script src="<c:url value="./resources/js/main/rolling.js"/>"></script>
<script src="<c:url value="${CONTEXT}/js/main/rolling.js"/>"></script>
<script src="<c:url value='/js/main/rolling.js'/>"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<!-- <link rel="stylesheet" type="text/css"  href="./resources/css/main/banner.css" media="only screen and (min-width:401px)"  /> -->
 
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script> -->
    <script src="./resources/js/main/modernizr.custom.min.js"></script>    
    <script src="./resources/js/main/jquery.wmuSlider.js"></script>
    <script src="./resources/js/main/jquery.wmuGallery.js"></script>

    <script>   
    	$('.example1').wmuSlider(); 
        $('.example2').wmuSlider({
            touch: true,
            animation: 'slide'
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
    
<%		
	List pList = (List)request.getAttribute("list");	
	int rowOrder = 1;	
%>

<!-- 프로젝트 업로드시 업로드한 이미지를 불러와야 함 -->
<div id="main_ban">
<ul class="rolling_wrap">
 <% for(int i=0;i<1;i++){     
ProjectBean bean = (ProjectBean)pList.get(i);
 %>	 
<li>
<a class="link link1" href="./project_detailAction.do?pNum=<%=bean.getPROJECT_NUM()%>"> 
 <img src="./resources/img/upload/<%= bean.getPROJECT_IMG()%>"  /></a> --%>
 </li> 
<%} %> 
 </ul> 
 

</div>