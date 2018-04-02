<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 추가 page</title>
<link rel="stylesheet" type="text/css" href="./resources/css/project/project_add.css" />
</head>
<body>
<!--GNB 영역 --> 
<jsp:include page="/resources/include/gnb.jsp" flush="false" />

<form name="projectForm" action="ProjectAddAction.do" method="post" 
		enctype="multipart/form-data">

	<table>
	<colgroup>
		<col width="30%">
		<col width="70%">
	</colgroup>
		<tr>
			<td>프로젝트 이미지</td>
			<td><input type="file" id="p_file" name="p_file" size="45"></td>		
		</tr>
		<tr>
			<td>프로젝트 이름(0/50)</td>
			<td><input type="text" id="p_title" name="p_title" placeholder="프로젝트 제목 입력" size="45"/></td>		
		</tr>
		<tr>
			<td>팀 이름</td>
			<td><input type="text" id="p_team" name="p_team" placeholder="팀 이름 입력" size="45"/></td>		
		</tr>
		<tr>
			<td>간단 설명</td>
			<td><input type="text" id="p_brief" name="p_brief" placeholder="프로젝트 간단 설명 입력" size="45"/></td>		
		</tr>
		<tr>
			<td>상세 설명</td>
			<td>
				<textarea rows="5" cols="45" id="p_content" name="p_content" placeholder="프로젝트 상세 설명 입력" ></textarea>
			</td>		
		</tr>
		<tr>
			<td>총 프로젝트 기간</td>
			<td><input type="text" id="p_dday" name="p_dday" size="4"/> 일</td>		
		</tr>
		<tr>
			<td>총 목표 금액</td>
			<td>￦ <input type="text" id="p_money" name="p_money" size="10" /> 원</td>		
		</tr>
		<tr>
			<td id="last" colspan="2" align="center"><input type="submit"value="프로젝트 추가하기" /></td>
		</tr>
	</table>
</form>

<!--푸터 영역 -->
<jsp:include page="/resources/include/footer.jsp" flush="false" />

</body>
</html>