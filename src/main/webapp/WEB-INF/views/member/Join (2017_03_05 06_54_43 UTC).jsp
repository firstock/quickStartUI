<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입page</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/member/join.js"></script>
<link rel="stylesheet" type="text/css" href="./resources/css/member/Join.css" >

</head>
<body>
<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />


<c:if test="${sessionScope.email == null || sessionScope.email == ''}">
	<form id="join" action="MemberJoin.do" method="post" onsubmit="return chkForm()"> 
		<table align="center">
			<tr>
				<td>
					이름<br><br>
					<input type="text" id="u_name" name="name" placeholder="사용하실 이름 입력" size="45"/>
				o
				</td>
			</tr>
			<tr>
				<td>
					로그인에 사용하실 이메일 주소<br><br>
					<input type="text" id="u_email" name="email" placeholder="이메일 주소 입력" size="35" />
					<input type="button" id="idChk" value="중복확인" onclick='chkId()'>
				</td>
			</tr>
			
			<tr>
				<td>
					사용하실 비밀번호<br><br>
					<input type="password" id="pwd" onblur="chkPwd()" placeholder="비밀번호 입력" size="45"/><br>
					<input type="password" id="pwd_chk" name="pwd" onblur="chkPwd()" placeholder="비밀번호 확인 입력" size="45"/><br>
					<div id="chkPwd">동일한 암호를 입력하세요.</div>
				</td>
			</tr>
			
			<tr><td><input type="submit" value="가입하기" id="submit"/></td></tr>
		</table>
	</form>
</c:if>
<c:if test="${ sessionScope.email != null && sessionScope.email != ''}">
	<% response.sendRedirect("main.do"); %>
</c:if>
<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />
</body>
</html>