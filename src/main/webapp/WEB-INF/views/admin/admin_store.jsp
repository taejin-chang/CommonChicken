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
    <!-- partial:partials/_navbar.html -->
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
        <div class="content-wrapper" style="margin-top: 80px;" >
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title">점포 관리</h1>
                  <div class="table-responsive">
            		<table class="table table-hover table-expandable table-striped">
						<thead>
							<tr>
								<th style="width: 15%">번호</th>								
								<th>점포명</th>
								<th style="width: 20%">전화번호</th>
								<th style="width: 15%">대표자명</th>								
								<th style="width: 15%">운영상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="storeList" items="${storeList }">
							<tr>
								<td>${storeList.stoNum }</td>
								<td>${storeList.stoName }</td>
								<td>${storeList.stoPhone}</td>
								<td>${storeList.stoCeo }</td>
								<td>
								<c:if test="${storeList.stoStatus == 0 }">승인전</c:if>
								<c:if test="${storeList.stoStatus == 1 }">승인</c:if>
								<c:if test="${storeList.stoStatus == 2 }">휴업</c:if>
								<c:if test="${storeList.stoStatus == 9 }">서비스탈퇴</c:if>
								</td>
							</tr>
							<tr>
								<td colspan="2"><h4>점포 상세정보</h4>
									<ul>
										<li>주소 : ${storeList.stoAdd1}</li>
										<li>사업자 번호 : ${storeList.stoNum }</li>
										<li>영업시간 : ${storeList.stoOpenning }</li>
										<li>알림메세지 :<br> ${storeList.stoMessage }</li>
									</ul>
								</td>
								<td colspan="2">
									<ul>
										<li>최소 주문금액  : ${storeList.stoMinorder }</li>
										<li>점포 코드 : ${storeList.stoCode }</li>
										<li>치킨 : ${storeList.stoBoneOrg }</li>
										<li>순살 : ${storeList.stoBonelessOrg }</li>
									</ul>
								</td>
								<td colspan="1">
									<ul>
										<li>운영상태<br>
											<select name="stoStatus">
												<option value="0" <c:if test="${storeList.stoStatus==0 }">selected="selected"</c:if>>승인전</option>
												<option value="1" <c:if test="${storeList.stoStatus==1 }">selected="selected"</c:if>>운영중</option>
												<option value="2" <c:if test="${storeList.stoStatus==2 }">selected="selected"</c:if>>휴업</option>
												<option value="9" <c:if test="${storeList.stoStatus==9 }">selected="selected"</c:if>>서비스 탈퇴</option>
											</select>
											<button type="button" class="btn btn-primary btn-sm" onclick="check_ok();">확인</button>
										</li> 

									</ul>
								</td>
							</tr>
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
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  
  <script type="text/javascript">
  
  	function check_ok() {

	    var stoStatus = $("select[name=stoStatus]").val();
	    alert(stoStatus);
	    
	    location.href = "<c:url value='/admin/store/'/>"+stoStatus;
  	}
  </script>
  
  
  
  
  
  
  <script type="text/javascript">
/*     var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
  
   */
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
  </script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>

</html>

