<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비번찾기page</title>
<style type="text/css">
* { font-weight:bold; margin:0 auto;}
#content { width:100%; height:250px; }
#frm {width:25%; margin-top:100px; text-align:center;}
p {font-size:20px; }
input[type="text"] { width:90%; height:30px; color:gray; margin-top:20px;}
input[type="submit"] { width:90%; height:35px; margin-top:20px; color:white; border:0px; border-radius: 2px; 
					background-color:#FE5993; font-size:17px;}
::-webkit-input-placeholder { text-align: center; font-size:15px;}
:-moz-placeholder { text-align: center; font-size:15px; }	/* Firefox 18- */
::-moz-placeholder { text-align: center; font-size:15px; }	/* Firefox 19+ */
:-ms-input-placeholder { text-align: center; font-size:15px; }
	
</style>
</head>
<body>
<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />

<div id="content">
<form action="MemberFindPw.do" method="post" id="frm">
	<p>가입하신 이메일 주소</p>
	<input type="text" id="u_email" name="email" placeholder="이메일 주소를 입력하세요." size="45"/><br>
	
	<input type="submit" id="makePwd" value="새 비밀번호 받기" /> 
</form>
</div>

<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />
</body>
</html>