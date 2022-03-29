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
		<br> <br> <br> <br> <br> <br>

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
												<li><a  href="store-account-home.html"><i
														class="icon-home"></i> 관리자 회원 정보</a></li>

											</ul>
											<ul class="acc-list">
												<li><a class="active"href="store-account-info.html"><i
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
												<li><a href="store-account-myads.html"><i
														class="icon-docs"></i> 주문 현황 </a></li>
											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
									<div class="collapse-box">
										<h5 class="collapse-title">
											리뷰 관리<a href="#MyAds" data-toggle="collapse"
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
											커먼 관리<a href="#MyAds" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="store-account-review.html"><i class="icon-heart"></i>커먼 등록</a></li>
												
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
												<li><a href="store-account-close.html"><i
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
								<i class="icon-cancel-circled "></i> Close account
							</h2>
							<textarea rows="10" cols="45" readonly="readonly">회원탈퇴 시 개인정보 및 컴온치킨에서 만들어진 모든 데이터는 삭제됩니다.(단, 아래 항목은 표기된 법률에 따라 특정 기간 동안 보관됩니다.)
1.계약 또는 청약 철회등에 관한 기록보존
2.대금결제 및 재화 등의 공급에 관한 기록 보존 이유
3.전자금융 거래에 관한 기록 보존 이유
4.소비자의 불만 또는 분쟁처리에 관한 기록 보존 이유
5.신용정보의 수집/처리 및 이용등에 관한 기록 보존 이유
6.전자계산서 시스템구축 운영하는 사업자가 지켜야할 사항
7.전자계산서 시스템 구축 운영하는 사업자가 지켜야 할 사항
          
          </textarea>
							<p>정말 탈퇴 하시겠습니까?</p>

							<div>
								<label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									Yes
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									No
								</label>
							</div>
							<br>
							<button type="submit" class="btn btn-primary">탈퇴신청</button>


						</div>
						<!--/.inner-box-->
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
