<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style(yo).css" type="text/css">
	
	<style>
		.btn-min
		 {
		  background:url(${pageContext.request.contextPath }/img/sprite-icon.png) no-repeat -200px -32px;
		  background-size: 280px;
		  width: 24px;
		  height: 24px;
		  border: none;
		  border-radius: 0;
		}
		.btn-pl
		 {
		  background:url(${pageContext.request.contextPath }/img/sprite-icon.png) no-repeat -172px -32px;
		  background-size: 280px;
		  width: 24px;
		  height: 24px;
		  border: none;
		  border-radius: 0;
		}
		.btn-del-menu {
		   background:url(${pageContext.request.contextPath }/img/sprite-icon.png) no-repeat -228px -32px;
		   background-size: 280px;
		   width: 24px;
		   height: 24px;
		   border: none;
		   border-radius: 0;
		   text-indent: -999em;
		   overflow: hidden;
		}
	</style>

</head>

<body>
    <!-- Page Preloder 
    <div id="preloder">
        <div class="loader"></div>
    </div>
   -->
    <!-- Header Section End -->
    <!-- Blog Section Begin -->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
    		          <c:forEach var="commons" items="${commonStore}">
                    <div class="blog__item__large">
                        <div class="sub-title">
                            <span><strong>${commons.storeDTO.stoName}</strong></span>
                    	</div>
                        <div class="blog__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/img/blog/bp-1.jpg">
                        </div>
                        <div class="blog__item__text">
                            <ul class="blog__item__tags">
		                            	<c:choose>
		                            		<c:when test="${commons.revRatedAvg==0 }">
		                            		<span>☆</span></c:when>
		                            		<c:when test="${commons.revRatedAvg==0.5 }">
		                            		<span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==1 }">
		                            		<span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==1.5 }">
		                            		<span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==2 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==2.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==3 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==3.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==4 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==4.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:otherwise>
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:otherwise>
		                                </c:choose>
                            </ul>
                            <h3><a href="#">${commons.storeDTO.stoAdd1}&nbsp;${commons.storeDTO.stoAdd2}</a></h3>
                            <ul class="blog__item__widget">
                                <li><i class="fa fa-phone"></i> ${commons.storeDTO.stoPhone}</li>
                                <li><i class="fa fa-user"></i> 후기 ${commons.revRatedCount}개</li>
                            </ul>
                            <div class="">
                            <ul class="blog__item__widget">
	                            <li style="align-content: center;">커먼정보 :  </li>
	                            <li><select class="" onchange="window.open(value, '_blank');">
    		          				<c:forEach var="commonlist" items="${storecommonlist}">
		                            	<option value="${pageContext.request.contextPath}/store?stoNum=${commonlist.storeDTO.stoNum}&cmNum=${commonlist.cmNum}">마감시간&nbsp;:&nbsp;${commonlist.cmClose}&nbsp;배달시간&nbsp;:&nbsp;${commonlist.cmDeliveryTime}</option>
	                           		</c:forEach>
	                           		</select></li>
                            </ul>
                            </div>
                            
                        </div>
                    </div>
                    <div class="most__search__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" onclick="viewMenu()" id="store_menu">
                                    <span class="flaticon-039-fork"></span>
                                    <FONT size="5px"><strong>&nbsp;&nbsp;메&nbsp;&nbsp;뉴&nbsp;&nbsp;</strong></FONT>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="viewReview()" id="store_review">
                                    <span class="flaticon-030-kebab"></span>
                                    <FONT size="5px"><strong>&nbsp;&nbsp;리&nbsp;&nbsp;뷰&nbsp;&nbsp;</strong></FONT>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="viewInformation()" id="store_information">
                                    <span class="flaticon-032-food-truck"></span>
                                    <FONT size="5px"><strong>&nbsp;&nbsp;정&nbsp;&nbsp;보&nbsp;&nbsp;</strong></FONT>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="row" id="content">
                    
                    <!-- menu -->
                        <div class="col-lg-12 col-md-12" id="menu">
                    <div class="listing__details__text">
                    	<form id="menudiv">
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa fa-tags"></i><FONT size="4px"><strong>메인메뉴</strong></FONT></li>
                                    </ul><br>
                                    
                               <c:forEach var="product" items="${commons.productlist}">
                                 <c:choose>
                                  <c:when test="${product.prdCategory=='0'}">
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="javascript:prdmenu(this);"><FONT size="4px" color="black"><strong>${product.prdName}</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>${product.prdPrice}원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>
                                   </c:when>
                                </c:choose>
                               </c:forEach>
                                </div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa fa-tags"></i><FONT size="4px"><strong>사이드 메뉴</strong></FONT></li>
                                    </ul>
                               <c:forEach var="product" items="${commons.productlist}">
                                 <c:choose>
                                  <c:when test="${product.prdCategory=='1'}">
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="javascript:prdmenu(this);"><FONT size="4px" color="black"><strong>${product.prdName}</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>${product.prdPrice}원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>
                                   </c:when>
                                </c:choose>
                               </c:forEach>
                                    
                                </div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa fa-tags"></i><FONT size="4px"><strong>음료 메뉴</strong></FONT></li>
                                    </ul>
                               <c:forEach var="product" items="${commons.productlist}">
                                 <c:choose>
                                  <c:when test="${product.prdCategory=='2'}">
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="javascript:prdmenu(this);"><FONT size="4px" color="black"><strong>${product.prdName}</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>${product.prdPrice}원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>
                                   </c:when>
                                </c:choose>
                               </c:forEach>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- 리뷰 -->
                    <div class="col-lg-12 col-md-12" id="review" style="display:none;">
                    <div class="listing__details__text">
                                <div class="listing__details__rating">
                            <h4>Rate</h4>
                            <div class="listing__details__rating__overall">
                                <h2>${commons.revRatedAvg}</h2>
                                <div class="listing__details__rating__star">
                                	<c:choose>
		                            		<c:when test="${commons.revRatedAvg==0 }">
		                            		<span>☆</span></c:when>
		                            		<c:when test="${commons.revRatedAvg==0.5 }">
		                            		<span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==1 }">
		                            		<span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==1.5 }">
		                            		<span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==2 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==2.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==3 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==3.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==4 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${commons.revRatedAvg==4.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:otherwise>
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:otherwise>
		                                </c:choose>
                                </div>
                                <span>(${commons.revRatedCount} Rating)</span>
                            </div>
                            <!--  
                            <div class="listing__details__rating__bar">
                                <div class="listing__details__rating__bar__item">
                                    <span>4.4</span>
                                    <div id="bar1" class="barfiller">
                                        <span class="fill" data-percentage="100"></span>
                                    </div>
                                    <span class="right">Quality</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>3.9</span>
                                    <div id="bar2" class="barfiller">
                                        <span class="fill" data-percentage="75"></span>
                                    </div>
                                    <span class="right">Price</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>4.2</span>
                                    <div id="bar3" class="barfiller">
                                        <span class="fill" data-percentage="80"></span>
                                    </div>
                                    <span class="right">Space</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>4.8</span>
                                    <div id="bar4" class="barfiller">
                                        <span class="fill" data-percentage="80"></span>
                                    </div>
                                    <span class="right">Service</span>
                                </div>
                                <div class="listing__details__rating__bar__item">
                                    <span>4.0</span>
                                    <div id="bar5" class="barfiller">
                                        <span class="fill" data-percentage="85"></span>
                                    </div>
                                    <span class="right">Location</span>
                                </div>
                            </div>
                            -->
                            
                            
                            
                        </div>
                        <div class="listing__details__comment">
                            <h4>Comment</h4>
                            <div class="listing__details__comment__item">
                                <div class="listing__details__comment__item__pic">
                                    <img src="${pageContext.request.contextPath }/img/listing/details/comment.png" alt="">
                                </div>
                                <div class="listing__details__comment__item__text">
                                    <div class="listing__details__comment__item__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <span>March 22, 2019</span>
                                    <h5>Marry Jane</h5>
                                    <p>From ships to airports, museums to burger vans, from revered Michelin star
                                        establish to the fleeting dynamism of pop-ups.</p>
                                </div>
                            </div>
                            <div class="listing__details__comment__item">
                                <div class="listing__details__comment__item__pic">
                                    <img src="${pageContext.request.contextPath }/img/listing/details/comment.png" alt="">
                                </div>
                                <div class="listing__details__comment__item__text">
                                    <div class="listing__details__comment__item__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <span>March 22, 2019</span>
                                    <h5>Marry Jane</h5>
                                    <p>From ships to airports, museums to burger vans, from revered Michelin star
                                        establish to the fleeting dynamism of pop-ups.</p>
                                </div>
                            </div>
                            <div class="listing__details__comment__item">
                                <div class="listing__details__comment__item__pic">
                                    <img src="${pageContext.request.contextPath }/img/listing/details/comment.png" alt="">
                                </div>
                                <div class="listing__details__comment__item__text">
                                    <div class="listing__details__comment__item__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <span>March 22, 2019</span>
                                    <h5>Marry Jane</h5>
                                    <p>From ships to airports, museums to burger vans, from revered Michelin star
                                        establish to the fleeting dynamism of pop-ups.</p>
                                </div>
                            </div>
                        </div>
                            </div>
                        </div>
                        
                        <!-- information -->
                        <div class="col-lg-12 col-md-12" id="information" style="display:none;">
		                    <div class="listing__details__text">
			                    <div class="listing__details__about">
			                            <h4>사장님 알림</h4>
			                            <p>${commons.storeDTO.stoMessage }</p>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>업체정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">영업시간</i></th>
			                            <td>${commons.storeDTO.stoOpenning }</td></tr>
			                            <tr>
			                            <th><i class="info-item">주소</i></th>
			                            <td>${commons.storeDTO.stoAdd1 }&nbsp;${commons.storeDTO.stoAdd2 }</td></tr>
			                            </table>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>결제정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">최소주문금액</i></th>
			                            <td>${commons.storeDTO.stoMinorder }원</td></tr>
			                            <tr>
			                            <th><i class="info-item">결제수단</i></th>
			                            <td>${commons.storeDTO.stoPayment }</td></tr>
			                            </table>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>사업자정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">상호명</i></th>
			                            <td>${commons.storeDTO.stoName }</td></tr>
			                            <tr>
			                            <th><i class="info-item">사업자등록번호</i></th>
			                            <td>${commons.storeDTO.stoCode }</td></tr>
			                            </table>
		                        </div>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>원산지정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">치킨</i></th>
			                            <td>${commons.storeDTO.stoBoneOrg }</td></tr>
			                            <tr>
			                            <th><i class="info-item">순살</i></th>
			                            <td>${commons.storeDTO.stoBonelessOrg }</td></tr>
			                            </table>
		                        </div>
		                        
				                <div class="col-lg-12">
				                    <div class="contact__map">
				                        <iframe
				                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd"
				                            height="550" style="border:0;" aria-hidden="false" tabindex="0"></iframe>
				                    </div>
				                </div>
                		</div>
                    </c:forEach>
                    
                </div>
                				<div class="col-sm-4 hidden-xs restaurant-cart" style="top: 0px; position: relative;">
									  <div class="sub-title">
									    <span>주문표</span>
									   </div>
									   <form name="ordersheet">
									  <div class="cart">
									    <ul class="list-group">
									    </ul>
										<ul>
									      <li class="list-group-item d-flex justify-content-between">
				                                <span class="menu-name ng-binding">합계</span>
				                                <strong class="order-price ng-binding"><input type="text" id="order-total" value="" style="border:0 solid black"></strong>
				                          </li>
				                        </ul>  
										<!-- 
									    <div ng-show="cart.is_empty()" class="cart-empty ng-hide">
									        주문표에 담긴 메뉴가 없습니다.
									    </div>
										 -->
										 
										 </div>
										 </form>
									    <div class="cart-btn clearfix">
									      <button type="button" onclick="ordercommon();"class="btn btn-lg btn-ygy1 btn-block">주문하기</button>
									    </div>
									</div>
									  </div>
                
            </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <!-- <script src="js/jquery.nice-select.min.js"></script> -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
        
    <script type="text/javascript">
    	var t;
    	var t_price;

	    function viewMenu() {
		    $('#menu').show();
		    $('#review').hide();
		    $('#information').hide();
		    document.getElementById('store_menu').className = 'nav-link active'
		    document.getElementById('store_review').className = 'nav-link'
		    document.getElementById('store_information').className = 'nav-link'
	    };	
	    function viewReview() {
	        $('#menu').hide();
	        $('#review').show();
	        $('#information').hide();
	        document.getElementById('store_menu').className = 'nav-link'
	        document.getElementById('store_review').className = 'nav-link active'
	        document.getElementById('store_information').className = 'nav-link'
	    };	
	    function viewInformation() {
	        $('#menu').hide();
	        $('#review').hide();
	        $('#information').show();
	        document.getElementById('store_menu').className = 'nav-link'
	        document.getElementById('store_review').className = 'nav-link'
	        document.getElementById('store_information').className = 'nav-link active'
	    };	
	   	   
	    /*
	    function prdmenu() {
	    	
		    $(".list-group").append(
		    		"<li class='list-group-item clearfix ng-scope'>"+
		          	"<div class='menu-name ng-binding' value='$(this).val()'></div>"+
		          	"<div class='row'>"+
			            "<div class='col-xs-6 pull-left'>"+
			              "<button class='btn btn-del-menu'>삭제</button>"+
			              "<span class='order-price ng-binding'><input type='hidden' id='order-price' value='74000' style='border:0 solid black'>74,000원</span>"+
			           	"</div>"+
			           	"<div class='col-xs-6 text-right'>"+
			              "<button class='btn btn-minus'></button>"+
			              "<input class='order-num ng-binding' value='1' style='width:20px; border:0px' type='text' name='ct_qty' id='ct_qty' readonly='readonly'/>"+
			              "<button class='btn btn-plus'></button>"+
			            "</div>"+
			        "</div>"+
			      "</li>"
		    )
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    };
	    */
	    function prdmenu() {
			
		    $(".list-group").append(
		    		"<li class='list-group-item clearfix ng-scope'>"+
		          	"<div class='menu-name ng-binding' name='ordprdname'>"+t+"</div>"+
		          	"<div class='row'>"+
			            "<div class='col-xs-6 pull-left'>"+
			              "<button class='btn btn-del-menu'>삭제</button>"+
			              "<span class='order-price ng-binding'><input type='hidden' id='order-price' value='"+t_price+"' style='border:0 solid black' name='ordprdprice'>"+t_price+"</span>"+
			           	"</div>"+
			           	"<div class='col-xs-6 text-right'>"+
			              "<button class='btn btn-min'></button>"+
			              "<input name='ordprdamount'class='order-num ng-binding' value='1' style='width:20px; border:0px' type='text' readonly='readonly'/>"+
			              "<button class='btn btn-pl'></button>"+
			            "</div>"+
			        "</div>"+
			      "</li>"
		    )
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    };
		    
	    $(document).on('click','.btn-pl', function(){
	    	var quantity = $(this).parent('div').find('input').val();
	    	$(this).parent("div").find("input").val(++quantity);
	    	
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    });
	    
	    $(document).on('click','.btn-min', function(){
	    	var quantity = $(this).parent('div').find('input').val();
	    	if(quantity > 1){
	    		$(this).parent('div').find('input').val(--quantity);		
	    	}
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    });
	    $(document).on('click','.btn-del-menu', function(){
	    	$(this).parent().parent().parent('li').remove();
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    });
	    
	    $(document).ready(function totalprice() {
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    });
	    
	    $(document).on('click', '#menudiv a', function() {
    		    t = $(this).text();
    			t_price = $(this).parent().find("li").text();
    	});
	    /*
	    $(document).ready(function() {
    		$("#menudiv a").click(function() {
    			var t = $(this).text();
    			var t_price = $(this).parent().find("li").text();
    			console.log(t);
    			console.log(t_price);
    		})
    	});*/
	    /*
	    function totalprice() {
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    };
	    */
	    
	    function ordercommon() {
	    	ordersheet.method="post";
	    	ordersheet.action="${pageContext.request.contextPath}/order";
	    	ordersheet.submit();
		}
	    
    </script>
</body>

</html>