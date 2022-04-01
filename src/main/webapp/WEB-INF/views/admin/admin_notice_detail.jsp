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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/select2.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/select2-bootstrap.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath }/admin/images/favicon.png" />
  
  
</head>

<body>
  <div class="container-scroller">
   <!-- partial -->
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
<!--           <li class="nav-item">
            <a class="nav-link" href="pages/documentation/documentation.html">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title">채팅관리</span>
            </a>
          </li> 
          <li class="nav-item">
            <a class="nav-link" href="pages/documentation/documentation.html">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title">알림관리</span>
            </a>
          </li> 
          <li class="nav-item">
            <a class="nav-link" href="pages/documentation/documentation.html">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title">카트뉴스관리</span>
            </a>
          </li>  -->

        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel" >        
        <div class="content-wrapper" style="margin-top: 60px;">
          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h2>공지사항</h2>
                  <p class="card-description" style="font-size: 20px">
                   상세 페이지입니다.
                  </p>
                  <form class="forms-sample" method="post" enctype="multipart/form-data" >
                    <input type="hidden" name="memEmail" value="nolang@naver.com">
                     <input type="hidden" name="brdImg" value=" ">
                  <div class="form-group row" style="margin-bottom: 0;">
                      <label for="exampleInputUsername2" class="col-sm-2 col-form-label" style="font-size: 25px;"  >제목</label>
                      <div class="col-sm-10" >

                        <input type="text" readonly="readonly" class="form-control" style="width: 50%; display: inline; background-color: white;" name="brdTitle" id="exampleInputUsername2" value="${noticeDetail.brdTitle}" placeholder="제목을 입력해주세요.">
                 </div>
                    </div>
                    <div class="form-group row" style="margin-bottom: 0;">
                      <label for="exampleInputEmail2" class="col-sm-2 col-form-label" style="font-size: 25px;">작성자</label>
                      <div class="col-sm-10" style="padding-top: 15px;">
                        <input type="text" class="form-control" style="width: 300px; background-color: white;" value="관리자" readonly="readonly">
                    </div>
                    </div>
                      <br>
                    
                    <div class="form-group row" style="margin-bottom: 0;">
                      <label for="exampleInputEmail2" class="col-sm-2 col-form-label" style="font-size: 25px;">파일 업로드</label>
                      <div class="col-sm-10" >
						<c:if test="${noticeDetail.brdImg==null }">등록된 사진이 없습니다.</c:if>
						<c:if test="${noticeDetail.brdImg!=null }">
	                      <img class="userImg" src="${pageContext.request.contextPath }/images/${noticeDetail.brdImg }" alt="${noticeDetail.brdImg }">
						</c:if>
                      </div>
                    </div>
                    <br>
                    <div class="form-group row" >
                      <label for="exampleInputUsername2" class="col-sm-2 col-form-label" style="font-size: 25px;">내용</label>
                      <div class="col-sm-10" >
                      <textarea class="form-control" style= "background-color: white;" readonly="readonly" id="exampleTextarea1" rows="25" name="brdContent">${noticeDetail.brdContent}</textarea>
                      </div>
                    </div>
                   	<div style="text-align: right;">
                    	<button type="button" class="btn btn-primary mr-2" onclick="location.href='<c:url value='/admin/noticeModify/'/>${noticeDetail.brdNum }'">수정</button>
                    	<button type="button" id="delete" class="btn btn-danger">삭제</button>
                    	<button type="button" class="btn btn-success" onclick="location.href='<c:url value='/admin/notice'/>'">취소</button>
                  	</div>
                  </form>
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
  <script src="${pageContext.request.contextPath }/admin/js/typeahead.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/select2.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="${pageContext.request.contextPath }/admin/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/template.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/settings.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="${pageContext.request.contextPath }/admin/js/file-upload.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/typeahead.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/select2.js"></script>
  <!-- End custom js for this page-->
  <script type="text/javascript">
  	$(function(){
  		$('#delete').click(function(){
  			var result = confirm('정말로 삭제하시겠습니까?');
  			if(result) {
				 location.href = '<c:url value="/admin/deleteNotice/"/>${noticeDetail.brdNum}';
			 } else { 
  				
  			}
  		});
  	});
  </script>
</body>
</html>
