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
<link href="/abella/assets/css/user.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<c:import url='/WEB-INF/views/include/header.jsp'/>
		<div id="content">
			<div class="page-sub">LOGIN</div>
			<div id="user">
				<div id="login">
					<form id="login-form" name="loginform" method="post" action="/abella/user">
						<input type="hidden" name="a" value="login"/> 
						<label class="login-label">
							<span>ID</span>
							<c:if test="${cookie.saveId != null }">
								<input id="id" name="id" type="text" value="${cookie.saveId.value }">
							</c:if>
							<c:if test="${cookie.saveId == null }">
								<input id="id" name="id" type="text" value="">
							</c:if>
							
						</label>
						
						<label class="login-label">
							<span>PASSWORD</span>
							<input id="password" name="password" type="password" value="">
						</label>
						<div id="div_ckbox">
						<c:if test="${cookie.saveId != null }">
							<span class="id_ckbox"><input type="checkbox" id="saveId" name="saveId" checked="checked" ><label for="saveId" >아이디저장</label></span>
						</c:if>
						<c:if test="${cookie.saveId == null }">
							<span class="id_ckbox"> <input type="checkbox" id="saveId" name="saveId" ><label for="saveId">아이디저장</label></span>
						</c:if>
						<span> <input type="checkbox" id="autoLogin" name="autoLogin"><label for="autoLogin">자동로그인</label></span>
						</div>
						<input id="btn_login" type="image" src="/abella/assets/images/btn_login.png">

						<c:if test='${param.r == "fail" }'>
							<span id="login_fail">아이디 또는 비밀번호 오류입니다</span>
						</c:if>
						<span id="find"><a href="/abella/user?a=findform">아이디/비밀번호 찾기</a></span>
					</form>
				</div> 
				
				<div id="gojoin">
					<img id="join_comment" src="/abella/assets/images/join_comment.png">
					<a href="/abella/user?a=joinform"><img src="/abella/assets/images/btn_join.png"></a>
				</div>
			</div>
		</div>
		<c:import url='/WEB-INF/views/include/footer.jsp'/>	
	</div>

</body>
</html>