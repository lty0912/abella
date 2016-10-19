<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="kr.ac.sungkyul.abella.dao.UserDao"%>
<%@page import="kr.ac.sungkyul.abella.vo.UserVo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
	function returnUrl() {
		var loginFrm = $("#loginFrm");
		$("#url").val(location.href);
		loginFrm.submit();
	}
	
	function warning() {
		alert("로그인을 먼저 해주세요.");
	}
</script>
<c:if test="${session == null }">
<%
		Cookie[] cookies = request.getCookies();
		String cookie_key = "";
		String autoLogin = "";
		if(cookies != null) {
			UserDao dao = new UserDao();
			for (Cookie c : cookies) {
				cookie_key = c.getName();
				// 쿠키의 이름(키값)을 꺼내오는 메소드
				if(cookie_key.equals("autoLogin")) {
					autoLogin = c.getValue();
					// 쿠키의 value값을 꺼내오는 메소드
				}
			}
			if(!"".equals(autoLogin)){
				UserVo vo = dao.autoLogin(autoLogin);
				if (vo.getType_no() == 0) {
					session.setAttribute( "admin", vo );
				} else if (vo.getType_no() == 1) {
					session.setAttribute( "authUser", vo );
				} else if (vo.getType_no() == 2) {
					session.setAttribute( "staff", vo );
				}
			}
		}
%>
</c:if>

<div id="header">
	<div class="top_menu">
		<div class="top_area">
			<ul class="top_sns">
				<li><a href="javascript:share_facebook()" target="_blank"> 
					<img src="/abella/assets/images/sns_fb.png" alt="Facebook" class="btns"></a></li>
				<li><a href="javascript:share_tw()" target="_blank"> 
					<img src="/abella/assets/images/sns_twit.png" alt="Twitter" class="btns"></a></li>
				<li><a href="javascript:share_pstGoogle()" target="_blank"> 
					<img src="/abella/assets/images/sns_google.png" alt="Google Plus" class="btns"></a></li>
				<!-- 밴드 공유 버튼 -->
				<li><a href="javascript:share_band()"> <img src="/abella/assets/images/sns_band.png" class="btns"></a></li>
			</ul>
	
			<ul class="top_usermenu">
				<c:choose>
					<c:when test='${empty admin && empty authUser && empty staff }'>
						<li class="btns">
						<form id="loginFrm" action="/abella/user?a=loginform" method="post">
							<input type="hidden" name="a" value="loginform" >
							<c:if test="${empty sessionScope.url }">
								<input type="hidden" id="url" name="url" value="">
							</c:if>
							<a onclick="returnUrl();">Login</a>
						</form>
						</li>
						<li class="btns"><a href="/abella/user?a=joinform">Join</a></li>
					</c:when>
	
					<c:otherwise>
						<c:choose>
							<c:when test='${not empty admin }'>
								<li class="username btns">${admin.name }님</li>
							</c:when>
							<c:when test='${not empty authUser }'>
								<li class="username btns">${authUser.name }님</li>
							</c:when>
							<c:otherwise>
								<li class="username btns">${staff.name }님</li>
							</c:otherwise>
						</c:choose>
	
						<li class="btns"><a href="/abella/user?a=mypage">MyPage</a></li>
						<li class="btns"><a href="/abella/user?a=logout">Logout</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>

	<!-- <h1 id="logo">
		<a href="/abella/main"> 로고를 누르면 페이지 홈으로 <img src="/abella/assets/images/Logo3.png" /></a>
	</h1> -->

	<div class="menubar">
	
		<div class="menu_area">
	
			<h1 id="logo"><a href="/abella/main"> <!-- 로고를 누르면 페이지 홈으로--> 
				<img src="/abella/assets/images/Logo3.png" /></a>
			</h1>
			
			<ul>
				<li id="m01"><a href="/abella/info">ABOUT</a></li>
				<li id="m02"><a href="/abella/boardnotice?a=list">NOTICE</a></li>
				<li id="m03"><a href="/abella/cm">COLORMATCH</a></li>
				<li id="m04"><a href="/abella/gallery?a=list">GALLERY</a></li>
				<li id="m05"><a href="/abella/board?a=list">Q &nbsp; &nbsp; &amp; &nbsp; &nbsp; A</a></li>
				<li id="m06"><a href="/abella/review?a=list">REVIEW</a></li>
				<li id="m07"><a href="/abella/reserve?a=reservationForm">RESERVATION</a></li>
				<c:if test="${not empty admin || not empty authUser || not empty staff }">
					<li id="m08"><a href="/abella/history?a=list">HISTORY</a></li>
				</c:if>
				<c:if test="${empty admin && empty authUser && empty staff }">
					<li id="m08"><a href="#" onclick="warning();">HISTORY</a></li>
				</c:if>
			</ul>
		
		</div>
		
	</div>
</div>