<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.nice-scroll {
            height: 1000px;
            overflow-y: hidden;
</style>
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
   
    <!-- Filter Begin -->
    <div class="filter nice-scroll">
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
            	<a href="<c:url value='/common_boardlist'/>">
            		<i class="fa fa-filter"></i> 커먼모집
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

    <!----------------------------------------리뷰 리스트 영역----------------------------------------------->
    <section class="listing__review nice-scroll">
        <div class="listing__text__top">
            <div class="listing__text__top__left">
                <h5>리뷰</h5>
                
            </div>
            <div class="listing__text__top__right">Nearby <i class="fa fa-sort-amount-asc"></i></div>
        </div>
        
        <c:forEach var="reviewList" items="${reviewList}">
        <div class="listing__list row " style="float:left;margin-right:25px;">
            <div class="listing__item" style="width: 340px; margin-right:20px;">
				<div class="listing__item__text" style="padding-top:0px;">	
  					<div class="listing__item__text__info" style="border-top:0px">
						<div class="listing__item__text__info__left">
	                          <img src="${pageContext.request.contextPath }/img/listing/list_icon-1.png" alt="">
	                          <span>${reviewList.memEmail }</span>
                    	</div>
						<div class="listing__item__text__info__right" style="color:#ffc107">
            	            <div class="listing__item__rating__star">
                                <c:choose>
		                            		<c:when test="${reviewList.revRated>=4.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=4.0 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=3.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=3.0 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=2.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=2.0 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=1.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=1.0 }">
		                            		<span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${reviewList.revRated>=0.5 }">
		                            		<span class="icon_star"></span></c:when>
		                            		<c:when test="${reviewList.revRated>0.0 }">
		                            		<span class="icon_star-half_alt"></span></c:when>
		                                </c:choose>
                            </div>
                    	</div>                
              		</div>
				</div>
                <div class="listing__item__pic set-bg" >
                	<img src="${pageContext.request.contextPath }/review/${reviewList.revUpload}" style="width:90%;height:90%;object-fit:cover;">
                </div>
                        <div class="listing__item__text__rating" style="font-size:12px;color:#ffc107;font-weight:100;text-align:right;padding-top:10px;padding-right:10px;">
                            ${reviewList.prdName }
                        </div>
                
                <div class="listing__item__text" style="padding-top:0px;height:130px">
                            ${reviewList.revContent }
                </div>
                <div class="listing__item__text" style="padding-top:0px;">
	                <div class="listing__item__text" style="text-align:right; padding-top:10px; padding-right:0px;">
                 	</div>
                </div>
                <hr>
                <!-- 사장님 답글 영역 -->
                <!--  
                <div class="listing__item__text" style="text-align:right; padding-top:10px; padding-right:0px;">
        				<div class="listing__item__text__info__left">
	                          <img src="${pageContext.request.contextPath }/img/listing/list_icon-3.png" alt="">
	                          <span>사장님</span>
                    	</div>
                </div>
                
                <div class="listing__item__text" 
               		style="width: 340px; margin-right:20px; text-align:center;background-color:white;" >
					<p><input type="hidden" class="form-control-plain-text" style="border:0 solid black;" readonly >다신 오지 마라다신 오지 마라다신 오지 마라다신 오지 마라다신 오지 마라다신 오지 마라다신 오지 마라</p>
           		</div>
           		-->
            </div>
        </div>
        </c:forEach>
    </section>
    <!--------------------------------------------------------리뷰  영역 종료 시점-------------------------------------------------- -->


    <!-- Js Plugins -->
    <script type="text/javascript">
    /*
  		$('.primary-replybtn').click(function() {
    	  
  			if($(this).parent().next().css('display') !='none') {
  				$(this).parent().next().css('display', 'none');
  			} else {
  	  			$(this).parent().next().css('display', 'block');
  			}
  			
    	});
    
    */
    
    </script>
</body>

</html>