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
			<div id="user">
				<form id="login-form" name="loginform" method="post" action="/abella/user">
					<input type="hidden" name="a" value="login"/> 
					<label class="block-label" for="id">아이디</label>
					<input id="id" name="id" type="text" value="">
					<label class="block-label" >패스워드</label>
					<input name="password" type="password" value="">
					<c:if test='${param.r == "fail" }'>
						<p>
							로그인이 실패 했습니다.
						</p>
					</c:if>
					<input type="submit" value="로그인">
				</form>
			</div>
		</div>
		<c:import url='/WEB-INF/views/include/footer.jsp'/>	
	</div>

</body>
</html>