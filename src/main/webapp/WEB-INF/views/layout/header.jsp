<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Header Section Begin -->






<header class="header" style="border-bottom: 3px solid orange">
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-3 col-md-3">
			<div class="header__logo">
				<a href="${pageContext.request.contextPath}/"><img
					src="${pageContext.request.contextPath }/img/logo2.png" alt=""></a>
			</div>
		</div>
		<div class="col-lg-9 col-md-9">
			<div class="header__nav">
				<nav class="header__menu mobile-menu">
				<ul>
					<li><a href="${pageContext.request.contextPath}/">홈</a></li>
					<li><a href="${pageContext.request.contextPath}/listing">점포리스트</a></li>
					<li><a href="${pageContext.request.contextPath}/review">커뮤니티</a>
						<ul class="dropdown" style="left:-10px; width:102px; background-color:#FFFFFF; border:2px solid orange; text-align: center">
							<li><a href="${pageContext.request.contextPath}/review"><font style="color: #000000; font-size:17px; font-weight: bold;">리뷰</font></a></li>
							<li><a href="${pageContext.request.contextPath}/common_boardlist"><font style="color: #000000; font-size:17px; font-weight: bold;">커먼모집</font></a></li>
							<li><a href="${pageContext.request.contextPath}/notice"><font style="color: #000000; font-size:17px; font-weight: bold;">공지사항</font></a></li>
						</ul></li>
					<c:if test="${not empty(loginMember) }">
					<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
					</c:if>
				
				</ul>
				</nav>
				<div class="header__menu__right">
					<c:choose>
						<c:when test="${empty(loginMember) }">
							<a href="${pageContext.request.contextPath}/login"
								class="login-btn"><i class="fa fa-user"></i></a>
						</c:when>

						<c:when test="${loginMember.memStatus eq 1 }">
							<a href="${pageContext.request.contextPath}/user/mypage"
								class="login-btn"><i class="fa fa-user"></i></a>
						</c:when>
						<c:when test="${loginMember.memStatus eq 2}">
							<a href="${pageContext.request.contextPath}/store/info" class="login-btn">
							<i class="fa fa-user"></i></a>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/admin/main" class="login-btn">
							<i class="fa fa-user"></i></a>
						</c:otherwise>

					</c:choose>
				</div>
			</div>
			
		</div>
	</div>
	<div id="mobile-menu-wrap"></div>
</div>

<body>

        <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script type="text/javascript">
/*

// 전역변수 설정
var socket  = null;
$(document).ready(function(){
    // 웹소켓 연결
    var sock = new SockJS("<c:url value="/echo-ws"/>");
    socket = sock;

    // 데이터를 전달 받았을때 
    sock.onmessage = onMessage; // toast 생성
});

// toast생성 및 추가
function onMessage(evt){
    var data = evt.data;
    // toast
    let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true'>";
    toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='mr-auto'>알림</strong>";
    toast += "<small class='text-muted'>just now</small><button type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
    toast += "<span aria-hidden='true'>&times;</span></button>";
    toast += "</div> <div class='toast-body'>" + data + "</div></div>";
    $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가
    $(".toast").toast({"animation": true, "autohide": false});
    $('.toast').toast('show');
};	
*/

</script>
</body>

</header>
<!-- sockJS -->

<!-- Header Section End -->