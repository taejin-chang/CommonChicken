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
      <div class="main-panel">
        <div class="content-wrapper" style="margin-top: 80px;">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title">커먼게시판 관리</h1>
				<div class="table-responsive" id="datalist">
					<table class="table" style="text-align: center;">
						<thead>
							<tr>
								<th style="width: 10%;">글번호</th>
								<th>제목</th>
								<th style="width: 20%;">지역</th>
								<th style="width: 10%;">날짜</th>
								<th style="width: 10%;">상태</th>
							</tr>
						</thead>
						<c:forEach var="boardlist" items="${commonboardList}" varStatus="status">
							<tbody>
							
								<tr>
									<td>
									<input name="goalpeopledata" type="hidden" value="${boardlist.cmGoalPeople }">
									<input name="stonamedata"  type="hidden" value="${boardlist.stoName }">
									<input name="cmclosedata"  type="hidden" value="${boardlist.cmClose }">
									<input name="cmdeliverytimedata"  type="hidden" value="${boardlist.cmDeliveryTime }">
									<input name="cmnumdata"  type="hidden" value="${boardlist.cmNum }">
									<input name="stonumdata"  type="hidden" value="${boardlist.stoNum }">
									${boardlist.cmbdNum }
									</td>
									
									<td>
										<a id="popupmodal" data-toggle="modal" data-target="#exampleModal" data-whatever1="${boardlist.cmNum }" data-whatever2="${boardlist.stoNum }">${boardlist.cmbdTitle }</a>
									</td>
									<td>${boardlist.stoName }
									<td>${boardlist.cmbdDate }</td>
									<c:choose>
										<c:when test="${boardlist.cmbdStatus ==0}">
											<td>커먼 취소</td></c:when>
										<c:when test="${boardlist.cmbdStatus ==1}">
											<td>커먼 모집중</td></c:when>
										<c:when test="${boardlist.cmbdStatus ==2}">
											<td>커먼 성립</td></c:when>
									</c:choose>
									<!-- <td><label class="badge badge-warning">In progress</label></td> -->
								</tr>
							</tbody>
					    </c:forEach>
					</table>
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="popupcmbdtitle">title</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					      	<input type="hidden">
					      	<table>
						      	<thead>
							      	<tr>
							      		<th id="cmbdNum" style="width: 10%;">모집인원</th>
							      		<th style="width: 10%;">점포명</th>
							      		<th style="width: 20%;">마감시간</th>
							      		<th style="width: 20%;">배달출발시간</th>
							   		</tr>
						   		</thead>
						   		<tbody>
						   			<tr>
						   				<td id="popupgoalpeople"></td>
						   				<td id="popupstoname"></td>
						   				<td id="popupcmclose"></td>
						   				<td id="popupdeliverytime">
   										<input id="popupstonum" >
										<input id="popupcmnum"  >
						   				</td>
						   			</tr>
						   		</tbody>
					      	</table>
					      </div>
					      <!--  <div class="invalid-feedback">
					        이미 모집요청글이 등록되어 있습니다.
					      </div>-->
					      <div class="modal-footer">
<!-- 					        <button type="button" class="btn btn-primary" id="applyBtn" onclick="applyCommon();">커먼신청</button>
 -->					        <button type="submit" class="btn btn-secondary" data-dismiss="modal" onclick="${pageContext.request.contextPath}/">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
					
					<div style="text-align:center">
					<c:choose>
						<c:when test="${pager.startPage } gt ${pager.blockSize }">
							<a href="<c:url value='/admin/common'/>">[처음]</a>
							<a href="<c:url value='/admin/common'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
						</c:when>
						<c:otherwise>
							[처음] [이전]
						</c:otherwise>
					</c:choose>
					
					<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }">
						<a href="<c:url value='/admin/common'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
					</c:forEach>
					
					<c:choose>
						<c:when test="${pager.startPage }>${pager.blockSize }">
							<a href="<c:url value='/admin/common'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
							<a href="<c:url value='/admin/common'/>?pagenum=${pager.endPage}">[마지막]</a>
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
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
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
<!--   <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <script type="text/javascript"> -->

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
  
  	<script type="text/javascript">
	var goalPeople;
	var stoName;
	var cmClose;
	var cmDeliveryTime;
	var cmbdTitle;
	var cmNum;
	var stoNum;
	
    $(document).on('click', '#datalist #popupmodal', function() {
		  goalPeople = $(this).parent().parent().parent().find('input[name=goalpeopledata]').val();
		  stoName = $(this).parent().parent().parent().find('input[name=stonamedata]').val();
		  cmClose = $(this).parent().parent().parent().find('input[name=cmclosedata]').val();
		  cmDeliveryTime = $(this).parent().parent().parent().find('input[name=cmdeliverytimedata]').val();
		  cmbdTitle = $(this).parent().parent().parent().find('input[name=popupmodal]').val();
		  stoNum = $(this).parent().parent().parent().find('input[name=stonumdata]').val();
		  cmNum = $(this).parent().parent().parent().find('input[name=cmnumdata]').val();
		  
  		  console.log(cmNum);
  		  console.log(stoNum);
		  
		  $('#popupgoalpeople').text(goalPeople);
		  $('#popupstoname').text(stoName);
		  $('#popupcmclose').text(cmClose);
		  $('#popupdeliverytime').text(cmDeliveryTime);
		  $('#popupcmbdtitle').text(cmbdTitle);
		  $('#popupstonum').text(cmNum);
		  $('#popupcmnum').text(stoNum);

		  });
		  
	  function applyCommon() {
	    	$('#exampleModal').on('show.bs.modal', function (event) {
	  		  
	  		  cmNum = $(this).parent().parent().parent().find('input[id=popupcmnum]').val();
	  		  stoNum = $(this).parent().parent().parent().find('input[id=popupstonum]').val();
			  
	    	});
	    	
			location.href="${pageContext.request.contextPath}/store?stoNum="+stoNum+"&cmNum="+cmNum;
	    	
	    };
	
	</script>
</body>

</html>