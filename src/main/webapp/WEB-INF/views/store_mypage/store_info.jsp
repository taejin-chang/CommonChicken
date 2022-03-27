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
											커 관리<a href="#MyAds" data-toggle="collapse"
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
							<div class="welcome-msg">
								<h3 class="page-sub-header2 clearfix no-padding"></h3>
								<form id="storeModify" method="post" enctype="multipart/form-data">
								<div id="accordion" class="panel-group">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseB1" data-toggle="collapse"> 점포 정보</a>
											</h4>
										</div>
										<div class="panel-collapse collapse in" id="collapseB1">
											<input type="hidden" name="stoNum" value="6656" >
											<input type="hidden" name="stoStatus" value="1" >
											<input type="hidden" name="stoOrigin" value="${storeInfo.stoOrigin }" >
											<input type="hidden" name="stoUpdate" value="${storeInfo.stoUpload }" >
											<div class="panel-body">
											<!-- -->	<div class="form-horizontal" role="form">
													<div class="form-group">
														<label class="col-sm-3 control-label">사업장 명</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoName" value="${storeInfo.stoName }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">대표자 명</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoCeo" value="${storeInfo.stoCeo }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">사업장 전화번호</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoPhone" value="${storeInfo.stoPhone }">
														</div>
													</div>
													<div class="form-group">
														<label for="Phone" class="col-sm-3 control-label">사업자
															등록증 사진</label>
														<div class="col-sm-9">
															<img src="${pageContext.request.contextPath }/images/${storeInfo.stoUpload }" alt="사진">
															<input type="file" class="form-control" name="file" id="Phone">
														</div>
													</div>
<!-- 													<div class="form-group">
														<label class="col-sm-3 control-label">매장 상태</label>
														<div class="col-sm-9">
															<select name="stoStatus">
																<option></option>
															</select>
														</div>
													</div> -->
													<div class="form-group">
														<label class="col-sm-3 control-label">업태</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoCondition" value="${storeInfo.stoCondition }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label" >업종</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" id="Phone" name=stoSector value="${storeInfo.stoSector }">
														</div>
													</div>
													<!-- 주소 api -->
													<div class="form-group">
														<label class="col-sm-3 control-label" >사업장 주소</label>
														<div class="col-sm-9">
															<span> <input type="button" onclick="sample3_execDaumPostcode()" id="find_juso" value="우편번호 찾기"><br>
																<input type="text" class="form-control" id="sample3_postcode" value="${storeInfo.stoZipCode }"  name="stoZipCode" placeholder="우편번호">
																 <input type="text" class="form-control" id="sample3_address" value="${storeInfo.stoAdd1 }" name="stoAdd1" placeholder="주소">
																 <input type="text" class="form-control" id="sample3_detailAddress" value="${storeInfo.stoAdd2 }" name="stoAdd2" placeholder="상세주소"> 
																 <input type="text" class="form-control" id="sample3_extraAddress" placeholder="참고항목">
															</span>
														</div>
													</div>
													<div id="wrap"
														style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
														<img
															src="//t1.daumcdn.net/postcode/resource/images/close.png"
															id="btnFoldWrap"
															style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
															onclick="foldDaumPostcode()" alt="접기 버튼">
													</div>


													

													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9"></div>
													</div>
													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9">
															<button type="button" id="btnModify1" class="btn btn-default">변경</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseB2" data-toggle="collapse"> 점포 상세정보 입력 ▼</a>
											</h4>
										</div>
										<div class="panel-collapse collapse" id="collapseB2">
											<div class="panel-body">
												<div class="form-horizontal" role="form">
													<div class="form-group">
														<div class="col-sm-12"></div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">영업시간</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoOpenning" value="${storeInfo.stoOpenning }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">최소주문금액</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoMinorder" value="${storeInfo.stoMinorder }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">결제수단</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoPayment" value="${storeInfo.stoPayment }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">치킨</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoBoneOrg" value="${storeInfo.stoBoneOrg}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">순살</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="stoBonelessOrg" value="${storeInfo.stoBonelessOrg }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">알림메세지</label>
														<div class="col-sm-9">
															<textarea rows="10" cols="45" name="stoMessage" >${storeInfo.stoMessage }</textarea> 
																
														</div>
													</div>
													
													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9">
															<button type="button" id="btnModify2" class="btn btn-default">수정</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								
								
								<!--/.row-box End-->
							</form>
							</div>
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
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 찾기 화면을 넣을 element
		var element_wrap = document.getElementById('wrap');

		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_wrap.style.display = 'none';
		}

		function sample3_execDaumPostcode() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop,
					document.documentElement.scrollTop);
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample3_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample3_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample3_postcode').value = data.zonecode;
							document.getElementById("sample3_address").value = addr;
							document.getElementById("sample3_detailAddress").value = "";
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample3_detailAddress")
									.focus();

							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_wrap.style.display = 'none';

							// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
							document.body.scrollTop = currentScroll;
						},
						// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
						onresize : function(size) {
							element_wrap.style.height = size.height + 'px';
						},
						width : '100%',
						height : '100%'
					}).embed(element_wrap);

			// iframe을 넣은 element를 보이게 한다.
			element_wrap.style.display = 'block';
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() { 
			$('#btnModify1').click(function() {
				var result = confirm('정말 수정하시겠습니까 ?');
				if(result) { 
					$('#storeModify').submit();  
				} else { 
					alert('하이');
				} 
			})
			
			$('#btnModify2').click(function() {
				var result = confirm('정말 수정하시겠습니까 ?');
				if(result) { 
					$('#storeModify').submit();  
				} else { 
					alert('하이');
				} 
			})
		});
	</script>
</body>
</html>
