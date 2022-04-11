<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
   <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/table_extend.css">
  
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->

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
      <div class="main-panel">
        <div class="content-wrapper" style="margin-top: 80px;">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title">리뷰 관리</h1>
                  <div class="table-responsive">
					<table class="table table-hover table-expandable table-striped">
						<thead>
							<tr>
								<th style="text-align: center;" width="10%">번호</th>
								<th style="text-align: center;" width="10%">이미지</th>
								<th style="text-align: center;" width="15%">상품명</th>
								<th style="text-align: center;">리뷰</th>
								<th style="text-align: center;" width="15%">별점</th>
								<th style="text-align: center;" width="15%">작성일</th>
<!-- 								<th style="text-align: center;"width="15%">게시글상태</th>
 -->							</tr>
						</thead>
						<tbody>
							<c:forEach var="reviewPagerList" items="${reviewList}">
<!-- 							<tr>
								<td class="py-1" style="text-align: center;">1</td>
								<td style="text-align: center;">맛있어요</td>
								<td style="text-align: center;">★★★★★</td>
								<td style="text-align: center;">5</td>
								<td style="text-align: center;">2022년 10월 20일</td>
								<td style="text-align: center;">게시중</td>
							</tr> -->
							<tr>
								<td style="text-align: center;">${reviewPagerList.revNum}</td>
								<td style="text-align: center;"><img src="${pageContext.request.contextPath }/review/${reviewPagerList.revUpload}"></td>
								<td style="text-align: center;">${reviewPagerList.prdName}</td>
								<td style="text-align: center; width:40%">${reviewPagerList.revContent}</td>
								<td style="text-align: center;">
									<c:if test="${reviewPagerList.revRated==1}">★☆☆☆☆</c:if>
									<c:if test="${reviewPagerList.revRated==2}">★★☆☆☆</c:if>
									<c:if test="${reviewPagerList.revRated==3}">★★★☆☆</c:if>
									<c:if test="${reviewPagerList.revRated==4}">★★★★☆</c:if>
									<c:if test="${reviewPagerList.revRated==5}">★★★★★</c:if>
								</td>
								<td style="text-align: center;">${fn:substring(reviewPagerList.revDate,5,10)}</td>
<!-- 								<td style="text-align: center;">배송중</td>
 -->							</tr>
								<tr>
								<c:forEach var="reply" items="${reply}">
									<c:if test="${reviewPagerList.revNum == reply.revNum}">
									<td colspan="7"><h4 style="display: inline; margin-left: 3%;">
										<img src="${pageContext.request.contextPath }/images/icon-reply.png">
										<span style="background: olive; color: white;">답글</span></h4> 
										<span style="margin-left: 2%;">${storeInfo.stoName }</span>
										<span style="margin-left: 2%;">${reply.rplDate }</span>
										<div style="margin:2% 3%;"><p>${reply.rplContent }</p></div>
<!-- 										<button type="button" id="btn" class="btn btn-primary btn-sm">답글</button>	
										<hr>
										<div id="replay" style="display:none">
											<input type="text" style="width:80%" >							
											<textarea rows="5" cols="" style="width:80%"></textarea>
											<button type="button" id="saveReply" class="btn btn-primary btn-sm">답글 저장</button>	
										</div> -->
									</td>	
									</c:if>
									<c:if test="${reviewPagerList.revNum != reply.revNum}">
									<td colspan="7"><div id="noneReply" style="text-align: center;">등록된 댓글이 없습니다.!</div>
									</td>
									</c:if>
									</c:forEach>
								</tr>
								</c:forEach>
						</tbody>
					</table>
							<div style="text-align: center;">
								<c:choose>
									<c:when test="${pager.startPage } gt ${pager.blockSize }">
										<a href="<c:url value='/admin/review'/>">[처음]</a>
										<a href="<c:url value='/admin/review'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
									</c:when>
									<c:otherwise>
										[처음] [이전]
									</c:otherwise>
								</c:choose>
								
								<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }">
									<a href="<c:url value='/admin/review'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
								</c:forEach>
								
								<c:choose>
									<c:when test="${pager.startPage }>${pager.blockSize }">
										<a href="<c:url value='/admin/review'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
										<a href="<c:url value='/admin/review'/>?pagenum=${pager.endPage}">[마지막]</a>
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
	<script src="${pageContext.request.contextPath }/admin/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
<!--   <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script> -->
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
  
    <script type="text/javascript">

  (function ($) {
	    $(function () {
	        $('.table-expandable').each(function () {
	            var table = $(this);
	            table.children('thead').children('tr').append('<th></th>');
	            table.children('tbody').children('tr').filter(':odd').hide();
	            table.children('tbody').children('tr').filter(':even').click(function () {
	                var element = $(this);
	                element.next('tr').toggle('fast');
	                element.find(".table-expandable-arrow").toggleClass("up");
	            });
	            table.children('tbody').children('tr').filter(':even').each(function () {
	                var element = $(this);
	                element.append('<td><div class="table-expandable-arrow"></div></td>');
	            });
	        });
	    });
	})(jQuery); 
 
  $(document).ready(function () {
      $("#btn").click(function () {
          $("#replay").toggle();
          $("#btn").hide();
      });
  });
  </script>
</body>

</html>