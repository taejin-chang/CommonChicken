<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Skydash Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="css/feather.css">
  <link rel="stylesheet" href="css/themify-icons.css">
  <link rel="stylesheet" href="css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="stylesheet" href="css/table_extend.css">
  
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper">
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
      <div class="main-panel">
        <div class="content-wrapper" style="margin-top: 60px;">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title" style="font-size: 30px;">회원관리</h1>
	                <div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
<!-- 								<th>번호</th>
 -->							<th style="text-align: center;">이름</th>
								<th style="text-align: center;">이메일</th>
								<th style="text-align: center;">전화번호</th>
								<th style="text-align: center;">가입일</th>
								<th style="text-align: center;">회원상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="memberList" items="${memberList }">
						<form method="post" >
							<input type="hidden" name="memEmail" value="${memberList.memName }">
							<tr>
<%-- 								<td class="py-1">${memberList. }</td>
 --%>							<td><img src="images/faces/face1.jpg" alt="image" />${memberList.memName }</td>
								<td style="text-align: center;">${memberList.memEmail }</td>
								<td style="text-align: center;">${memberList.memPhone}</td>
								<td style="text-align: center;">${memberList.memJoinDate}</td>
								<td style="text-align: center;">
								<select name="memStatus">
									<option value="">상태 선택</option>
<%-- 									<option value=0 <c:if test="${memberList.memStatus==0 }"> selected="selected"</c:if>>탈퇴회원</option>
 --%>								<option value=1 <c:if test="${memberList.memStatus==1 }"> selected="selected"</c:if>>일반회원</option>
									<option value=2 <c:if test="${memberList.memStatus==2 }"> selected="selected"</c:if>>점포관리자</option>
									<option value=8 <c:if test="${memberList.memStatus==8 }"> selected="selected"</c:if>>휴먼회원</option>
									<option value=9 <c:if test="${memberList.memStatus==9 }"> selected="selected"</c:if>>페이지 관리자</option>
								</select>
<!--  								<button type="submit" class="btn btn-primary btn-sm">수정</button>
 --> 								<a href="<c:url value='/admin/modifymember/'/>+${memberList.memEmail }+${memStatus}" onclick="return confirm('정말로 삭제하시겠습니까?');"
 											class="btn btn-primary btn-sm" style="color: white;">수정</a>
								</td>
							</tr>
							</form>
							</c:forEach>
						</tbody>
					</table>
					<br>
                    <div style="text-align: center;">
                      <button type="button" class="btn btn-primary btn-icon"><</button>                        
                      <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-primary">1</button>
                          <button type="button" class="btn btn-primary">2</button>
                          <button type="button" class="btn btn-primary">3</button>
                        </div>
                      <button type="button" class="btn btn-primary btn-icon">></button>                   
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
  <script src="js/vendor.bundle.base.js"></script>
  <script type="text/javascript">
	  $("select[name=memStatus]").change(function(){
		  console.log($(this).val()); //value값 가져오기
		  console.log($("select[name=location] option:selected").text()); //text값 가져오기
		});
  
  </script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>

</html>
