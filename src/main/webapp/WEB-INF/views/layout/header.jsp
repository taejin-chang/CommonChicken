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
							<a href="${pageContext.request.contextPath}/admin/order" class="login-btn">
							<i class="fa fa-user"></i></a>
						</c:otherwise>

					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<div id="mobile-menu-wrap"></div>
</div>
</header>
<!-- Header Section End -->