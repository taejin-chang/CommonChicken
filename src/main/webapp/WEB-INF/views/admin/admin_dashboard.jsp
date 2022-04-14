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
  <link rel="stylesheet" href="css/dataTables.bootstrap4.css">
  <link rel="stylesheet" type="text/css" href="css/select.dataTables.min.css">
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
        <div class="content-wrapper" style="margin-top: 80px;">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold" style="font-size: 40px;">DashBoard</h3>
<!--                   <h6 class="font-weight-normal mb-0">All systems are running smoothly! You have <span class="text-primary">3 unread alerts!</span></h6>
 -->                </div>
<!--                 <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                  <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                    <button class="btn btn-sm btn-light bg-white dropdown-toggle" type="button" id="dropdownMenuDate2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                     <i class="mdi mdi-calendar"></i> Today (10 Jan 2021)
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuDate2">
                      <a class="dropdown-item" href="#">January - March</a>
                      <a class="dropdown-item" href="#">March - June</a>
                      <a class="dropdown-item" href="#">June - August</a>
                      <a class="dropdown-item" href="#">August - November</a>
                    </div>
                  </div>
                 </div>
                </div> -->
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 <div class="d-flex justify-content-between">
                  <p class="card-title" style="font-size: 25px;">매출 현황</p>
                 </div>
<!--                   <p class="font-weight-500">The total number of sessions within the date range. It is the period time a user is actively engaged with your website, page or app, etc</p>
 -->                  <div id="sales-legend" class="chartjs-legend mt-4 mb-1"></div>
                  <canvas id="sales-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="col-md-6 grid-margin transparent" >
              <div class="row">
                <div class="col-md-6 mb-4 stretch-card transparent">
                  <div class="card card-tale">
                    <div class="card-body">
                      <p class="mb-2" style="font-size: 20px; color:white;">매출</p>
                      <p class="fs-30 mb-2" style="color:white;">${totalSales } 원 </p>
<!--                       <p>10.00% (30 days)</p>
 -->                    </div>
                  </div>
                </div>
                <div class="col-md-6 mb-4 stretch-card transparent">
                  <div class="card card-dark-blue">
                    <div class="card-body">
                      <p class="mb-2" style="font-size: 20px; color:white;">성공 커먼수</p> 
                      <p class="fs-30 mb-2" style="color:white;">${successCommon } 개</p>
<!--                       <p>22.00% (30 days)</p>
 -->                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                  <div class="card card-light-blue">
                    <div class="card-body">
                      <p class="mb-2" style="font-size: 20px; color:white;">점포 수 </p>
                      <p class="fs-30 mb-2" style="color:white;">${storeCount } 개</p>
<!--                       <p>2.00% (30 days)</p>
 -->                    </div>
                  </div>
                </div>
                <div class="col-md-6 stretch-card transparent">
                  <div class="card card-light-danger">
                    <div class="card-body">
                      <p class="mb-2" style="font-size: 20px; color:white;">회원수</p>
                      <p class="fs-30 mb-2" style="color:white;">${memberCount } 명</p>
<!--                       <p>0.22% (30 days)</p> 
 -->                    </div>
                  </div>
                </div>
              </div>
           	   <div class="row" style="margin-top: 20px;">
            	<div class="col-md-12  grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <p class="card-title">매장 순위</p>
                      <div class="charts-data">
                        <c:forEach var="i" items="${bestStore }">
                        <div class="mt-3">
                          <p class="mb-0">${i.STO_NAME }</p>
                          <p class="mb-0">${i.SUM_VALUE } 원</p>
                          <div class="d-flex justify-content-between align-items-center">
                            <div class="progress progress-md flex-grow-1 mr-4">
                              <div class="progress-bar bg-inf0" role="progressbar" style="width: ${i.SUM_VALUE /3000 }%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </div>
                        </div>
                        </c:forEach>
                        <!-- <div class="mt-3">
                          <p class="mb-0">BBQ 역삼역점</p>
                          <div class="d-flex justify-content-between align-items-center">
                            <div class="progress progress-md flex-grow-1 mr-4">
                              <div class="progress-bar bg-info" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <p class="mb-0">2,300,000원</p>
                          </div>
                        </div>
                        <div class="mt-3">
                          <p class="mb-0">교촌 치킨 역삼역점</p>
                          <div class="d-flex justify-content-between align-items-center">
                            <div class="progress progress-md flex-grow-1 mr-4">
                              <div class="progress-bar bg-info" role="progressbar" style="width: 48%" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <p class="mb-0">2,000,000원</p>
                          </div> -->
                        </div>
                      </div>  
                    </div>
                  </div>
                </div>
            </div>
          </div>
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title" style="font-size: 25px;">최근 주문 내역</p>
                  <div style="text-align: right;">
                    <a href="${pageContext.request.contextPath}/admin/main" class="text-info" >전체보기</a>    
                    </div>              
                  <div class="row">
                    <div class="col-12">
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
                      </div>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
        </div>
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
</div>

  <!-- plugins:js -->
  <script src="js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="js/Chart.min.js"></script>
  <script src="js/jquery.dataTables.js"></script>
  <script src="js/dataTables.bootstrap4.js"></script>
  <script src="js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
<!--   <script src="js/dashboard.js"></script>
 -->  <script src="js/Chart.roundedBarCharts.js"></script>
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
 </script>
 <script type="text/javascript">
 (function ($) {
	 
	 let monthval =[];
	 let sales = []; 
	 
	 $.ajax({
		type: "get",
		url: "monthSales",
		contentType: "application/json",
		dataType: "json",
		success: function(text) {
			
			for(let i = 0; i<text.length; i++){
				monthval.push(text[i].MONTHVALUE);
				sales.push(text[i].SALES);
			}
			
/* 			console.log(monthval);
			console.log(sales); */
			  var SalesChartCanvas = $("#sales-chart").get(0).getContext("2d");
			     var SalesChart = new Chart(SalesChartCanvas, {
			       type: 'bar',
			       data: {
			         labels: monthval,
			         datasets: [{
			             label: '월 매출',
			             data: sales,
			             backgroundColor: '#98BDFF'
			           }
			         ]
			       },
			       options: {
			         cornerRadius: 5,
			         responsive: true,
			         maintainAspectRatio: true,
			         layout: {
			           padding: {
			             left: 0,
			             right: 0,
			             top: 20,
			             bottom: 0
			           }
			         },
			         scales: {
			           yAxes: [{
			             display: true,
			             gridLines: {
			               display: true,
			               drawBorder: false,
			               color: "#F2F2F2"
			             },
			             ticks: {
			               display: true,
			               min: 0,
			               max: 500000,
			               callback: function(value, index, values) {
			                 return  value + '₩' ;
			               },
			               autoSkip: true,
			               maxTicksLimit: 10,
			               fontColor:"#6C7383"
			             }
			           }],
			           xAxes: [{
			             stacked: false,
			             ticks: {
			               beginAtZero: true,
			               fontColor: "#6C7383"
			             },
			             gridLines: {
			               color: "rgba(0, 0, 0, 0)",
			               display: false
			             },
			             barPercentage: 1
			           }]
			         },
			         legend: {
			           display: false
			         },
			         elements: {
			           point: {
			             radius: 0
			           }
			         }
			       },
			     });
			     document.getElementById('sales-legend').innerHTML = SalesChart.generateLegend();
				 
			

		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	 });
	 
	})(jQuery); 

 
 </script>
  
  
  
</body>

</html>

