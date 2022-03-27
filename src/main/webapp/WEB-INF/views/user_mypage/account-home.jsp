<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
												<li><a class="active" href="${pageContext.request.contextPath}/user/mypage"><i
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
												<li><a href="${pageContext.request.contextPath}/user/myCommon"><i
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

					<div class="col-sm-9 page-content">
						<div class="inner-box">
							<div class="row">
								<div class="col-md-5 col-xs-4 col-xxs-12">
									<h3 class="no-padding text-center-480 useradmin">
										<img alt="프사" src="${pageContext.request.contextPath}/profile/${loginMember.memOrigin}">
										<a href=""> ${loginMember.memName }님, 환영합니다. </a>
									</h3>
								</div>
								<div class="col-md-7 col-xs-8 col-xxs-12">
									
								</div>
							</div>
						</div>
						<!-- 
	private String memEmail;
	private String memNickname;
	private String memPw;
	private String memName;
	private String memPhone;
	private String memZipCode;
	private String memAdd1;
	private String memAdd2;
	private String memOrigin;
	private String memJoinDate;
	private int memStatus;
	private String memLastLogin;
	private String memBirthday;
	private String memAuthCode;
	private String memUpload;
	private MultipartFile file;
						
						
						 -->
						<div class="inner-box">
							<div class="welcome-msg">
								<h3 class="page-sub-header2 clearfix no-padding"></h3>
								<div id="accordion" class="panel-group">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseB1" data-toggle="collapse"> 내 정보 </a>
											</h4>
										</div>
										<div class="panel-collapse collapse in" id="collapseB1">
											<div class="panel-body">
												<form class="form-horizontal" role="form">
													<div class="form-group">
														<label class="col-sm-3 control-label">이메일</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" placeholder=""value="${loginMember.memEmail }" readonly="readonly">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">이름</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" placeholder="" value="${loginMember.memName }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">핸드폰 번호</label>
														<div class="col-sm-9">
															<input type="email" class="form-control" placeholder="" value="${loginMember.memPhone }">
														</div>
													</div>
													<!-- 주소 api -->
													<div class="form-group">
														<label class="col-sm-3 control-label">주소</label>
														<div class="col-sm-9">
															<input type="text" class="form-control"
																id="sample3_postcode" placeholder="우편번호"value="${loginMember.memZipCode }"> <input
																type="text" class="form-control" id="sample3_address"
																placeholder="주소"value="${loginMember.memAdd1 }"> <input type="text"
																class="form-control" id="sample3_detailAddress"
																placeholder="상세주소"value="${loginMember.memAdd2 }"> <input type="hidden"
																class="form-control" id="sample3_extraAddress"
																placeholder="참고항목">
														</div>
													</div>


													<div class="form-group">
														<label for="Phone" class="col-sm-3 control-label">사진변경</label>
														<div class="col-sm-9">
															<input type="file" class="form-control" id="Phone">
														</div>
													</div>

													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9"></div>
													</div>
													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9">
															<button type="submit" class="btn btn-default">변경</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseB2" data-toggle="collapse"> 비밀번호 변경 </a>
											</h4>
										</div>
										<div class="panel-collapse collapse" id="collapseB2">
											<div class="panel-body">
												<form class="form-horizontal" role="form">
													<div class="form-group">
														<div class="col-sm-12"></div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">새 비밀번호</label>
														<div class="col-sm-9">
															<input type="password" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">비밀번호 확인</label>
														<div class="col-sm-9">
															<input type="password" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9">
															<button type="submit" class="btn btn-default">변경</button>
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
			<!-- /.main-container -->

			
			<!--/.footer-->
		</div>
		<!-- /.wrapper -->
		<!-- Le javascript
================================================== -->

		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
			
		</script>
		<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js">
		</script>

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
