function share_facebook() { // Facebook 공유하기
	window
			.open("http://www.facebook.com/sharer/sharer.php?u=http://blog.naver.com/abellabeautyhouse");
}

function share_tw() { // 트위터 공유하기
	var content = "당신의 nail을 디자인하라. 아벨라 뷰티하우스";
	var link = "http://blog.naver.com/abellabeautyhouse";
	var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";
	var wp = window.open(
			"http://twitter.com/share?url=" + encodeURIComponent(link)
					+ "&text=" + encodeURIComponent(content), 'twitter',
			popOption);
	if (wp) {
		wp.focus();
	}
}

function share_pstGoogle() { // 구글 플러스 공유하기
	var content = "당신의 nail을 디자인하라. 아벨라 뷰티하우스";
	var href = "https://plus.google.com/share?url=http://blog.naver.com/abellabeautyhouse&t="
			+ encodeURIComponent(content);
	var a = window.open(href, 'Google', 'width=800, height=500');
	if (a) {
		a.focus();
	}
}

function share_band() { // 밴드 공유하기
	var msg = encodeURIComponent('당신의 nail을 디자인하라. 아벨라 뷰티하우스.');
	var sUrl = encodeURIComponent('http://blog.naver.com/abellabeautyhouse');
	var shareUrl = "http://www.band.us/plugin/share?body=" + msg + "&route="
			+ sUrl;
	window.open(shareUrl, "share_band", "width=400, height=500, resizable=yes");
}