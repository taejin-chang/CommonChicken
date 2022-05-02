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
					<form method="post" id="data" class="data">
					<input type="hidden" id="memEmail" name="memEmail" value="">
					<input type="hidden" id="memStatus" name="memStatus" value="">
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
						<c:forEach var="memberList" items="${memberList }">
						<tbody>
							<tr>
<%-- 								<td class="py-1">${memberList. }</td>
 --%>							<td>
 									<c:if test="${memberList.memUpload !=null}">
 										<img src="${pageContext.request.contextPath}/profile/${memberList.memUpload}" alt="${memberList.memUpload}" />
 									</c:if>									
 									<c:if test="${memberList.memUpload ==null}">
 										<img src="${pageContext.request.contextPath}/profile/person.png" alt="person" />
 									</c:if>${memberList.memName }
								</td>
								<td style="text-align: center;" id="email">${memberList.memEmail }</td>
								<td style="text-align: center;">${memberList.memPhone}</td>
								<td style="text-align: center;">${memberList.memJoinDate}</td>
								<td style="text-align: center;" id="status">
									<select name="memStatus">
										<option value="">상태 선택</option>
	<%-- 									<option value=0 <c:if test="${memberList.memStatus==0 }"> selected="selected"</c:if>>탈퇴회원</option>
	 --%>								<option value=1 <c:if test="${memberList.memStatus==1 }"> selected="selected"</c:if>>일반회원</option>
										<option value=2 <c:if test="${memberList.memStatus==2 }"> selected="selected"</c:if>>점포관리자</option>
										<option value=8 <c:if test="${memberList.memStatus==8 }"> selected="selected"</c:if>>휴먼회원</option>
										<option value=9 <c:if test="${memberList.memStatus==9 }"> selected="selected"</c:if>>페이지 관리자</option>
									</select>
									<button type="button" id="update" class="btn btn-primary btn-sm" onclick=memberUpdate(this)>변경</button>

			
			
			
 				<%-- 	<a href="<c:url value='/admin/modifymember/'/>+${memberList.memEmail }+${memStatus}" onclick="return confirm('정말로 삭제하시겠습니까?');"
 											class="btn btn-primary btn-sm" style="color: white;">수정</a> --%>
								</td>
							</tr>
						</tbody>
						</c:forEach>
					</table>
					</form>
					<br>
					<div style="text-align: center;">
					<c:choose>
						<c:when test="${pager.startPage } gt ${pager.blockSize }">
							<a href="<c:url value='/admin/member'/>">[처음]</a>
							<a
								href="<c:url value='/admin/member'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
						</c:when>
						<c:otherwise>
								[처음] [이전]
							</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="${pager.startPage }"
						end="${pager.endPage }">
						<a
							href="<c:url value='/admin/member'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
					</c:forEach>

					<c:choose>
						<c:when test="${pager.startPage }>${pager.blockSize }">
							<a
								href="<c:url value='/admin/member'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
							<a
								href="<c:url value='/admin/member'/>?pagenum=${pager.endPage}">[마지막]</a>
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
		  console.log($("select[name=memStatus]").val()); //value값 가져오기
		  console.log($("select[name=memStatus] option:selected").text()); //text값 가져오기
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
	<script type="text/javascript">
	  function memberUpdate(ths){
/* 		  var $memStatus = $(ths).closest('tr').find("td[id='status']");
 */	    	

/* 		  var memStatus =  $memStatus.text();
 */
 
 		var $email =$(ths).closest('tr').find("td[id='email']");
 		var email = $email.text();
 
/*  		memEmail = $(ths).parent().parent().parent().find('input[name=memEmail]').val();
 */		status = $(ths).parent().find("select[name=memStatus]").val(); //value값 가져오기
		

 		$("#memEmail").val(email);
 		$("#memStatus").val(status);
 
 		if(email!=""){
 	 		alert(email);
 		}
 		
	  }
	  
	  
	  
	   
	   

  </script>
  
  
</body>

</html>
