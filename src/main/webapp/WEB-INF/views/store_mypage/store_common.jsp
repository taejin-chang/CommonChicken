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
<link rel="shortcut icon" href="assets/ico/favicon.png">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
												<li><a  href="${pageContext.request.contextPath}/store/productlist">
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
												<li><a class="active" href="${pageContext.request.contextPath}/store/commonlist"><i class="icon-heart"></i>커먼 리스트</a></li>
												
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
							<div class="welcome-msg">
								<h3 class="page-sub-header2 clearfix no-padding"></h3>
								<div id="accordion" class="panel-group">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseB1" data-toggle="collapse">커먼 등록</a>
											</h4>
										</div>
										<div class="panel-collapse collapse in" id="collapseB1">
											<div class="panel-body">
												<form class="form-horizontal" role="form" method="post" id="data">
													<div class="form-group">
														<label class="col-sm-3 control-label">커먼 마감 시간</label>
														<div class="col-sm-3">
															<input type="time" id="cmClose" class="form-control" name="cmClose">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">배달 출발 시간</label>
														<div class="col-sm-3">
															<input type="time" id="cmDeliveryTime" class="form-control" name="cmDeliveryTime">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">모집인원 (명)</label>
														<div class="col-sm-3">
															<input style="text-align: center;" type="number" class="form-control" name="cmGoalPeople" id="cmGoalPeople">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9">
															<button type="button" id="btmId" class="btn btn-default">등록</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
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

		<!-- /.wrapper -->
		<!-- Le javascript
================================================== -->

		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
			
		</script>
		
			<script type="text/javascript">
		$(document).ready(function() {
			var cmGoalPeople = $("#cmGoalPeople").val();

			$('#btmId').click(function() {
					if ($("#cmClose").val()=="") {
						alert("커먼마감시간을 입력해 주세요.");
						$("#cmClose").focus();
						return;
					}

					if ($("#cmDeliveryTime").val()=="") {
						alert("배달출발시간을 입력해 주세요.");
						$("#cmDeliveryTime").focus();
						return;
					}

					if ($("#cmGoalPeople").val()=="") {
						alert("모집인원을 등록해 주세요.");
						$("#cmGoalPeople").focus();
						return;
					}else if ($.isNumeric(cmGoalPeople)){
						alert ( "숫자만 입력할 수 있습니다." );
						$("#cmGoalPeople").val()=="";
						$("#cmGoalPeople").focus();
						return;
					}

					alert("등록이 완료되었습니다.");
/* 					date.toISOString().replace('T', ' ').substring(0, 19)
 */			 		$("#data").submit();		
		 		})
		});
		
		
	</script>
		<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>

		<!-- include carousel slider plugin  -->
		<script src="${pageContext.request.contextPath }/assets/js/owl.carousel.min.js"></script>


		<!-- include equal height plugin  -->
		<script src="${pageContext.request.contextPath }/assets/js/jquery.matchHeight-min.js"></script>

		<!-- include jquery list shorting plugin plugin  -->
		<script src="${pageContext.request.contextPath }/assets/js/hideMaxListItem.js"></script>

		<!-- include jquery.fs plugin for custom scroller and selecter  -->
		<script src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
		<!-- include custom script for site  -->
		<script src="${pageContext.request.contextPath }/assets/js/script.js"></script>
		


</body>
</html>
