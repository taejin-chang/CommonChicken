<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Directing | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/flaticon.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/barfiller.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css"
	type="text/css">
</head>

<body class="ov-hid">
	<div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->

      <div id="right-sidebar" class="settings-panel">
        <i class="settings-close ti-close"></i>
        <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
          </li>
        </ul>
    </div>
    </div>


	<!-- Filter Begin -->
	<div class="filter nice-scroll">
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 커먼모집
			</h5>
		</div>
		<br>
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 리뷰
			</h5>
		</div>
		<br>
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 공지사항
			</h5>
		</div>
		<br>
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 이벤트
			</h5>
		</div>
		<div class="filter__search">
			<input type="text">
		</div>
	</div>
	<!-- Filter End -->
	<div class=" grid-margin stretch-card" style="margin: 150px 1% 1% 1%;">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">공지사항</h4>
				<br>
				<div class="table-responsive">
					<table class="table" style="text-align: center;">
						<thead>
							<tr>
								<th style="width: 10%;">글번호</th>
								<th>제목</th>
								<th style="width: 20%;">날짜</th>
								<th style="width: 10%;">작성자</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="noticePagerList" items="${noticePagerList}">
								<tr>
									<td>${noticePagerList.brdNum}</td>
									<td>
										<a href="<c:url value='/community/noticeDetail/'/>${noticePagerList.brdNum }">
										${noticePagerList.brdTitle}
										</a>
									</td>
									<td>${fn:substring(noticePagerList.brdDate,5,10)}</td>
									<td>운영자</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="template-demo" style="text-align: center;">
						<c:choose>
							<c:when test="${pager.startPage } gt ${pager.blockSize }">
								<a href="<c:url value='/notice'/>">[처음]</a>
								<a
									href="<c:url value='/notice'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
							</c:when>
							<c:otherwise>
										[처음] [이전]
									</c:otherwise>
						</c:choose>

						<c:forEach var="i" begin="${pager.startPage }"
							end="${pager.endPage }">
							<a
								href="<c:url value='/notice'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
						</c:forEach>

						<c:choose>
							<c:when test="${pager.startPage }>${pager.blockSize }">
								<a
									href="<c:url value='/notice'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
								<a
									href="<c:url value='/notice'/>?pagenum=${pager.endPage}">[마지막]</a>
							</c:when>
							<c:otherwise>
										[다음] [마지막]
									</c:otherwise>
						</c:choose>
					</div>
					<!-- 페이징영역 -->
					<!--  
                    <div class="template-demo" style="text-align: center;">
                     <button type="button" class="btn btn-primary"><</button>                                        
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-primary">1</button>
                          <button type="button" class="btn btn-primary">2</button>
                          <button type="button" class="btn btn-primary">3</button>
                        </div>
                        <button type="button" class="btn btn-primary">></button>                        
                      </div>
                      -->
				</div>
			</div>
		</div>
	</div>

	<!-- Listing Section End -->


	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.nicescroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.barfiller.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
</body>

</html>