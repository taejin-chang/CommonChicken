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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/assets/ico/favicon.png">
<title>BOOTCLASIFIED - Responsive Classified Theme</title>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/style.css"
	rel="stylesheet">

<!-- styles needed for carousel slider -->
<link
	href="${pageContext.request.contextPath }/assets/css/owl.carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/css/owl.theme.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/admin/css/table_extend.css">

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
												<li><a
													href="${pageContext.request.contextPath}/store/owner">
														<i class="icon-home"></i> 관리자 회원 정보
												</a></li>

											</ul>
											<ul class="acc-list">
												<li><a
													href="${pageContext.request.contextPath}/store/info"><i
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
												<li><a
													href="${pageContext.request.contextPath}/store/order">
														<i class="icon-docs"></i> 주문 현황
												</a></li>
											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											주문<a href="#MyAds" data-toggle="collapse" class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a
													href="${pageContext.request.contextPath}/store/productlist">
														<i class="icon-docs"></i> 상품리스트
												</a></li>
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
												<li><a
													href="${pageContext.request.contextPath}/store/review"><i
														class="icon-heart"></i> 리뷰 </a></li>

											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											커먼 관리<a
												href="${pageContext.request.contextPath}/store/commonlist"
												data-toggle="collapse" class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a
													href="${pageContext.request.contextPath}/store/commonlist"><i
														class="icon-heart"></i>커먼 리스트</a></li>

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
												<li><a
													href="${pageContext.request.contextPath}/store/out"><i
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
								<i class="icon-heart"></i> 리뷰
							</h2>
							<form method="post" id="data">
								<input type="hidden" id="revNum" name="revNum" value="">
								<input type="hidden" id="ordDetailNum" name="ordDetailNum"
									value=""> <input type="hidden" id="memEmail2"
									name="memEmail2" value=""> <input type="hidden"
									id="cmNum" name="cmNum" value=""> <input type="hidden"
									id="rplContent" name="rplContent" value="">
								<table class="table table-hover table-expandable table-striped">
									<thead>
										<tr>
											<th style="text-align: center;" width="10%">번호</th>
											<th style="text-align: center;" width="10%">이미지</th>
											<th style="text-align: center;" width="15%">상품명</th>
											<th style="text-align: center;">리뷰</th>
											<th style="text-align: center;" width="15%">별점</th>
											<th style="text-align: center;" width="15%">작성일</th>
											<!-- 								<th style="text-align: center;"width="15%">게시글상태</th>
 -->
										</tr>
									</thead>
									<c:forEach var="reviewList" items="${reviewList}"
										varStatus="vs">
										<tbody>
											<input type="hidden" id="revNum_val" value="${reviewList.revNum}">
											<input type="hidden" id="ordDetailNum_val" value="${reviewList.ordDetailNum}">
											<input type="hidden" id="memEmail2_val" value="${reviewList.memEmail2}">
											<input type="hidden" id="cmNum_val" value="${reviewList.cmNum}">
											<tr>
												<td style="text-align: center;">${reviewList.revNum}</td>
												<td style="text-align: center;"><img
													src="${pageContext.request.contextPath }/review/${reviewList.revUpload}"></td>
												<td style="text-align: center;">${reviewList.prdName}</td>
												<td style="text-align: center; width: 40%">${reviewList.revContent}</td>
												<td style="text-align: center;"><c:if
														test="${reviewList.revRated==1}">★☆☆☆☆</c:if> <c:if
														test="${reviewList.revRated==2}">★★☆☆☆</c:if> <c:if
														test="${reviewList.revRated==3}">★★★☆☆</c:if> <c:if
														test="${reviewList.revRated==4}">★★★★☆</c:if> <c:if
														test="${reviewList.revRated==5}">★★★★★</c:if></td>
												<td style="text-align: center;">${fn:substring(reviewList.revDate,5,10)}</td>
												<!-- 								<td style="text-align: center;">배송중</td>
 -->
											</tr>

											<tr>
												<c:if test="${!empty reviewList.rplContent}">
													<td colspan="7"><h4
															style="display: inline; margin-left: 3%;">
															<img
																src="${pageContext.request.contextPath }/images/icon-reply.png">
															<span style="background: olive; color: white;">답글</span>
														</h4> <span style="margin-left: 2%;">${reviewList.stoName }</span>
														<span style="margin-left: 2%;">${reviewList.rplDate }</span>
														<div style="margin: 2% 3%;">
															<p>${reviewList.rplContent }</p>
														</div></td>
												</c:if>
												<c:if test="${empty reviewList.rplContent}">
													<td colspan="7"><div id="noneReply${vs.index}"
															style="text-align: center;">
															등록된 댓글이 없습니다.! &nbsp;
															<button type="button" id="popupmodal"
																class="btn btn-primary btn-xs"
																onClick="$(this).MessageBox('${vs.index}');">댓글달기</button>
														</div>
														<div id="reply${vs.index}" class="reply"
															style="display: none">
															<textarea rows="5" cols="" style="width: 100%"
																id="rplContent_val"></textarea>
															<br>
															<div style="text-align: right;">
																<button type="button" id="reply"
																	style="text-align: right;"
																	class="btn btn-primary btn-sm" onclick=addreply(this)>답글달기</button>
															</div>
															<!-- <button type="submit" class="btn btn-primary btn-sm">답글 저장</button> -->
														</div></td>
												</c:if>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</form>
							<div style="text-align: center;">
								<c:choose>
									<c:when test="${pager.startPage } gt ${pager.blockSize }">
										<a href="<c:url value='/store/review'/>">[처음]</a>
										<a
											href="<c:url value='/store/review'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
									</c:when>
									<c:otherwise>
										[처음] [이전]
									</c:otherwise>
								</c:choose>

								<c:forEach var="i" begin="${pager.startPage }"
									end="${pager.endPage }">
									<a
										href="<c:url value='/store/review'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
								</c:forEach>

								<c:choose>
									<c:when test="${pager.startPage }>${pager.blockSize }">
										<a
											href="<c:url value='/store/review'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
										<a
											href="<c:url value='/store/review'/>?pagenum=${pager.endPage}">[마지막]</a>
									</c:when>
									<c:otherwise>
										[다음] [마지막]
									</c:otherwise>
								</c:choose>
								<div></div>
								<!--/.row-box End-->

							</div>
						</div>
					</div>
					<!--/.row-->
				</div>
				<!--/.container-->
			</div>

		</div>
		<!-- /.wrapper -->

		<!-- Le javascript
================================================== -->

		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
		
	</script>
		<script
			src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>

		<!-- include checkRadio plugin //Custom check & Radio  -->
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/assets/js/icheck.min.js"></script>


		<!-- include carousel slider plugin  -->
		<script
			src="${pageContext.request.contextPath }/assets/js/owl.carousel.min.js"></script>

		<!-- include equal height plugin  -->
		<script
			src="${pageContext.request.contextPath }/assets/js/jquery.matchHeight-min.js"></script>

		<!-- include jquery list shorting plugin plugin  -->
		<script
			src="${pageContext.request.contextPath }/assets/js/hideMaxListItem.js"></script>

		<!-- include footable   -->

		<script
			src="${pageContext.request.contextPath }/assets/js/footable.js?v=2-0-1"
			type="text/javascript"></script>
		<script
			src="${pageContext.request.contextPath }/assets/js/footable.filter.js?v=2-0-1"
			type="text/javascript"></script>

		<script
			src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
		<script
			src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
		<!-- include custom script for site  -->
		<script src="${pageContext.request.contextPath }/assets/js/script.js"></script>


		<script
			src="${pageContext.request.contextPath }/admin/js/vendor.bundle.base.js"></script>




		<script type="text/javascript">

	
 	var revNum;
	var ordDetailNum;
	var memEmail2;
	var cmNum;

    $(document).on('click','#popupmodal', function() {
    	revNum = $(this).parent().parent().parent().find('input[name=revNum]').val();
    	ordDetailNum = $(this).parent().parent().parent().parent().find('input[name=ordDetailNum]').val();
    	memEmail2 = $(this).parent().parent().parent().parent().find('input[name=memEmail2]').val();
    	cmNum = $(this).parent().parent().parent().parent().find('input[name=cmNum]').val();

  		  console.log(revNum);
  		  console.log(ordDetailNum);
  		  console.log(memEmail2);
  		  console.log(cmNum);
  		  console.log('하이'); 
		  
/*   		  
		  $('#popupgoalpeople').text(goalPeople);
		  $('#popupstoname').text(stoName);
		  $('#popupcmclose').text(cmClose);
		  $('#popupdeliverytime').text(cmDeliveryTime);
		  $('#popupcmbdtitle').text(cmbdTitle);
		  $('#popupstonum').text(cmNum);
		  $('#popupcmnum').text(stoNum); */

		  });
		  
/* 	  function applyCommon() {
	    	$('#exampleModal').on('show.bs.modal', function (event) {
	  		  
	  		  cmNum = $(this).parent().parent().parent().find('input[id=popupcmnum]').val();
	  		  stoNum = $(this).parent().parent().parent().find('input[id=popupstonum]').val();
			  
	    	});*/
	    	
/* 	    	
			location.href="${pageContext.request.contextPath}/store?stoNum="+stoNum+"&cmNum="+cmNum;
	    	
	    };  */
	
	</script>




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
 
  $(document).ready(function () {
/*      $("#btn").click(function () {
          $("#replay").toggle();
          $("#btn").hide();
          $("#noneReply").hide();
          alert(this);
      }); 
       */
        $.fn.MessageBox = function(msg) {
          $("#reply"+msg).toggle();
          $("#btn"+msg).hide();
          $("#noneReply"+msg).hide();
      };  

  });  
  

  </script>
		<script type="text/javascript">
	  function addreply(ths){
	    	revNum = $(ths).parent().parent().parent().parent().parent().find('input[id=revNum_val]').val();
	    	ordDetailNum = $(ths).parent().parent().parent().parent().parent().find('input[id=ordDetailNum_val]').val();
	    	memEmail2 = $(ths).parent().parent().parent().parent().parent().find('input[id=memEmail2_val]').val();
	    	cmNum = $(ths).parent().parent().parent().parent().parent().find('input[id=cmNum_val]').val();
	    	rplContent = $(ths).parent().parent().find('textarea[id=rplContent_val]').val();

	  		  console.log(rplContent);
 	  		  console.log(revNum);
	  		  console.log(ordDetailNum);
	  		  console.log(memEmail2);
	  		  console.log(cmNum);
	  		  console.log('하이');
		  

  		$("#revNum").val(revNum);
 		$("#ordDetailNum").val(ordDetailNum);
  		$("#memEmail2").val(memEmail2);
 		$("#cmNum").val(cmNum);
 		$("#rplContent").val(rplContent);
 
 		if(revNum!=""){
			if ($("#rplContent").val()=="") {
				alert("댓글을 입력해 주세요.");
				$("#rplContent").focus();
				return;
			}
			alert("등록이 완료되었습니다.");
	 		$("#data").submit();
 		} 
 		
	  }
  </script>
</body>
</html>
