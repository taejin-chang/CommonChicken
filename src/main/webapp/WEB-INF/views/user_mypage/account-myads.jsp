<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/select2.css" />
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />
<!-- styles needed for carousel slider -->
<link href="${pageContext.request.contextPath }/assets/css/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/owl.theme.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/assets/js/ace-extra.js"></script>

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
											마이페이지 <a href="#MyClassified" data-toggle="collapse"
												class="pull-right"><i class="fa fa-angle-down"></i></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyClassified">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/user/mypage"><i
														class="icon-home"></i> 회원 정보</a></li>

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
												<li><a class="active" href="${pageContext.request.contextPath}/user/myCommon"><i
														class="icon-docs"></i> 주문 현황 </a></li>
											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
									<div class="collapse-box">
										<h5 class="collapse-title">
											나의 게시글<a href="#MyAds" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/user/myBoard"><i
														class="icon-docs"></i> 공동주문 모집,리뷰 </a></li>

											</ul>
										</div>
									</div>

									<div class="collapse-box">
										<h5 class="collapse-title">
											점포 관리<a href="#MyAds" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/user/myStoreApply"><i
														class="icon-docs"></i> 점포등록 신청 </a></li>
											</ul>
										</div>
									</div>



									<div class="collapse-box">
										<h5 class="collapse-title">
											회원 탈퇴 <a href="#TerminateAccount" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="TerminateAccount">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/user/myClose"><i
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



					<div class="col-sm-9 page-content" class="widget-body">
						<div class="inner-box" class="widget-main">
							<h2 class="title-2">
								<i class="icon-docs"></i> 주문 현황
							</h2>

							<div id="fuelux-wizard-container">
								<!-- #section:plugins/fuelux.wizard.steps -->
								<ul class="steps">
									<li id="zero" data-step="1" ><span class="step">1</span>
										<span class="title">입금대기</span></li>

									<li id="one" data-step="2" ><span class="step">2</span> <span
										class="title">주문접수</span></li>

									<li id="three" data-step="3" ><span class="step">3</span> <span
										class="title">커먼완료</span></li>

									<li id="four" data-step="4" ><span class="step">4</span> <span
										class="title">배달중</span></li>
									<li id="five" data-step="4"><span class="step">5</span> <span
										class="title">배달완료</span></li>
									<li id="six" data-step="4"><span class="step">6</span> <span
										class="title">커먼실패</span></li>
									<li id="seven" data-step="4"><span class="step">7</span> <span
										class="title">주문취소</span></li>
									
								</ul>

								<!-- /section:plugins/fuelux.wizard.steps -->
							</div>

							<div class="table-responsive">
								<div class="table-action">

									<hr>
									
								</div>
								<table id="addManageTable"
									class="table table-striped table-bordered add-manage-table table demo"
									data-filter="#filter" data-filter-text-only="true">
									<thead>
										<tr>
											<th style="width: 10%">주문번호</th>
											<th style="width: 20%">점포명</th>
											<th style="width: 10%">주문주소</th>
											<th style="width: 20%">요청사항</th>
											<th >주문상태</th>
											<th style="width: 10%">리뷰쓰기</th>
											<th style="width: 10%">상태보기</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="orderPagerList" items="${orderPagerList}">
										<tr>
											<td  class="add-img-selector">${orderPagerList.ordDetailNum}</td>
											<td  class="add-img-td">${orderPagerList.stoName}</td>
											<td  class="add-img-td">${orderPagerList.ordAdd2}</td>
											<td  class="ads-details-td">${orderPagerList.ordRequest}</td>
											<td  id="number" class="price-td" >
												<c:choose>
													<c:when test="${orderPagerList.ordStatus eq 0}">
														입금 대기													
													</c:when>
													<c:when test="${orderPagerList.ordStatus eq 1}">
														주문 접수													
													</c:when>
													<c:when test="${orderPagerList.ordStatus eq 2}">
														커먼완료													
													</c:when>
													<c:when test="${orderPagerList.ordStatus eq 3}">
														배달중													
													</c:when>
													<c:when test="${orderPagerList.ordStatus eq 4}">
														배달완료													
													</c:when>
													<c:when test="${orderPagerList.ordStatus eq 5}">
														커먼실패													
													</c:when>
													<c:otherwise>
														주문취소
													</c:otherwise>
												</c:choose>
											</td>
											<td  class="action-td">
											<a href="<c:url value='/review/write'/>?ordDetailNum=${ orderPagerList.ordDetailNum}&cmNum=${ orderPagerList.cmNum}" 
											class="btn btn-primary btn-xs"> <i class="fa fa-edit"></i>리뷰작성
														</a></td>
											<td  class="ads-details-td"><button type="button" onclick="viewMenu(${orderPagerList.ordStatus});">보기</button></td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
								<c:choose>
									<c:when test="${pager.startPage } gt ${pager.blockSize }">
										<a href="<c:url value='/user/myBoard'/>">[처음]</a>
										<a href="<c:url value='/user/myBoard'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
									</c:when>
									<c:otherwise>
										[처음] [이전]
									</c:otherwise>
								</c:choose>
								
								<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }">
									<a href="<c:url value='/user/myCommon'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
								</c:forEach>
								
								<c:choose>
									<c:when test="${pager.startPage }>${pager.blockSize }">
										<a href="<c:url value='/user/myBoard'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
										<a href="<c:url value='/user/myBoard'/>?pagenum=${pager.endPage}">[마지막]</a>
									</c:when>
									<c:otherwise>
										[다음] [마지막]
									</c:otherwise>
								</c:choose>
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

	<!-- Le javascript
================================================== -->
	<script type="text/javascript">
		
       $('#fuelux-wizard-container').hide();
		
       function viewMenu(status) {
    	  if(status==0){ 
          document.getElementById('zero').className = 'active'
 	   	  
    	  }else if(status==1){
          document.getElementById('zero').className = 'active'
          document.getElementById('one').className = 'active'
    		
    	  }else if(status==2){
          document.getElementById('zero').className = 'active'
          document.getElementById('one').className = 'active'
          document.getElementById('two').className = 'active'
    		  
    	  }else if(status==3){
          document.getElementById('zero').className = 'active'
          document.getElementById('one').className = 'active'
          document.getElementById('two').className = 'active'
          document.getElementById('three').className = 'active'
    		  
    	  }else if(status==4){
          document.getElementById('zero').className = 'active'
          document.getElementById('one').className = 'active'
          document.getElementById('two').className = 'active'
          document.getElementById('three').className = 'active'
          document.getElementById('four').className = 'active'
    		  
    	  }else if(status==5){

          document.getElementById('five').className = 'active'
    		  
    	  }else{
	  
    	  document.getElementById('six').className = 'active'	  
    	  }
          
          
          
          $('#fuelux-wizard-container').show();
       };
       
		
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
</body>
</html>
