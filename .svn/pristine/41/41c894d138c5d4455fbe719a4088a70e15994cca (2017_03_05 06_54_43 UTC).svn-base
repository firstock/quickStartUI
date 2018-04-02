<%@page import="com.heaven.dto.ProjectBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	ProjectBean pBean =(ProjectBean)request.getAttribute("projectBean");
	String email = (String)session.getAttribute("email");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<style>
	.boardTitleArea{
		padding:1%; text-align:center; magin-bottom:1%;background-color:#9999ff;
	}
	.boardTitle{
		magin:10%;
	}
	.boardMaker{
		text-align:center; magin-top:5%;
	}
	.fund{
		padding-left:5%;padding-top:2%;padding-bottom:2%;background-color:#e6e6ff;
		border-bottom: 1px solid #D9D9DE;cursor:pointer;color:black;
	}
	.fundHref{
		text-decoration: none;
	}
	.fund:hover{
		background-color:#ccccff;
	}
	.fundExplanation{
		text-align:center;font-weight:bold;font-size:50px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="boardTitleArea">
		<h2 class="boardTitle"><%=pBean.getPROJECT_TITLE() %></h2>
		<div class="boardMaker">by <b><%=pBean.getPROJECT_TEAMNAME() %></b></div>
	</div>
<script type="text/javascript">

</script>
	<section class="fundWholeArea">
		<div class="fundEachArea"> <%-- <c:set var='money' value='(String)${request.getParameter("money")}'/> --%>
		<%-- <%String money = (String)request.getParameter("money"); %> --%>
<%-- 			<a class="fundHref" href="project_supporting.pr?money=1&&title=<%=pBean.getPROJECT_TITLE() %>"> --%>
			<a class="fundHref" href="./project_supporting.do?money=10000&&pNum=
			<%=pBean.getPROJECT_NUM() %>&&email=<%=email%>">
				<div class="fund" value="money1">10,000won support</div>
			</a>
			<a class="fundHref" href="./project_supporting.do?money=20000&&pNum=
			<%=pBean.getPROJECT_NUM() %>&&email=<%=email%>">
				<div class="fund" value="Money2">20,000won support</div>
			</a>
			<a class="fundHref" href="./project_supporting.do?money=30000&&pNum=
			<%=pBean.getPROJECT_NUM() %>&&email=<%=email%>">
				<div class="fund" value="Money3">30,000won support</div>
			</a>
			<a class="fundHref" href="./project_supporting.do?money=40000&&pNum=
			<%=pBean.getPROJECT_NUM() %>&&email=<%=email%>">
				<div class="fund" value="Money4">40,000won support</div>
			</a>
			<a class="fundHref" href="./project_supporting.do?money=50000&&pNum=
			<%=pBean.getPROJECT_NUM() %>&&email=<%=email%>">
				<div class="fund" value="Money5">50,000won support</div>
			</a>
		</div>
		<div class="fundingGuard">
			<p class="fundExplanation">choose it how much would you like to support.</p>
		</div>
	</section>
</body>
</html>