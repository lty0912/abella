<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- SNS 공유에 필요한 메타 데이터 -->
<meta property="og:title" content="당신의 nail을 디자인하라. 아벨라 뷰티하우스" />
<meta property="og:url" content="http://blog.naver.com/abellabeautyhouse" />
<meta property="og:description" content="당신의 nail을 디자인하라. 아벨라 뷰티하우스" />
<meta property="og:image" content="http://postfiles13.naver.net/20160505_220/abellabeautyhouse_14624540431793bPv1_JPEG/IMG_20160505_4_edit.jpg?type=w2" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="/abella/assets/js/jquery/jquery-1.9.0.js"></script>
<script type="text/javascript" src="/abella/assets/js/sns.js"></script>
<script type="text/javascript" src="/abella/assets/js/jquery.slideViewerPro.1.5.js"></script>
<script type="text/javascript">
	$(window).bind("load", function() {
	    $("#basic").slideViewerPro({
	    	thumbs: 4, 
	        autoslide: true, 
	        asTimer: 3500, 
	        /* typo: true, */
	        galBorderWidth: 0,
	        thumbsBorderOpacity: 0, 
	        buttonsTextColor: "#707070",
	        buttonsWidth: 40,
	        thumbsActiveBorderOpacity: 0.8,
	        thumbsActiveBorderColor: "pink",
	        shuffle: true
	    });
	});
</script>

<link href="/abella/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/abella/assets/css/main_gallery.css" rel="stylesheet" type="text/css">

<title>당신의 nail을 디자인하라. 아벨라 뷰티하우스</title>
</head>
<body>
	<div id="container">
		<c:import url='/WEB-INF/views/include/header.jsp'/>
		<div id="wrapper">
			<div id="content">
				<div id="slider">
					<figure>
						<img src="/abella/assets/images/ad1.png" alt="">
						<img src="/abella/assets/images/ad2.png" alt="">
						<img src="/abella/assets/images/ad3.png" alt="">
						<img src="/abella/assets/images/ad4.png" alt="">
						<img src="/abella/assets/images/ad5.png" alt="">
					</figure>
				</div>					
				
				<%-- <div class="main_board">
					<div id="notice">
						공지사항	
						<a href=""><img src="/abella/assets/images/btn_more.gif"></a>
						<ul>
							<li><a href="">글1</a></li>
							<li><a href="">글2</a></li>
							<li><a href="">글3</a></li>
							<li><a href="">글4</a></li>
							<li><a href="">글5</a></li>
						</ul>
					</div>
					
					<div id="post">
						후기
						<a href=""><img src="/abella/assets/images/btn_more.gif"></a>
						<ul>
							<li><a href="">글1</a></li>
							<li><a href="">글2</a></li>
							<li><a href="">글3</a></li>
							<li><a href="">글4</a></li>
							<li><a href="">글5</a></li>
						</ul>
					</div>
				</div> --%>
				
				<div class="main_content1">
					<div id="main_about">
						<a href=""><img alt="" src="/abella/assets/images/main_about.png"></a>
					</div>
					
					<div id="main_colormatch">
						<a href=""><img alt="" src="/abella/assets/images/main_colormatch.png"></a>
					</div>
				</div>
				
				<div id="main_content2">
					<div id="mgallery_area">
						<div id="basic" class="svwp">
							<ul>
								<li><img src="/abella/assets/images/m_gallery1.png"></li>
								<li><img src="/abella/assets/images/m_gallery2.png"></li>
								<li><img src="/abella/assets/images/m_gallery3.png"></li>
								<li><img src="/abella/assets/images/m_gallery4.png"></li>
								<li><img src="/abella/assets/images/m_gallery5.png"></li>
								<li><img src="/abella/assets/images/m_gallery6.png"></li>
								<li><img src="/abella/assets/images/m_gallery7.png"></li>
								<li><img src="/abella/assets/images/m_gallery8.png"></li>  
								<li><img src="/abella/assets/images/m_gallery9.png"></li>
								<li><img src="/abella/assets/images/m_gallery10.png"></li>
								<li><img src="/abella/assets/images/m_gallery11.png"></li>
								<li><img src="/abella/assets/images/m_gallery12.png"></li>  
							</ul>
						</div>
						<div id="link_gallery">
							<a href=""><img src="/abella/assets/images/link_gallery.png"></a>
						</div>
					</div>
				</div>
				
				<%-- 
				<p id=gallery> 갤러리 </p>	
				
				<div class="sample">
					<img src="/abella/assets/images/gallery1.png" />
				</div>
				
				<div class="sample">
					<img src="/abella/assets/images/gallery2.png" />
				</div>
				
				<div class="sample">
					<img src="/abella/assets/images/gallery3.png" />
				</div>
				
				<div class="sample">
					<img src="/abella/assets/images/gallery4.png" />
				</div>
				 --%>
				
			</div>
		</div>	
		<c:import url='/WEB-INF/views/include/footer.jsp'/>
	</div>


</body>
</html>