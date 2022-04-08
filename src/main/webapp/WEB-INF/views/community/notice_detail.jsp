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

<body>
  <div class="container-scroller">
   <!-- partial -->
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
      <!-- partial -->
      <div class="main-panel" >        
        <div class="content-wrapper" style="margin-top: 60px;padding:48px 1px 2px 270px;">
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
	                      <img class="userImg" src="${pageContext.request.contextPath }/images/${noticeDetail.brdImg }" >
						</c:if>
                      </div>
                    </div>
                    <br>
                    <div class="form-group row" >
                      <label for="exampleInputUsername2" class="col-sm-2 col-form-label" style="font-size: 25px;">내용</label>
                      <div class="col-sm-10" >
                      <textarea class="form-control" style= "background-color: white;" readonly="readonly" id="exampleTextarea1" rows="10" name="brdContent">${noticeDetail.brdContent}</textarea>
                      </div>
                    </div>
                   	<div style="text-align: right;">
                    	<button type="button" class="btn btn-primary mr-2" onclick="location.href='<c:url value='/notice'/>'">뒤로가기</button>
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
