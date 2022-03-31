<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Header Section Begin -->
<header class="header">
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
					<li class="active"><a href="${pageContext.request.contextPath}/">홈</a></li>
					<li><a href="${pageContext.request.contextPath}/listing">제품리스트</a></li>
					<li><a href="${pageContext.request.contextPath}/review">리뷰</a></li>
					<li><a href="#">공지</a>
						<ul class="dropdown">
							<li><a href="./about.html">공지사항</a></li>
							<li><a href="./listing-details.html">이벤트</a></li>
						</ul></li>

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
							<a href="${pageContext.request.contextPath}/admin/info" class="login-btn">
							<i class="fa fa-user"></i></a>
						</c:when>
						<c:otherwise>
							<a href="#" class="login-btn"><i class="fa fa-user"></i></a>
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