<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Login Page - Ace Admin</title>

<meta name="description" content="User login page" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/font-awesome.css" />

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/ace.css" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="../assets/css/ace-part2.css" />
		<![endif]-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/ace-rtl.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="../assets/css/ace-ie.css" />
		<![endif]-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="../assets/js/html5shiv.js"></script>
		<script src="../assets/js/respond.js"></script>
		<![endif]-->
<style type="text/css">
.login-box .toolbar>div {
	width: auto;
	display: inline-block;
	padding: 9px 0 11px;
}
</style>
</head>

<body class="login-layout light-login">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<a href="${pageContext.request.contextPath}/"><img
									src="${pageContext.request.contextPath }/img/logo2.png" alt=""></a>
							</h1>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">

										<div class="space-6"></div>

										<form name="loginForm">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memEmail" type="text" class="form-control"
														placeholder="이메일" /> <i class="ace-icon fa fa-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memPw" type="password" class="form-control"
														placeholder="비밀번호" /> <i class="ace-icon fa fa-lock"></i>
												</span>
												</label>

												<div class="space"></div>

												<div class="clearfix">


													<button type="button" onclick="loginsubmitCheck();"
														class="width-35 pull-right btn btn-sm btn-primary">
														<i class="ace-icon fa fa-key"></i> <span
															class="bigger-110">로그인</span>
													</button>

												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>
										<p style="color: red;">${message}</p>
										<div class="social-or-login center">
											<span class="bigger-110">소셜 로그인</span>
										</div>

										<div class="space-6"></div>

										<div class="social-login center">
											<a class="btn btn-primary"> <i
												class="ace-icon fa fa-facebook"></i>
											</a> <a class="btn btn-info"> <i
												class="ace-icon fa fa-twitter"></i>
											</a> <a class="btn btn-danger"> <i
												class="ace-icon fa fa-google-plus"></i>
											</a> <a href="${pageContext.request.contextPath}/"> <img
												src="${pageContext.request.contextPath}/img/backback.png"
												width="50px">
											</a>
										</div>
									</div>
									<!-- /.widget-main -->

									<div class="toolbar clearfix">
										<div>
											<a href="#" data-target="#forgot-box1"
												class="forgot-password-link"> <i
												class="ace-icon fa fa-arrow-left"></i><font
												style="color: white">아이디 찾기</font>
											</a> <a href="#" data-target="#forgot-box"
												class="forgot-password-link"> &nbsp;&nbsp;&nbsp;<i
												class="ace-icon fa fa-arrow-left"></i> <font
												style="color: white">비밀번호 찾기</font>
											</a>
										</div>
										<div>
											<a href="#" data-target="#signup-box"
												class="user-signup-link"> <font style="color: white">회원가입</font>
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>


									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.login-box -->


							<div id="forgot-box1" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">

										<div class="space-6"></div>
										<p>회원님의 정보를 입력해 주세요.</p>

										<form name="findIdForm" id="findIdForm">
											<fieldset>

												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" name="memName" id="findmemName"
														class="form-control" placeholder="이름" />

												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" name="memPhone" id="findmemPhone"
														class="form-control" placeholder="전화번호" />
												</span>
												</label>
												<p style="width: 200px;">
													<span id="result_id"></span>
												</p>
												<button type="button" onclick="findId();"
													class="width-35 pull-right btn btn-sm btn-primary">
													<span class="bigger-110">아이디 찾기</span>
												</button>


											</fieldset>
										</form>
									</div>
									<!-- /.widget-main -->

									<div class="toolbar center">
										<a href="#" data-target="#login-box"
											class="back-to-login-link"> 로그인 <i
											class="ace-icon fa fa-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.forgot-box -->



							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">

										<div class="space-6"></div>

										<form name="findPwForm">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memEmail" id="findPwmemEmail" type="email"
														class="form-control" placeholder="이메일" /> <i
														class="ace-icon fa fa-envelope"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memName" id="findPwmemName" type="email"
														class="form-control" placeholder="이름" />

												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memPhone" id="findPwmemPhone" type="email"
														class="form-control" placeholder="전화번호" />
												</span>
												</label>
												<p style="width: 200px;">
													<span id="result_pw"></span>
												</p>
												<button type="button" onclick="findPw();"
													class="width-35 pull-right btn btn-sm btn-primary">
													<span class="bigger-110">비밀번호 찾기</span>
												</button>

											</fieldset>
										</form>
									</div>
									<!-- /.widget-main -->

									<div class="toolbar center">
										<a href="#" data-target="#login-box"
											class="back-to-login-link"> 로그인 <i
											class="ace-icon fa fa-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.forgot-box -->




							<!-- 회원가입 폼~ -->
							<!-- 아이디 ,비밀번호, 비밀번호 확인, 이름 , 핸드폰번호,주소,프로필사진 -->
							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">


										<div class="space-6"></div>
										<p>회원가입 정보:</p>

										<form name="signinForm" enctype="multipart/form-data">
											<fieldset>
												<!-- 아이디 -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memEmail" id="memEmail" type="text" width="400px"
														class="form-control" check_result="fail" placeholder="이메일"
														required />
														<button type="button" class="id_overlap_button"
															onclick="id_overlap_check()">중복검사</button> <img
														src="${pageContext.request.contextPath }/img/checkcheck.png"
														width="50px" id="id_check_sucess" style="display: none;">
														<i class="ace-icon fa fa-envelope"></i>
												</span>
												</label>
												<!-- 닉네임 -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memNickname" id="memNickName" type="email"
														class="form-control" placeholder="닉네임" />
												</span>
												</label>
												<!-- 비밀번호 -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memPw" id="memPw" type="password"
														class="form-control"
														placeholder="비밀번호(영문자+숫자+특수문자 8~25자리)" /> <i
														class="ace-icon fa fa-lock"></i>
												</span>
												</label>
												<!-- 비밀번호확인 -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" id="memPw2" class="form-control"
														placeholder="비밀번호 확인" /> <i
														class="ace-icon fa fa-retweet"></i>
												</span>
												</label>
												<!--이름  -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memName" type="text" id="memName"
														class="form-control" placeholder="이름" /> <i
														class="ace-icon fa fa-user"></i>
												</span>
												</label>
												<!-- 핸드폰번호 -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memPhone" id="memPhone" type="text"
														class="form-control" placeholder="핸드폰번호" />
												</span>
												</label>
												<!-- 주소 api -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="button" onclick="sample3_execDaumPostcode()"
														value="우편번호 찾기"><br> <input name="memZipCode"
														type="text" class="form-control" id="sample3_postcode"
														placeholder="우편번호"> <input name="memAdd1"
														type="text" class="form-control" id="sample3_address"
														placeholder="주소"> <input name="memAdd2"
														type="text" class="form-control"
														id="sample3_detailAddress" placeholder="상세주소"> <input
														type="text" class="form-control" id="sample3_extraAddress"
														placeholder="참고항목">
												</span>
												</label>
												<div id="wrap"
													style="display: none; border: 1px solid; width: 300px; height: 300px; margin: 5px 0; position: relative">
													<img
														src="//t1.daumcdn.net/postcode/resource/images/close.png"
														id="btnFoldWrap"
														style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
														onclick="foldDaumPostcode()" alt="접기 버튼">
												</div>


												<!-- 프로필사진 -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> 프로필사진: <input
														name="file" type="file" class="form-control" />
												</span>
												</label>
												<!-- 생년월일 -->
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="memBirthday" id="memBirthday" type="text"
														class="form-control" placeholder="생년월일6자리" />
												</span>
												</label> <label class="block"> <input type="checkbox"
													class="ace" /> <span class="lbl"> <a href="#">약관</a>에
														동의 합니다.
												</span>
												</label>

												<div class="space-24"></div>

												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="ace-icon fa fa-refresh"></i> <span
															class="bigger-110">초기화</span>
													</button>

													<button style="background-color: orange;" type="button"
														onclick="submitCheck();"
														class="width-65 pull-right btn btn-sm btn-success">
														<span class="bigger-110">회원등록</span> <i
															class="ace-icon fa fa-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>

									<div class="toolbar center">
										<a href="#" data-target="#login-box"
											class="back-to-login-link"> <i
											class="ace-icon fa fa-arrow-left"></i> 로그인으로 돌아가기
										</a>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.signup-box -->
						</div>
						<!-- /.position-relative -->

						<div class="navbar-fixed-top align-right">

							<br /> &nbsp; <a id="btn-login-dark" href="#">Dark</a> &nbsp; <span
								class="blue">/</span> &nbsp; <a id="btn-login-blur" href="#">Blur</a>
							&nbsp; <span class="blue">/</span> &nbsp; <a id="btn-login-light"
								href="#">Light</a> &nbsp; &nbsp; &nbsp;
						</div>
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.main-content -->
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery
				|| document.write("<script src='assets/js/jquery.js'>"
						+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='../assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
	<script type="text/javascript">
		//아이디찾기 ajax
		function findId() {
			if (findIdForm.memName.value == "") {
				alert("이름을 입력해 주세요.");
				findIdForm.memName.focus();
				return;
			}
			if (findIdForm.memPhone.value == "") {
				alert("핸드폰번호를 입력해 주세요.");
				findIdForm.memPhone.focus();
				return;
			}

			var memName = $("#findmemName").val();
			var memPhone = $("#findmemPhone").val();

			var sendData = "memName=" + memName + '&memPhone=' + memPhone;

			$.ajax({
				url : "findId",
				method : "post",
				data : sendData,
				dataType : "text",
				success : function(text) {
					if (text == null || text == "") {
						$("#result_id").html("해당정보가 없습니다.");
					} else {
						$("#result_id").html("아이디 = " + text);
					}
				},
				error : function(xhr) {
					alert("에러코드 = " + xhr.status);
				}
			});
		}

		//비번찾기 ajax
		function findPw() {
			if (findPwForm.memName.value == "") {
				alert("이름을 입력해 주세요.");
				findPwForm.memName.focus();
				return;
			}
			if (findPwForm.memPhone.value == "") {
				alert("핸드폰번호를 입력해 주세요.");
				findPwForm.memPhone.focus();
				return;
			}
			if (findPwForm.memEmail.value == "") {
				alert("이메일을 입력해 주세요.");
				findPwForm.memEmail.focus();
				return;
			}

			var memName = $("#findPwmemName").val();
			var memPhone = $("#findPwmemPhone").val();
			var memEmail = $("#findPwmemEmail").val();

			var sendData = "memName=" + memName + '&memPhone=' + memPhone
					+ "&memEmail=" + memEmail;

			$.ajax({
				url : "findPw",
				method : "post",
				data : sendData,
				dataType : "text",
				success : function(text) {
					if (text == null || text == "") {
						$("#result_pw").html("해당정보가 없습니다.");
					} else {
						$("#result_pw").html("비밀번호 = " + text);
					}
				},
				error : function(xhr) {
					alert("에러코드 = " + xhr.status);
				}
			});
		}

		//아이디 중복체크 ajax
		$('.form-control').change(function() {
			$('#id_check_sucess').hide();
			$('.id_overlap_button').show();
			$('.username_input').attr("check_result", "fail");
		})

		function id_overlap_check() {

			var memEmail = document.getElementById('memEmail').value;
			if (document.getElementById('memEmail').value == '') {
				alert('이메일을 입력해주세요.')
				return;
			}

			$.ajax({
				type : "get",
				url : "idExist/" + memEmail,
				dataType : "text",
				success : function(text) {
					if (text == "success") {
						//사용가능아이디
						alert("사용가능한 아이디 입니다.");
						$('.form-control').attr("check_result", "success");
						$('#id_check_sucess').show();
						$('.id_overlap_button').hide();
						return;
					} else {
						alert("이미 존재하는 아이디 입니다.");
						signinForm.memEmail.focus();
						return;
					}
				},
				error : function(xhr) {
					alert("에러코드 = " + xhr.status);
				}
			});
		}
	</script>

	<script type="text/javascript">
		//회원가입 유효성검사
		function submitCheck() {
			//값들을 변수에 먼저 담아주기
			var memEmail = document.getElementById("memEmail");
			var memPw = document.getElementById("memPw");
			var memPw2 = document.getElementById("memPw2");
			var memPhone = document.getElementById("memPhone");
			var memBirthday = document.getElementById("memBirthday");
			var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

			if (signinForm.memEmail.value == "") {
				alert("이메일을 입력해 주세요.");
				signinForm.memEmail.focus();
				return;
			}

			if (signinForm.memName.value == "") {
				alert("이름을 입력해 주세요.");
				signinForm.memName.focus();
				return;
			}

			if (signinForm.memPhone.value == "") {
				alert("전화번호를 입력해 주세요.");
				signinForm.memPhone.focus();
				return;
			}

			if (signinForm.memBirthday.value == "") {
				alert("생년월일을 입력해 주세요.");
				signinForm.memBirthday.focus();
				return;
			}
			if ($('.form-control').attr("check_result") == "fail") {
				alert("아이디 중복체크를 해주시기 바랍니다.");
				$('.form-control').focus();
				return false;
			}
			if (!pwdCheck.test(memPw.value)) {
				alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
				memPw.focus();
				return false;
			}

			if (memPw2.value !== memPw.value) {
				alert("비밀번호가 일치하지 않습니다..");
				memPw2.focus();
				return false;
			}

			signinForm.method = "post";
			signinForm.action = "${pageContext.request.contextPath}/sign_in";
			signinForm.submit();
		}
	</script>

	<script type="text/javascript">
		loginForm.memEmail.focus();

		function loginsubmitCheck() {
			if (loginForm.memEmail.value == "") {
				alert("이메일을 입력해 주세요.");
				loginForm.memEmail.focus();
				return;
			}
			if (loginForm.memPw.value == "") {
				alert("비밀번호를 입력해 주세요.");
				loginForm.memPw.focus();
				return;
			}

			loginForm.method = "post";
			loginForm.action = "${pageContext.request.contextPath}/login";
			loginForm.submit();
		}
	</script>

	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='assets/js/jquery.mobile.custom.js'>"
					+ "<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			});
		});

		//you don't need this, just used for changing background
		jQuery(function($) {
			$('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');

				e.preventDefault();
			});
			$('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');

				e.preventDefault();
			});
			$('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');

				e.preventDefault();
			});

		});
	</script>
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
</body>
</html>
