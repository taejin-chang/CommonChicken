<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath }/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/ico/favicon.png">
<title>BOOTCLASIFIED - Responsive Classified Theme</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">

<!-- styles needed for carousel slider -->
<link href="${pageContext.request.contextPath }/assets/css/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/owl.theme.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/table_extend.css">

<!-- Just for debugging purposes. -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<!-- include pace script for automatic web page progress bar  -->

<script>
	paceOptions = {
		elements : true
	};
</script>
<script src="${pageContext.request.contextPath }/assets/js/pace.min.js"></script>
</head>
<body>
	<div id="wrapper">
		
		<!-- /.header -->
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="main-container">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 page-sidebar">
						<aside>
							<div class="inner-box">
								<div class="user-panel-sidebar">
									<div class="collapse-box">
										<h5 class="collapse-title no-border">
											관리자용 마이페이지 <a href="#MyClassified" data-toggle="collapse"
												class="pull-right"><i class="fa fa-angle-down"></i></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyClassified">
											<ul class="acc-list">
												<li><a  href="${pageContext.request.contextPath}/store/owner">
												<i class="icon-home"></i> 관리자 회원 정보</a></li>

											</ul>
											<ul class="acc-list">
												<li><a  href="${pageContext.request.contextPath}/store/info"><i
														class="icon-home"></i> 점포 정보</a></li>

											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
									<div class="collapse-box">
										<h5 class="collapse-title">
											주문<a href="#MyAds" data-toggle="collapse" class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a class="active"  href="${pageContext.request.contextPath}/store/order">
												<i class="icon-docs"></i> 주문 현황 </a></li>
											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											주문<a href="#MyAds" data-toggle="collapse" class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a  href="${pageContext.request.contextPath}/store/productlist">
												<i class="icon-docs"></i> 상품리스트 </a></li>
											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
									<div class="collapse-box">
										<h5 class="collapse-title">
											리뷰 관리<a href="${pageContext.request.contextPath}/store/review" data-toggle="collapse"
											class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="store-account-review.html"><i class="icon-heart"></i> 리뷰 </a></li>
												
											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											커먼 관리<a href="${pageContext.request.contextPath}/store/commonlist" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/store/commonlist"><i class="icon-heart"></i>커먼 리스트</a></li>
												
											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											서비스 탈퇴 <a href="#TerminateAccount" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="TerminateAccount">
											<ul class="acc-list">
												<li><a  href="${pageContext.request.contextPath}/store/out"><i
														class="icon-cancel-circled "></i> 탈퇴하기 </a></li>
											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
								</div>
							</div>
							<!-- /.inner-box  -->

						</aside>

					</div>
					<!--/.page-sidebar-->

					<div class="col-sm-9 page-content">
						<div class="inner-box">
							<h2 class="title-2">
								<i class="icon-docs"></i> 주문 현황
							</h2>

					<table class="table table-expandable">
							<thead style="background: #4747A1; color: white; text-align: center;" >

								<tr>
									<th style="text-align: center;">커먼번호</th>
									<th style="text-align: center;">매점명</th>
									<th style="text-align: center;">배달출발시간</th>
 									<th style="text-align: center;">마감시간</th>
									<th style="text-align: center;">모집입원</th>
									<th style="text-align: center;">매출액</th>
									<th style="text-align: center;">상태</th>
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
												<thead style="background: #7978E9; color: white; text-align: center;">
	
													<tr>
														<th  style="text-align: center;">주문묶음 번호</th>
														<th style="text-align: center;">구매자</th>
														<th style="text-align: center;">주소</th>
														<th style="text-align: center;">전화번호</th>
														<th style="text-align: center;">요청사항</th>
														<th style="text-align: center;">결제종류</th>
														<th style="text-align: center;">상태</th>
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
														<c:if test="${orderList.ordStatus==0}">
							                       	 	<p> 
							                       	 		<a href="<c:url value='/store_order/changeOrder/3/'/>${orderList.ordBundleNum}" onclick="return confirm('배송을 시작합니다');"
 																class="btn btn-primary btn-xs" style="color: white;"> 
 																배달시작 
															</a>
														</p>
														<p>
							                       	 		<a href="<c:url value='/store_order/changeOrder/6/'/>${orderList.ordBundleNum}" onclick="return confirm('정말 주문을 취소하시겠습니까?');"
 																class="btn btn-danger btn-xs" style="color: white;"> 
 																주문 취소 
															</a>
														</p>
														</c:if> 
														<c:if test="${orderList.ordStatus==3}">
							                       	 	<p> 
							                       	 		<a href="<c:url value='/store_order/changeOrder/4/'/>${orderList.ordBundleNum}" onclick="return confirm('배송이 완료 되었습니다.');"
 																class="btn btn-primary btn-xs" style="color: white;"> 
 																배송완료
															</a>
														</p>
														<p>
							                       	 		<a href="<c:url value='/store_order/changeOrder/6/'/>${orderList.ordBundleNum}" onclick="return confirm('정말 주문을 취소하시겠습니까?');"
 																class="btn btn-danger btn-xs" style="color: white;"> 
 																주문 취소 
															</a>
														</p>
														</c:if> 
														 
														</td>
													</tr>
													<tr>
														<td colspan="8">
															<table class="table table-striped">
															<thead style="background: #7DA0FA; color: white; text-align: center;">
																	<tr>
																		<th style="text-align: center;">상품 번호</th>
																		<th style="text-align: center;">이미지</th>
																		<th style="text-align: center;">상품명</th>
																		<th style="text-align: center;">가격</th>
																		<th style="text-align: center;">수량</th>
																		<th style="text-align: center;">상품 종류</th>
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
							<!--/.row-box End-->

						</div>
					</div>
					<!--/.page-content-->
				</div>
				<!--/.row-->
			</div>
			<!--/.container-->
		</div>
		<!-- /.main-container -->

	</div>
	<!-- /.wrapper -->

	<!-- Le javascript
================================================== -->

	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
		
	</script>
	<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>

	<!-- include checkRadio plugin //Custom check & Radio  -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/icheck.min.js"></script>


	<!-- include carousel slider plugin  -->
	<script src="${pageContext.request.contextPath }/assets/js/owl.carousel.min.js"></script>

	<!-- include equal height plugin  -->
	<script src="${pageContext.request.contextPath }/assets/js/jquery.matchHeight-min.js"></script>

	<!-- include jquery list shorting plugin plugin  -->
	<script src="${pageContext.request.contextPath }/assets/js/hideMaxListItem.js"></script>

	<!-- include footable   -->

	<script src="${pageContext.request.contextPath }/assets/js/footable.js?v=2-0-1" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/assets/js/footable.filter.js?v=2-0-1"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$('#addManageTable').footable().bind(
					'footable_filtering',
					function(e) {
						var selected = $('.filter-status').find(':selected')
								.text();
						if (selected && selected.length > 0) {
							e.filter += (e.filter && e.filter.length > 0) ? ' '
									+ selected : selected;
							e.clear = !e.filter;
						}
					});

			$('.clear-filter').click(function(e) {
				e.preventDefault();
				$('.filter-status').val('');
				$('table.demo').trigger('footable_clear_filter');
			});

		});
	</script>
	<!-- include custom script for ads table [select all checkbox]  -->
	<script>
		function checkAll(bx) {
			var chkinput = document.getElementsByTagName('input');
			for (var i = 0; i < chkinput.length; i++) {
				if (chkinput[i].type == 'checkbox') {
					chkinput[i].checked = bx.checked;
				}
			}
		}
	</script>

	<!-- include jquery.fs plugin for custom scroller and selecter  -->
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
	<!-- include custom script for site  -->
	<script src="${pageContext.request.contextPath }/assets/js/script.js"></script>
	
	  <script src="${pageContext.request.contextPath }/admin/js/vendor.bundle.base.js"></script>
	
	
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
  
	
</body>
</html>
