<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/abella/assets/js/jquery/jquery-1.9.0.js"></script>
<script type="text/javascript" src="/abella/assets/js/modify.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<c:import url='/WEB-INF/views/include/header.jsp'/>
		<div id="content">
			<div id="user">
				<form id="modify-form" name="modifyForm" method="post" action="/abella/user">
					<input type="hidden" name="a" value="modify"/>
					<label class="block-label" for="name">이름</label>
					<input id="name" name="name" type="text" value=${user.name } readonly="readonly">					

					<label class="block-label" for="id">ID</label>
					<input id="id" name="id" type="text" value=${user.id } readonly="readonly">
					
					<label class="block-label">패스워드</label>
					<input id="password" name="password" type="password" value="">
					
					<label class="block-label">패스워드 확인</label>
					<input id="password-confirm" name="password-confirm" type="password" value="">		
					
					<label class="block-label" for="phone">전화번호</label>
					<input id="phone" name="phone" type="text" value=${user.phone } >
					
					<label class="block-label" for="birth">생일</label>
					<input id="birth" name="birth" type="text" value=${user.birth } >
					
					<input type="submit" value="수정하기">
				</form>
			</div>
		</div>
		<c:import url='/WEB-INF/views/include/footer.jsp'/>
	</div>

</body>
</html>