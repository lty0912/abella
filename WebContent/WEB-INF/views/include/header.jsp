<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div id="header">
	<a href="/abella/main"> <!-- 로고를 누르면 페이지 홈으로--> <img src="/abella/assets/images/Logo3.png"/></a>
		<ul>	
			<c:choose>			
				<c:when test='${empty authUser }'>
					<li><a href="/abella/user?a=loginform">로그인</a><li>
					<li><a href="/abella/user?a=joinform">회원가입</a><li>
				</c:when>
			
				<c:otherwise>				
					<li><a href="/abella/user?a=modifyform">회원정보수정</a><li>
					<li><a href="/abella/user?a=logout">로그아웃</a><li>
					<li>${sessionScope.authUser.name }님 안녕하세요 ^^;</li>
				</c:otherwise>
			</c:choose>
			
		</ul>		
	    <ul>
	        <li><a href="../menu/Info.jsp">샵안내</a></li>
	        <li><a href="" >공지사항</a></li>
			<li><a href="" >이벤트</a></li>
			<li><a href="../menu/ColorMatching.jsp">컬러매치</a></li>
	        <li><a href="" >갤러리</a></li>
	        <li><a href="" >문 의</a></li>
	        <li><a href="../board/BoardList.jsp">후 기</a></li>
	        <li><a href="../menu/Schedule.jsp?SelectedDay=">예 약</a></li>
	        <li><a href="" >히스토리</a></li>
	    </ul>	
</div>