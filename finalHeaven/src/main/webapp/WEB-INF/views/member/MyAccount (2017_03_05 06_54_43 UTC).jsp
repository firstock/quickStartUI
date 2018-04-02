<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 계좌</title>
<link rel="stylesheet" type="text/css" href="./resources/css/member/MyAccount.css" />
</head>
<body>
<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />
	<div id="top">	
		<span>나의 계좌 관리</span>
	</div>
	<div id="container">
		<form action="MyAccountUpdate.do" method="post">
		<table>
			<tr>
				<th align="right">현재 내 계좌 잔액:</th>
				<td align="left"><span>${ money }</span></td>
			</tr>
			<tr>
				<th align="right">충전금액:</th>
				<td align="left"><input type="text" name="addMoney" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="충전하기" /></td>
			</tr>
		</table>			
		</form>
	</div>
<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />
</body>
</html>