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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/table_extend.css">
  
  <%-- handlebars 라이브러리 : JSON 형식으로 표현된 JavaScrit 객체를 전달받아 HTML 태그로 변환하는
기능을 제공하는 자바스크립트 템플릿 라이브러리 --%>
<%-- => https://cdnjs.com 사이트에서 handlebars 라이브러리를 검색하여 JSP 문서에 포함 --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>
  <div class="container-scroller">
  <!-- partial -->
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
        <br>
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title">공지사항 관리</h1>
                  <div class="table-responsive">
					<table class="table table-expandable">
							<thead style="background: #4747A1; color: white; text-align: center;" >

								<tr>
									<th>커먼번호</th>
									<th>매점명</thz>
									<th>배달출발시간</th>
 									<th>마감시간</th>
									<th>모집입원</th>
									<th>매출액</th>
									<th>상태</th>
								</tr>
							</thead>
							<c:choose>
								<c:when test="${empty(orderManager) }">
									<tbody style="text-align: center;">
										<tr>
											<td style="text-align: center;" colspan="7">등록된 커먼이 없습니다.</td>
										</tr>
									</tbody>
								</c:when>
								<c:otherwise>
								<c:forEach var="commonList" items="${orderManager }">
								<tbody style="text-align: center;">
									<tr style="background-color: #e1e1fa;">
										<td>${commonList.cmNum}</td>
										<td>${commonList.storeDTO.stoName}</td>
										<td>${commonList.cmDeliveryTime}</td>
										<td>${commonList.cmClose}</td>
										<td>${commonList.cmGoalPeople}</td>
										<td>${commonList.cmSales}</td>
										<td>
											<c:if test="${commonList.cmStatus==0}">진행중</c:if> 
											<c:if test="${commonList.cmStatus==1}">만료</c:if> 
											<c:if test="${commonList.cmStatus==2}">성립</c:if> 
										</td>
									</tr>
									<tr>
										<td colspan="8">
											<table class="table table-expandable">
												<thead style="background: #7978E9; color: white;">
	
													<tr>
														<th>주문묶음 번호</th>
														<th>구매자</th>
														<th>주소</th>
														<th>전화번호</th>
														<th>요청사항</th>
														<th>결제종류</th>
														<th>상태</th>
													</tr>
												</thead>
												<c:forEach var="orderList" items="${commonList.orderList}">
												<tbody style="text-align: center;">
													<tr style="background-color: #ffffff;">
														<td>${orderList.ordBundleNum}</td>
														<td>${orderList.memEmail}</td>
														<td>${orderList.ordAdd1} ${orderList.ordAdd2}</td>
														<td>${orderList.ordPhone}</td>
														<td>${orderList.ordRequest}</td>
														<td>${orderList.ordPayMethod}</td>
														<td><!-- 0:입금대기,1:주문접수, 2:커먼완료, 3:배달중,4:배달완료,5 :커먼실패,  6: 주문취소 -->
														<c:if test="${orderList.ordStatus==0}">입금대기</c:if> 
														<c:if test="${orderList.ordStatus==1}">주문접수</c:if> 
														<c:if test="${orderList.ordStatus==2}">커먼완료</c:if> 
														<c:if test="${orderList.ordStatus==3}">배달중</c:if>
														<c:if test="${orderList.ordStatus==4}">배달완료</c:if> 
														<c:if test="${orderList.ordStatus==5}">커먼실패</c:if> 
														<c:if test="${orderList.ordStatus==6}">주문취소 </c:if>
<%-- 														<c:if test="${orderList.ordStatus==0}">
							                       	 	<p> 
							                       	 		<a href="<c:url value='/order/changeOrder/3/'/>${orderList.ordBundleNum}" onclick="return confirm('배송을 시작합니다');"
 																class="btn btn-primary btn-xs" style="color: white;"> 
 																배달시작 
															</a>
														</p>
														<p>
							                       	 		<a href="<c:url value='/order/changeOrder/6/'/>${orderList.ordBundleNum}" onclick="return confirm('정말 주문을 취소하시겠습니까?');"
 																class="btn btn-danger btn-xs" style="color: white;"> 
 																주문 취소 
															</a>
														</p>
														</c:if> 
														<c:if test="${orderList.ordStatus==3}">
							                       	 	<p> 
							                       	 		<a href="<c:url value='/order/changeOrder/4/'/>${orderList.ordBundleNum}" onclick="return confirm('배송이 완료 되었습니다.');"
 																class="btn btn-primary btn-xs" style="color: white;"> 
 																배송완료
															</a>
														</p>
														<p>
							                       	 		<a href="<c:url value='/order/changeOrder/6/'/>${orderList.ordBundleNum}" onclick="return confirm('정말 주문을 취소하시겠습니까?');"
 																class="btn btn-danger btn-xs" style="color: white;"> 
 																주문 취소 
															</a>
														</p>
														</c:if>  --%>
														 
														</td>
													</tr>
													<tr>
														<td colspan="8">
															<table class="table table-striped">
															<thead style="background: #7DA0FA; color: white;">
																	<tr>
																		<th>상품 번호</th>
																		<th>이미지</th>
																		<th>상품명</th>
																		<th>가격</th>
																		<th>수량</th>
																		<th>상품 종류</th>
																	</tr>
																</thead>
																<c:forEach var="productOrderList" items="${productManager}">
																<c:if test="${orderList.ordBundleNum==productOrderList.ordBundleNum }">
																<tbody style="text-align: center;">
																	<tr>
																		<td>${productOrderList.productList.prdCode}</td>
																		<td>${productOrderList.productList.prdUpload}</td>
																		<td>${productOrderList.productList.prdName}</td>
																		<td>${productOrderList.productList.prdPrice}</td>
																		<td>${productOrderList.ordQuantity}</td>
																		<td>
																		<c:if test="${productOrderList.productList.prdCategory==0}">치킨</c:if> 
																		<c:if test="${productOrderList.productList.prdCategory==1}">사이드</c:if> 
																		<c:if test="${productOrderList.productList.prdCategory==2}">음료</c:if> 
																		</td>
																	</tr>
																</tbody>
																</c:if>
																</c:forEach>
															</table>
														</td>
													</tr>
												</tbody>
												</c:forEach>
											</table>
										</td>
									</tr>
								</tbody>
								</c:forEach>
							</c:otherwise>
						</c:choose>
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
           		<div id="restResult"></div>                  
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
  <script src="${pageContext.request.contextPath }/admin/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/template.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/settings.js"></script>
  <script src="${pageContext.request.contextPath }/admin/js/todolist.js"></script>
  

  
  
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

