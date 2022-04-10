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
												<li><a href="${pageContext.request.contextPath}/store/productlist">
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
									<i class="icon-heart"></i> 리뷰
								</h2>
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
 -->							</tr>
						</thead>
						<tbody>
							<c:forEach var="reviewPagerList" items="${reviewPagerList}">
<!-- 							<tr>
								<td class="py-1" style="text-align: center;">1</td>
								<td style="text-align: center;">맛있어요</td>
								<td style="text-align: center;">★★★★★</td>
								<td style="text-align: center;">5</td>
								<td style="text-align: center;">2022년 10월 20일</td>
								<td style="text-align: center;">게시중</td>
							</tr> -->
							<tr>
								<td style="text-align: center;">${reviewPagerList.revNum}</td>
								<td style="text-align: center;"><img src="${pageContext.request.contextPath }/review/${reviewPagerList.revUpload}"></td>
								<td style="text-align: center;">${reviewPagerList.prdName}</td>
								<td style="text-align: center; width:40%">${reviewPagerList.revContent}</td>
								<td style="text-align: center;">
									<c:if test="${reviewPagerList.revRated==1}">★☆☆☆☆</c:if>
									<c:if test="${reviewPagerList.revRated==2}">★★☆☆☆</c:if>
									<c:if test="${reviewPagerList.revRated==3}">★★★☆☆</c:if>
									<c:if test="${reviewPagerList.revRated==4}">★★★★☆</c:if>
									<c:if test="${reviewPagerList.revRated==5}">★★★★★</c:if>
								</td>
								<td style="text-align: center;">${fn:substring(reviewPagerList.revDate,5,10)}</td>
<!-- 								<td style="text-align: center;">배송중</td>
 -->							</tr>
 								
								<tr>
								<c:forEach var="reply" items="${reply}">
									<c:if test="${reviewPagerList.revNum == reply.revNum}">
									<td colspan="7"><h4 style="display: inline; margin-left: 3%;">
										<img src="${pageContext.request.contextPath }/images/icon-reply.png">
										<span style="background: olive; color: white;">답글</span></h4> 
										<span style="margin-left: 2%;">${storeInfo.stoName }</span>
										<span style="margin-left: 2%;">${reply.rplDate }</span>
										<div style="margin:2% 3%;"><p>${reply.rplContent }</p></div>
<!-- 										<button type="button" id="btn" class="btn btn-primary btn-sm">답글</button>	
										<hr>
										<div id="replay" style="display:none">
											<input type="text" style="width:80%" >							
											<textarea rows="5" cols="" style="width:80%"></textarea>
											<button type="button" id="saveReply" class="btn btn-primary btn-sm">답글 저장</button>	
										</div> -->
									</td>	
									</c:if>
									<c:if test="${reviewPagerList.revNum != reply.revNum}">
									<td colspan="7"><div id="noneReply" style="text-align: center;">등록된 댓글이 없습니다.!
									&nbsp<button type="button" id="btn" class="btn btn-primary btn-xs">댓글달기</button>	
									&nbsp<button type="button" id="btn" class="btn btn-primary btn-xs" onClick="$(this).MessageBox('msg');">댓글달기</button>	
									</div>
									<div id="replay" style="display:none">
										<input type="text" style="width:80%" >							
										<textarea rows="5" cols="" style="width:80%"></textarea>
										<button type="button" id="saveReply" class="btn btn-primary btn-sm">답글 저장</button>	
									</div> 
									</td>
									</c:if>
									</c:forEach>
								</tr>
								</c:forEach>
						</tbody>
					</table>
								
	<%-- 							<table id="addManageTable"
									class="table table-striped table-bordered add-manage-table table demo"
									data-filter="#filter" data-filter-text-only="true">
									<thead>
										<tr>
											<th style="width: 10%">번호</th>
											<th >사진</th>
											<th style="width: 15%">상품명</th>
											<th style="width: 20%">내용</th>
											<th style="width: 10%">별점</th>
											<th style="width: 10%">작성일</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="reviewPagerList" items="${reviewPagerList}">
										<tr>
											<td  class="add-img-selector">${reviewPagerList.revNum}</td>
											<td  class="add-img-td"><img src="${pageContext.request.contextPath }/review/${reviewPagerList.revUpload}"></td>
											<td  class="add-img-td">${reviewPagerList.prdName}</td>
											<td  class="ads-details-td">${reviewPagerList.revContent}</td>
											<td  class="price-td">${reviewPagerList.revRated}</td>
											<td  class="action-td">${fn:substring(reviewPagerList.revDate,5,10)}</td>
										</tr>
										
										</c:forEach>
									</tbody>
								</table> --%>
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
									<a href="<c:url value='/user/myBoard'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
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
/*       $("#btn").click(function () {
          $("#replay").toggle();
          $("#btn").hide();
          $("#noneReply").hide();
          alert(this);
      }); */
      
      $.fn.MessageBox = function(msg) {
          $("#replay").toggle();
          $("#btn").hide();
          $("#noneReply").hide();
          alert(msg);
      };

  }); 
  

  </script>
</body>
</html>
