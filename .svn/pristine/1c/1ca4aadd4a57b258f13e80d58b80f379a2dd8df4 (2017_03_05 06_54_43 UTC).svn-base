<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminLogin</title>
			<!--●●●●●●●●●●●●●●●● 이것도 고쳐야되고. member 아니고 admin쪽으로 -->
<link rel="stylesheet" type="text/css" href="./resources/css/member/Login.css">
</head>
<body>
    adminLogin.jsp
<!--Global Navigation Bar 영역 -->
<jsp:include page="/resources/include/gnb_admin.jsp" flush="false" />

<!-- <form action="MemberChk.do" method="post"> -->
	<table align="center">
		<tr>
			<td>
				<span id="left">아직안바꿈_admin ID</span><br><br>
				<input type="email" name="user_email" placeholder="이메일 주소 입력" size="45"/>
			</td>
		</tr>
		<tr>
			<td>
				<span id="left">아직안바꿈_admin PW</span><br><br>
				<input type="password" name="user_pw" placeholder="비밀번호 입력" size="45"/>
			</td>
		</tr>
		
		<tr>
			<td align="right">
<!-- ●●●●●●●●●얘도 고쳐야되고. 로그인하기 버튼 파랑파랑하게 고치고 싶다 -->
				<c:url var="findPw" value="/MemberFindPwView.do"></c:url>					
				<input type="button" value="비밀번호 찾기" onclick="location.href='${findPw}'">
			</td>
		</tr>
		
		<tr><td><input type="submit" value="로그인하기" id="submit"/></td></tr>
		
		<tr><td><hr></td></tr>
		
		<tr>
			<td>
				<span id="left">계정이 없으신가요?  </span>
<!-- ●●●●●●●●●얘도 고쳐야되고 -->
				<c:url var="join" value="/MemberJoinView.do"></c:url>					
				<input type="button" value="새 계정 만들기" onclick="location.href='${join}'">										
			</td>				
		</tr>
	</table>
<!-- </form> -->

<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />
</body>
</html>
