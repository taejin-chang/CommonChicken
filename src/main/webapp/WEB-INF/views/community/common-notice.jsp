<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Directing | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/barfiller.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css">
<style type="text/css">
	a:link{
	color:black;
	text-decoration:none;
	}
	a:visited{
	color:black;
	text-decoration:none;
	}
	a:hover{
	color:black;
	text-decoration:none;
	}
	a:active{
	color:black;
	text-decoration:none;
	}
</style>
</head>

<body class="ov-hid">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	

	<!-- Filter Begin -->
		<div class="filter nice-scroll">
        <div class="filter__title">
            <h5>
            	<a href="<c:url value='/common_boardlist'/>">
            		<i class="fa fa-filter"></i> 커먼모집
            	</a>
            </h5>
        </div>
        <br>
        <div class="filter__title">
            <h5>
            	<a href="<c:url value='/review'/>">
            		<i class="fa fa-filter"></i> 리뷰
            	</a>
            </h5>
        </div>
        <br>
        <div class="filter__title">
            <h5>
            	<a href="<c:url value='/notice'/>">
            		<i class="fa fa-filter"></i> 공지사항
            	</a>
            </h5>
        </div>
        
    </div>
	<!-- Filter End -->
	<div class=" grid-margin stretch-card" style="margin: 150px 1% 1% 1%;">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">커먼모집</h4>
				<br>
				<div class="table-responsive" id="datalist">
					<table class="table" style="text-align: center;">
						<thead>
							<tr>
								<th style="width: 10%;">글번호</th>
								<th style="width: 30%;">제목</th>
								<th style="width: 20%;">지역</th>
								<th style="width: 10%;">날짜</th>
								<th style="width: 10%;">상태</th>
							</tr>
						</thead>
						<c:forEach var="boardlist" items="${commonboardList}" varStatus="status">
							<tbody>
							
								<tr>
									<td>
									<input name="goalpeopledata" type="hidden" value="${boardlist.cmGoalPeople }">
									<input name="stonamedata"  type="hidden" value="${boardlist.stoName }">
									<input name="cmclosedata"  type="hidden" value="${boardlist.cmClose }">
									<input name="cmdeliverytimedata"  type="hidden" value="${boardlist.cmDeliveryTime }">
									<input name="cmnumdata"  type="hidden" value="${boardlist.cmNum }">
									<input name="stonumdata"  type="hidden" value="${boardlist.stoNum }">
									${boardlist.cmbdNum }
									</td>
									
									<td>
										<a id="popupmodal" data-toggle="modal" data-target="#exampleModal" data-whatever1="${boardlist.cmNum }" data-whatever2="${boardlist.stoNum }">${boardlist.cmbdTitle }</a>
									</td>
									<td>${boardlist.stoName }
									<td>${boardlist.cmbdDate }</td>
									<c:choose>
										<c:when test="${boardlist.cmbdStatus ==0}">
											<td>커먼 취소</td></c:when>
										<c:when test="${boardlist.cmbdStatus ==1}">
											<td>커먼 모집중</td></c:when>
										<c:when test="${boardlist.cmbdStatus ==2}">
											<td>커먼 성립</td></c:when>
									</c:choose>
									<!-- <td><label class="badge badge-warning">In progress</label></td> -->
								</tr>
							</tbody>
					    </c:forEach>
					</table>
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="popupcmbdtitle">title</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					      	<input type="hidden">
					      	<table>
						      	<thead>
							      	<tr>
							      		<th id="cmbdNum" style="width: 10%;">모집인원</th>
							      		<th style="width: 10%;">점포명</th>
							      		<th style="width: 20%;">마감시간</th>
							      		<th style="width: 20%;">배달출발시간</th>
							   		</tr>
						   		</thead>
						   		<tbody>
						   			<tr>
						   				<td id="popupgoalpeople"></td>
						   				<td id="popupstoname"></td>
						   				<td id="popupcmclose"></td>
						   				<td id="popupdeliverytime">
   										<input id="popupstonum" >
										<input id="popupcmnum"  >
						   				</td>
						   			</tr>
						   		</tbody>
					      	</table>
					      </div>
					      <!--  <div class="invalid-feedback">
					        이미 모집요청글이 등록되어 있습니다.
					      </div>-->
					      <div class="modal-footer">
					        <button type="button" class="btn btn-primary" id="applyBtn" onclick="applyCommon();">커먼신청</button>
					        <button type="submit" class="btn btn-secondary" data-dismiss="modal" onclick="${pageContext.request.contextPath}/">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
					
					<div style="text-align:center">
					<c:choose>
						<c:when test="${pager.startPage } gt ${pager.blockSize }">
							<a href="<c:url value='/common_boardlist'/>">[처음]</a>
							<a href="<c:url value='/common_boardlist'/>?pagenum=${ pager.startPage - pager.blockSize}">[이전]</a>
						</c:when>
						<c:otherwise>
							[처음] [이전]
						</c:otherwise>
					</c:choose>
					
					<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }">
						<a href="<c:url value='/common_boardlist'/>?pageNum=${ pager.startPage -1+i}">[${pager.startPage -1+i}]</a>
					</c:forEach>
					
					<c:choose>
						<c:when test="${pager.startPage }>${pager.blockSize }">
							<a href="<c:url value='/common_boardlist'/>?pagenum=${ pager.startPage + pager.blockSize}">[다음]</a>
							<a href="<c:url value='/common_boardlist'/>?pagenum=${pager.endPage}">[마지막]</a>
						</c:when>
						<c:otherwise>
							[다음] [마지막]
						</c:otherwise>
					</c:choose>
					</div>
					
					
					
				</div>
			</div>
		</div>
	</div>

	<!-- Listing Section End -->


	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.nicescroll.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.barfiller.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
	
	<script type="text/javascript">
	var goalPeople;
	var stoName;
	var cmClose;
	var cmDeliveryTime;
	var cmbdTitle;
	var cmNum;
	var stoNum;
	
    $(document).on('click', '#datalist #popupmodal', function() {
		  goalPeople = $(this).parent().parent().parent().find('input[name=goalpeopledata]').val();
		  stoName = $(this).parent().parent().parent().find('input[name=stonamedata]').val();
		  cmClose = $(this).parent().parent().parent().find('input[name=cmclosedata]').val();
		  cmDeliveryTime = $(this).parent().parent().parent().find('input[name=cmdeliverytimedata]').val();
		  cmbdTitle = $(this).parent().parent().parent().find('input[name=popupmodal]').val();
		  stoNum = $(this).parent().parent().parent().find('input[name=stonumdata]').val();
		  cmNum = $(this).parent().parent().parent().find('input[name=cmnumdata]').val();
		  
  		  console.log(cmNum);
  		  console.log(stoNum);
		  
		  $('#popupgoalpeople').text(goalPeople);
		  $('#popupstoname').text(stoName);
		  $('#popupcmclose').text(cmClose);
		  $('#popupdeliverytime').text(cmDeliveryTime);
		  $('#popupcmbdtitle').text(cmbdTitle);
		  $('#popupstonum').text(cmNum);
		  $('#popupcmnum').text(stoNum);

		  });
		  
	  function applyCommon() {
	    	$('#exampleModal').on('show.bs.modal', function (event) {
	  		  
	  		  cmNum = $(this).parent().parent().parent().find('input[id=popupcmnum]').val();
	  		  stoNum = $(this).parent().parent().parent().find('input[id=popupstonum]').val();
			  
	    	});
	    	
			location.href="${pageContext.request.contextPath}/store?stoNum="+stoNum+"&cmNum="+cmNum;
	    	
	    };
	
	</script>
</body>

</html>