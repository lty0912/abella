<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/abella/assets/css/user.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/abella/assets/js/jquery/jquery-1.9.0.js"></script>
<script type="text/javascript" src="/abella/assets/js/join.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<c:import url='/WEB-INF/views/include/header.jsp'/>
		<div id="content">
			<div id="user">
				<form id="join-form" name="joinForm" method="post" action="/abella/user">
					<input type="hidden" name="a" value="join"/>
					<label class="block-label" for="name">이름</label>
					<input id="name" name="name" type="text" value="">
					
					<fieldset>
						<legend>성별</legend>
						<label>여</label> <input type="radio" name="gender" value="FEMALE" checked="checked">
						<label>남</label> <input type="radio" name="gender" value="MALE">
					</fieldset>

					<label class="block-label" for="id">ID</label>
					<input id="id" name="id" type="text" value="">
					<img id="image-checked" src="/abella/assets/images/check.png" style="display:none"/>
					<input type="button" id="btn-checkid" value="id 중복체크">
					
					<label class="block-label">패스워드</label>
					<input id="password" name="password" type="password" value="">
					
					<label class="block-label">패스워드 확인</label>
					<input id="password-confirm" name="password-confirm" type="password" value="">
					
					<label class="block-label">비밀번호 힌트 질문</label>
					<SELECT NAME="hint" SIZE=1>
						<OPTION VALUE="0" SELECTED>질문을 선택해주세요.
						<OPTION VALUE="school">출신 초등학교는?
						<OPTION VALUE="mother">어머니의 성함은?
						<OPTION VALUE="space">추억의 장소는?
					</SELECT>		
					
					<label class="block-label" for="answer">비밀번호 힌트 답</label>
					<input id="answer" name="answer" type="text" value="">
					
					<label class="block-label" for="phone">전화번호</label>
					<input id="phone" name="phone" type="text" value="" placeholder="- 떼고 숫자만 입력하세요.">
					
					<label class="block-label" for="birth">생일</label>
					<input id="birth" name="birth" type="text" value="" placeholder="형식 - 19920912">	
					
					<input id="ck" type="submit" value="가입하기" >
					
				</form>
			</div>
		</div>
		<c:import url='/WEB-INF/views/include/footer.jsp'/>		
	</div>

</body>
</html>