<%@page import="com.heaven.dto.ProjectBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ProjectBean pBean =(ProjectBean)request.getAttribute("projectBean");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<style>
	.boardContextFrame{
		padding-left:20%; padding-right: 20%;
		border: solid;
	}
	.boardShowContext{
		margin-left:1%; margin-right:1%;
	}
	.boardShowContext{
		padding-left:0; padding-right: 0;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<h2>boardContext</h2>
	<div class="boardContextFrame">
		<div class="boardContext" id="boardContextShown">
			<p class="boardShowContext"><%=pBean.getPROJECT_CONTENT() %></p>
		</div>
	</div>
</body>
</html>