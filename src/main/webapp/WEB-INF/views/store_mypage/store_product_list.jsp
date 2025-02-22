<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">
<title>BOOTCLASIFIED - Responsive Classified Theme</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">

<!-- styles needed for carousel slider -->
<link href="${pageContext.request.contextPath }/assets/css/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/owl.theme.css" rel="stylesheet">

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
	<br><br><br><br><br><br>
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
												<li><a  href="${pageContext.request.contextPath}/store/order">
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
												<li><a class="active" href="${pageContext.request.contextPath}/store/productlist">
												<i class="icon-docs"></i> 상품리스트 </a></li>
											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
									<div class="collapse-box">
										<h5 class="collapse-title">
											리뷰 관리<a href="#Review" data-toggle="collapse"
											class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/store/review"><i class="icon-heart"></i> 리뷰 </a></li>
												
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
												<li><a href="${pageContext.request.contextPath}/store/out"><i
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
	            <h2 class="title-2"><i class="icon-hourglass"></i>상품 리스트 </h2>
                  <div style="text-align : right;">
	                  <button  type="button" class="btn btn-primary mr-2" onclick="location.href='<c:url value='/store/product/'/>'">상품 등록</button>
                  </div>
	            <div class="table-responsive">
	              <div class="table-action">
<!-- 	                <label for="checkAll">
	                  <input type="checkbox" onclick="checkAll(this)" id="checkAll">
	                  Select: All | <a href="#" class="btn btn-xs btn-danger">Delete <i class="glyphicon glyphicon-remove "></i></a> </label> -->
<!-- 	                <div class="table-search pull-right col-xs-7">
	                  <div class="form-group">
	                    <label class="col-xs-5 control-label text-right">Search <br>
	                      <a title="clear filter" class="clear-filter" href="#clear">[clear]</a> </label>
	                    <div class="col-xs-7 searchpan">
	                      <input type="text" class="form-control" id="filter">
	                    </div>
	                  </div>
	                </div> -->
	              </div>
	              <table id="addManageTable" style="border-top:1px solid #dee2e6;" class="table table-striped table-bordered add-manage-table table demo" data-filter="#filter" data-filter-text-only="true" >
	                <thead style="font-size: 15px; font-weight: bold;">
	                  <tr>
<!-- 	                    <th data-type="numeric" data-sort-initial="true"> </th>
-->	              
	                    <th data-sort-ignore="true">상품코드</th>
	                    <th data-type="numeric" >상품이미지</th>
	                    <th data-type="numeric" >상품이름</th>
	                    <th data-type="numeric" >상품가격</th>
	                    <th data-type="numeric" >상태</th>
	                    <th> 관리 </th>
	                  </tr>
	                </thead>
	                <tbody>
	                <c:forEach var="productList" items="${productList }">
						<tr>
							<td class="add-img-td">
								${productList.prdCode }</td>
							<td class="price-td">
								<c:if test="${empty productList.prdUpload }">
									<div>
										<img style="width:100px; height:100px;" src="${pageContext.request.contextPath }/images/junbi.png" alt="사진 준비 중입니다.!">
									</div>
								</c:if>
								<c:if test="${!empty productList.prdUpload }">
									<div>
										<img style="width:100px; height:100px;" src="${pageContext.request.contextPath }/images/${productList.prdUpload }" alt="${productList.prdUpload }">
									</div>
								</c:if>
							</td>
							<td style="width: 25%;" class="price-td">
								<div>
									<strong>${productList.prdName }</strong>
								</div>
							</td>
							<td class="price-td">
								<div>
									<strong>${productList.prdPrice }</strong>
								</div>
							</td>
							<td class="price-td">
							
								<c:if test="${productList.prdStatus==0 }">
									<div>
										<strong>품절</strong>
									</div>
								</c:if> 
								<c:if test="${productList.prdStatus==1 }">
									<div>
										<strong>판매중</strong>
									</div>
								</c:if> 
								</td>
							<td style="width: 10%" class="action-td">
								<div>
									<p>
										<a
											href="<c:url value='/store/deleteProduct/'/>${productList.prdCode}"
											onclick="return confirm('정말로 삭제하시겠습니까?');"
											class="btn btn-danger btn-xs" style="color: white;">
											<i class=" fa fa-trash"></i> Delete
										</a>
									</p>
									
								</div>
							</td>
						</tr>
					</c:forEach>
	                </tbody>
	              </table>
	              	<div style="text-align: center;">
								<c:choose>
									<c:when test="${pager.startPage } gt ${pager.blockSize }">
										<a href="<c:url value='/store/productlist'/>">[처음]</a>
										<a
											href="<c:url value='/store/productlist'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
									</c:when>
									<c:otherwise>
										[처음] [이전]
									</c:otherwise>
								</c:choose>

								<c:forEach var="i" begin="${pager.startPage }"
									end="${pager.endPage }">
									<a
										href="<c:url value='/store/productlist'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
								</c:forEach>

								<c:choose>
									<c:when test="${pager.startPage }>${pager.blockSize }">
										<a
											href="<c:url value='/store/productlist'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
										<a
											href="<c:url value='/store/productlist'/>?pagenum=${pager.endPage}">[마지막]</a>
									</c:when>
									<c:otherwise>
										[다음] [마지막]
									</c:otherwise>
								</c:choose>
								<div>
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
	  
<!-- 	  <div class="footer" id="footer">
	    <div class="container">
	      <ul class=" pull-left navbar-link footer-nav">
	        <li><a href="index.html"> Home </a> <a href="about-us.html"> About us </a> <a href="#"> Terms and Conditions </a> <a href="#"> Privacy Policy </a> <a href="contact.html"> Contact us </a> <a href="faq.html"> FAQ </a>
	      </ul>
	      <ul class=" pull-right navbar-link footer-nav">
	        <li> &copy; 2015 BootClassified </li>
	      </ul>
	    </div>
	    
	  </div> -->
	  <!--/.footer--> 
	</div>

		<!-- /.wrapper -->
		<!-- Le javascript
================================================== -->

	<!-- Placed at the end of the document so the pages load faster --> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"> </script>
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
	<script src="${pageContext.request.contextPath }/assets/js/footable.filter.js?v=2-0-1" type="text/javascript"></script> 
	<script type="text/javascript">
	  $(function () {
	    $('#addManageTable').footable().bind('footable_filtering', function (e) {
	      var selected = $('.filter-status').find(':selected').text();
	      if (selected && selected.length > 0) {
	        e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
	        e.clear = !e.filter;
	      }
	    });
	
	    $('.clear-filter').click(function (e) {
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
	  for(var i=0; i < chkinput.length; i++) {
	    if(chkinput[i].type == 'checkbox') {
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
</body>
</html>
