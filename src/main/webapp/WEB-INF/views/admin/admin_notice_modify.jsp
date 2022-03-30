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
      <nav class="sidebar sidebar-offcanvas" style="margin-top: 80px;"  id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.html">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="icon-layout menu-icon"></i>
              <span class="menu-title">UI Elements</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/dropdowns.html">Dropdowns</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
              <i class="icon-columns menu-icon"></i>
              <span class="menu-title">Form elements</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="form-elements">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="pages/forms/basic_elements.html">Basic Elements</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
              <i class="icon-bar-graph menu-icon"></i>
              <span class="menu-title">Charts</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="charts">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/charts/chartjs.html">ChartJs</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
              <i class="icon-grid-2 menu-icon"></i>
              <span class="menu-title">Tables</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="tables">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/tables/basic-table.html">Basic table</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
              <i class="icon-contract menu-icon"></i>
              <span class="menu-title">Icons</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="icons">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/icons/mdi.html">Mdi icons</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">User Pages</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
              <i class="icon-ban menu-icon"></i>
              <span class="menu-title">Error pages</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="error">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.html"> 404 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.html"> 500 </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/documentation/documentation.html">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title">Documentation</span>
            </a>
          </li>
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
                    수정 페이지입니다.
                  </p>
                  <form class="forms-sample" method="post" enctype="multipart/form-data" >
                    <input type="hidden" name="brdNum" value="${noticeModify.brdNum}">
	                   <div class="form-group row" style="margin-bottom: 0;">
                      <label for="exampleInputUsername2" class="col-sm-2 col-form-label">제목</label>
                      <div class="col-sm-10" >
                        <input type="text" class="form-control" style="width: 50%; display: inline;" name="brdTitle" id="exampleInputUsername2" value="${noticeModify.brdTitle}" placeholder="제목을 입력해주세요.">
                      </div>
                    </div>
                    <div class="form-group row" style="margin-bottom: 0;">
                      <label for="exampleInputEmail2" class="col-sm-2 col-form-label">작성자</label>
                      <div class="col-sm-10" style="padding-top: 15px;">
                        <input type="text" class="form-control" style="width: 300px;" value="관리자" readonly="readonly">
                    </div>
                    </div>
                    <div class="form-group row" style="margin-bottom: 0;">
                      <label for="exampleInputEmail2" class="col-sm-2 col-form-label">게시글 상태</label>
                      <div class="col-sm-10" style="padding-top: 15px;">
                     	<select name="brdStatus">
							<option value=1 <c:if test="${noticeModify.brdStatus==1}">selected="selected"</c:if>>공개글</option>
							<option value=2 <c:if test="${noticeModify.brdStatus==2}">selected="selected"</c:if>>비공개글</option>
						</select>
						
                 	   </div>
                    </div> 
                      <br>
                    <div class="form-group row" style="margin-bottom: 0;">
                      <label for="exampleInputEmail2" class="col-sm-2 col-form-label">파일 업로드</label>
                      <div class="col-sm-10" >
						<c:if test="${noticeModify.brdImg==null }">등록된 사진이 없습니다.</c:if>
						<c:if test="${noticeModify.brdImg!=null }">
	                      <img class="userImg" src="${pageContext.request.contextPath }/images/${noticeModify.brdImg }" alt="${noticeDetail.brdImg }">
						</c:if>						
						<input type="file" name="file" style="padding-top: 10px;">
                      </div>
                    </div>
                    <br>
                    <div class="form-group row" >
                      <label for="exampleInputUsername2" class="col-sm-2 col-form-label">내용</label>
                      <div class="col-sm-10" >
                      <textarea class="form-control" id="exampleTextarea1" rows="25" name="brdContent">${noticeModify.brdContent}</textarea>
                      </div>
                    </div>
                   	<div style="text-align: right;">
                    	<button type="submit" class="btn btn-primary mr-2">저장</button>
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
</body>
</html>
