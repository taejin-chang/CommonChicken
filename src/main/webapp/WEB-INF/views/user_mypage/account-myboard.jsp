<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
												<li><a href="account-home.html"><i
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
												<li><a  href="account-myads.html"><i
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
												<li><a class="active" href="account-myboard.html"><i
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
												<li><a href="account-store_apply.html"><i
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
												<li><a href="account-close.html"><i
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
								<i class="icon-docs"></i> 공동주문 모집
							</h2>
							
							<div class="table-responsive">
								<div class="table-action">
									<!-- 검색버튼 -->
									<!--  
									<div class="table-search pull-right col-xs-7">
										<div class="form-group">
											<label class="col-xs-5 control-label text-right">검색
											</label>
											<div class="col-xs-7 searchpan">
												<input type="text" class="form-control" id="filter">
											</div>
										</div>
									</div>
									-->
								</div>
								<table id="addManageTable"
									class="table table-striped table-bordered add-manage-table table demo"
									data-filter="#filter" data-filter-text-only="true">
									<thead>
										<tr>
											<th style="width: 20%">글번호</th>
											<th style="width: 20%">제목</th>
											<th style="width: 20%">조회수</th>
											<th style="width: 20%">결제금액</th>
											<th style="width: 20%">요청사항</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td  class="add-img-selector"><div
													class="checkbox">
													<label> <input type="checkbox">
													</label>
												</div></td>
											<td  class="add-img-td"></td>
											<td  class="ads-details-td"><div>
													<p>
														<strong> <a href="ads-details.html"
															title="Brend New Nexus 4">Brend New Nexus 4</a>
														</strong>
													</p>
													
												</div></td>
											<td  class="price-td"><div>
													<strong> $199</strong>
												</div></td>
											<td  class="action-td"><div>
													<p>
														<a class="btn btn-primary btn-xs"> <i
															class="fa fa-edit"></i> Edit
														</a>
													</p>
													<p>
														<a class="btn btn-info btn-xs"> <i
															class="fa fa-mail-forward"></i> Share
														</a>
													</p>
													<p>
														<a class="btn btn-danger btn-xs"> <i
															class=" fa fa-trash"></i> Delete
														</a>
													</p>
												</div></td>
										</tr>
										
										
									</tbody>
								</table>
								<h2 class="title-2">
									<i class="icon-heart"></i> 내 리뷰
								</h2>
								<table id="addManageTable"
									class="table table-striped table-bordered add-manage-table table demo"
									data-filter="#filter" data-filter-text-only="true">
									<thead>
										<tr>
											<th style="width: 20%">글번호</th>
											<th style="width: 20%">제목</th>
											<th style="width: 20%">조회수</th>
											<th style="width: 20%">결제금액</th>
											<th style="width: 20%">요청사항</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td  class="add-img-selector"><div
													class="checkbox">
													<label> <input type="checkbox">
													</label>
												</div></td>
											<td  class="add-img-td"></td>
											<td  class="ads-details-td"><div>
													<p>
														<strong> <a href="ads-details.html"
															title="Brend New Nexus 4">Brend New Nexus 4</a>
														</strong>
													</p>
													
												</div></td>
											<td  class="price-td"><div>
													<strong> $199</strong>
												</div></td>
											<td  class="action-td"><div>
													<p>
														<a class="btn btn-primary btn-xs"> <i
															class="fa fa-edit"></i> Edit
														</a>
													</p>
													<p>
														<a class="btn btn-info btn-xs"> <i
															class="fa fa-mail-forward"></i> Share
														</a>
													</p>
													<p>
														<a class="btn btn-danger btn-xs"> <i
															class=" fa fa-trash"></i> Delete
														</a>
													</p>
												</div></td>
										</tr>
										
										
									</tbody>
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
</body>
</html>
