<%@page import="com.heaven.dto.ReplyBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List replyList =(List)request.getAttribute("replyList"); 
	  int replyNum = replyList.size();
	  String replyTitle = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	.replyWhole{
		margin-left: 10px;
		margin-write: 10px;
	}
	.explain{
		margin-bottome: 13px;
		margin-top: 13px;
	}
	.spaceForWriting{
		padding-bottom: 25px;
		padding-top: 25px;
	    border-bottom: 1px solid #A9A9A9;
	}
	.includingButton{
		margin-start: 2px;
	    margin-end: 2px;
	    padding-before: 0.35em;
	    padding-start: 0.75em;
	    padding-end: 0.75em;
	    padding-after: 0.625em;
	}
	.textWriting{
	    border-style: solid;
	    color: #7d7d7d;
	    border-radius:5px;
	    padding: 7.5px 5px;
	    width: 100%;
	}
	.insertButton{
		border:solid 1px white;
		background-color:white;
		color:#1E90FF;
	    float: right !important;
	}
	.insertButton:hover{
		cursor:pointer;
	}
	.showReplyWhole{
		border-bottom: 1px solid #A9A9A9;
	    padding-bottom: 25px;
	    padding-top: 25px;
	}
	.replyBody{
		padding-right: 1.65em;     
		flex: 1;
	}
	.replyWriter{
	    color: #433;
	    font-weight: 500;
	}
	.replyTime{
		font-size: 0.75em;
	    margin-right: 8px;
	    margin-left: 4.33333px;
	    color: #898080;
	}
	.replyContent{
		font-size: 0.875em;
	    display: block;
	    color: #676363;
   		line-height: 28px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="replyWhole">
		<p class="explain"><span class="numberOfReply" id="countReply"><%=replyNum %></span>개의 댓글이 있습니다.</p>
		<div class="spaceForWriting">
			<div class="includingButton">
				<textarea class="textWriting" id="textArea" rows="3" cols="40" placeholder="로그인 후 댓글을 남길 수 있습니다."></textarea>
				<button class="insertButton" id="insertReply" onclick="replyInsert()">등록</button>
			</div>
		</div><!--     id="writerEmail"-->
		<div class="replyRight" id="replyAjax"></div>
		<%for(int i=0;i<replyList.size();i++){
			ReplyBean replyBean =(ReplyBean)replyList.get(i);
			replyTitle = replyBean.getPROJECT_TITLE();
		%>
		<div class="showReplyWhole">
			<div class="replyBody" id="replyAjax">
				<div class="replyInfo" id="replyInfoA">
					<span class="replyWriter" id="writerEmail"><%=replyBean.getUSER_EMAIL() %></span>
					<span class="replyTime" id="writingTime"><%=replyBean.getREPLY_DATE() %></span>
				</div>
				<div class="replyContent" id="replyText">
					<%=replyBean.getREPLY_TEXT() %>
				</div>
			</div>
		</div>
		<%} %>
	</div>
<%-- <script type="text/javascript">
	function replyInsert(){
	var reply = "pTitle"+"="+"<%=replyTitle%>";
	$.post('replyAdd.do', reply, function(data){
		$('#replyInfoA').html(data);
	});
} --%>
<script type="text/javascript">
	function replyInsert(){
	var reply="pTitle"+"=";
<%-- 	var reply="pTitle"+"="+<%=replyTitle%>+"&textArea="+$('#textArea').val(); --%>
	alert(reply);
	<%-- var reply = "pTitle"+"="+<%=replyTitle%>+"&textArea="+$('#textArea');
	$.post('replyAdd.do', reply, function(data){
		$('#replyInfoA').html(data);
	}); --%>
	$.post('replyAdd.do',reply,function(data){
		$('#replyInfoA').html(data);
	});
}
<%-- 	function clickIntro(){
		var content = "proectNum"+"="+"<%=pBean.getPROJECT_NUM()%>";
		$.ajax({
			url:"project_Introduction.do",
			type: "POST",
			data: content,
			dataType:"html",
			success: function(response){
				alert(response);
				var content = response;
				return $('#boardContextShown').html(content);
			},
			error: function(request, status, error) {
				if(request.status != '0') {
					alert("code: " + request.status + "\r\nmessage :"
							+ request.responseText + "\r\nerror:" + error);
				}
			}
		});
	}  --%>
</script>
</body>
</html>