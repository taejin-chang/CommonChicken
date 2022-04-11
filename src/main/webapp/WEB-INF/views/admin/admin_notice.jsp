<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Skydash Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/feather.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath }/admin/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="ti-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close ti-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
	</div>
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      
       <nav class="sidebar sidebar-offcanvas" style="margin-top: 80px;" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/admin/main">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">DashBoard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/admin/member">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">회원관리</span>
            </a>
          </li> 
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/admin/store">
              <i class="icon-mail menu-icon"></i>
              <span class="menu-title">점포관리</span>
            </a>
          </li> 
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/admin/order">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title">주문관리</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="icon-layout menu-icon"></i>
              <span class="menu-title">커뮤니티</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/notice">공지사항</a></li>
                <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/common">커먼게시판 관리</a></li>
                <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/review">리뷰관리</a></li>
<!--                 <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">이벤트관리</a></li>
 -->              </ul>
            </div>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper" style="margin-top: 60px;">
        <div style="text-align: right;">
        	<button type="button" class="btn btn-primary" onclick="location.href='<c:url value='/admin/notice_writing'/>'">
        		<strong>글쓰기</strong>
       		</button>	
        </div>
        <br>
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title">공지사항 관리</h1>
                  <div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr style="text-align: center; font-size: 30px;">
								<th width="5%">번호</th>
								<th>제목</th>
								<th width="15%">작성자</th>
								<th width="15%">작성일</th>
								<th width="10%">게시글상태</th>
								<th width="5%">조회수</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="noticeList" items="${noticeList}">
							<tr>
								<td class="py-1" style="text-align: center;">${noticeList.brdNum }</td>
								<td style="text-align: center;">
								<a href="<c:url value='/admin/noticeDetail/'/>${noticeList.brdNum }">
								${noticeList.brdTitle }</a></td>
								<td style="text-align: center;">관리자</td>
								<td style="text-align: center;">${noticeList.brdDate}</td>
								<td style="text-align: center;">
									<c:if test="${noticeList.brdStatus==1}">게시중</c:if>
									<c:if test="${noticeList.brdStatus==2}">비공개</c:if>
								</td>
								<td style="text-align: center;">${noticeList.brdViews}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="template-demo" style="text-align: center;">
						<c:choose>
							<c:when test="${pager.startPage } gt ${pager.blockSize }">
								<a href="<c:url value='/admin/notice'/>">[처음]</a>
								<a
									href="<c:url value='/admin/notice'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
							</c:when>
							<c:otherwise>
										[처음] [이전]
									</c:otherwise>
						</c:choose>

						<c:forEach var="i" begin="${pager.startPage }"
							end="${pager.endPage }">
							<a
								href="<c:url value='/admin/notice'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
						</c:forEach>

						<c:choose>
							<c:when test="${pager.startPage }>${pager.blockSize }">
								<a
									href="<c:url value='/admin/notice'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
								<a
									href="<c:url value='/admin/notice'/>?pagenum=${pager.endPage}">[마지막]</a>
							</c:when>
							<c:otherwise>
										[다음] [마지막]
									</c:otherwise>
						</c:choose>
					</div>  
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="${pageContext.request.contextPath }/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="${pageContext.request.contextPath }/admin/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/template.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/settings.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>

</html>

