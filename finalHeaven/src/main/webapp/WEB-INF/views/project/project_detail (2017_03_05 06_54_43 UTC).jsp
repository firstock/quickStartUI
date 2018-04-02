<%@page import="java.util.List"%>
<%@page import="com.heaven.dto.ProjectBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String title="Haven Fund-Board"; %>
<%
	/* ProjectBean pBean =(ProjectBean)request.getAttribute("projectBean"); */
	ProjectBean pBean =(ProjectBean)request.getAttribute("projectBean");
	//List fList =(List)session.getAttribute("fList");//후원자 쏴주기
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style>
	.boardTitleArea{
		padding:1%; text-align:center; magin-bottom:1%;
	}
	.boardTitle{
		magin:10%;
	}
	.boardMaker{
		text-align:center; magin-top:5%;
	}
	.boardUpArea{
		display:flex; padding-left:20%; padding-right: 20%;
	}
	.boardUpRight{
		flex:0 0 70%;
	}
	.boardUpLeft{
		flex:0 0 30%;
	}
	.image{
		height: auto; width: 100%; position:relative;align:middle;
	}
	.boardBreifing{
		text-align:center; padding-left:10%; padding-right: 10%;
	}
	.boardUpLeft{
		padding-left:5%;
	}
	.textSize{
		font-size:250%;
	}
	.boardBtnContain{
		padding-top:20%;padding-bottom:20%;
	}
	.fundBtn {
	    background-color: #4CAF50;
	    border: none;
	    color: white;
	    padding: 15px 32px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    margin: 4px 2px;
	    cursor: pointer;
	}
	.boardTextLinkLine{
		    border-top: 1px solid #D9D9DE;border-bottom: 1px solid #D9D9DE;
		    padding-left:20%; padding-right: 20%; text-align:center;
	}
	.boardtLink{
		padding-left:1%; padding-right: 1%; 
	}
	.boardContextFrame{
		padding-left:20%; padding-right: 20%;
	}
	.boardText{
		border:solid 1px white;background-color:white;
	}
	.boardText:hover{
		color:blue; cursor:pointer;
	}
	.boardShowContext{
		margin-left:1%; margin-right:1%;
	}
</style>
<title><%=title %></title>
</head>
<body>
<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />
	<section class="boardDetailSectionFrame">
		<section class="boardDetailUpFrame">
			<div class="boardTitleArea">
				<h2 class="boardTitle"><%=pBean.getPROJECT_TITLE() %></h2>
				<div class="boardMaker">by <b><%=pBean.getPROJECT_TEAMNAME() %></b></div>
			</div>
			<div class="boardUpArea">
				<div class="boardUpRight">
					<img class="image" src="./upload/<%= pBean.getPROJECT_IMG() %>" />
					<p class="boardBreifing"><%=pBean.getPROJECT_BRIEFING() %></p>
				</div>
				<div class="boardUpLeft">
					<div class="boardLeftSupporter">
						<div class="textSize boardLeftCurrentSupporter"><%=pBean.getPROJECT_SUPPORTERS() %></div>
						<div class="boardLeftStringSupporter">supporters</div>
					</div>
					<div class="boardLeftFund">
						<div class="textSize boardLeftCurrentFund"><%=pBean.getPROJECT_CMONEY() %>원</div>
						<div class="boardLeftGoalFund"><%=pBean.getPROJECT_GMONEY() %>원</div>
					</div>
					<div class="boardLeftDays">
						<div class="textSize boardLeftDday"><%=pBean.getPROJECT_D_DAY() %></div>
						<div class="boardLeftStringDday">Days</div>
					</div>
					<div class="boardBtnContain">
<!-- && 멤버와 합칠 경우, a만 삭제 -->
						<a href="./project_supportingBtn.do?pNum=<%=pBean.getPROJECT_NUM()%>">
							<button class="fundBtn" onclick="checkLogIn">Support</button>
						</a>
					</div>
				</div>
			</div>
		</section>
<script>
	$(function(){
		$(".IntroductionString").click(function(){
			$('#boardContextShown').load('project_content.pr');
		});
		$(".ReplyString").click(function(){
			$('#boardContextShown').load('project_reply.jsp');
		});
		/* $(".SupportersString").click(function(){
			$('#boardContextShown').load('project_supporters.pr');
		}); */
		$(".SupportersString").click(function(){
			$('#boardContextShown').load('project_supporters.jsp');
		});
		
	});
</script>
		<section class="boardDetailBottomFrame">
			<div class="boardTextLinkLine">
				<span class="boardtLink introductionLink">
					<button class="boardText IntroductionString" id="a" value="Introduction">Introduction</button>
				</span>
				<span class="boardtLink ReplyLink">
					<button class="boardText ReplyString" id="a" value="Reply">Reply</button>
				</span>
				<span class="boardtLink SupportersLink">
					<button class="boardText SupportersString" id="a" value="Supporters">Supporters</button>
				</span>
			</div>
			<div class="boardContextFrame">
				<div class="boardContext" id="boardContextShown">
					<p class="boardShowContext"><%=pBean.getPROJECT_CONTENT() %></p>
				</div>
			</div>
		</section>
		<!--푸터 영역 -->
<footer>
	<div>
		<jsp:include page="/resources/include/footer.jsp" flush="false" />
	</div>
</footer>
	</section>
</body>
</html>