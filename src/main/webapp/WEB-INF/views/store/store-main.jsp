<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style(yo).css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <!-- 
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="./index.html">Home</a></li>
                                <li><a href="./listing.html">Listing</a></li>
                                <li><a href="#">Categories</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./about.html">About</a></li>
                                        <li><a href="./listing-details.html">Listing Details</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./contact.html">Contact</a></li>
                                    </ul>
                                </li>
                                <li class="active"><a href="./blog.html">Blog</a></li>
                                <li><a href="#">Shop</a></li>
                            </ul>
                        </nav>
                        <div class="header__menu__right">
                            <a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a>
                            <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>


    <div class="breadcrumb-area set-bg" data-setbg="img/breadcrumb/breadcrumb-blog.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>점포정보</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> Home</a>
                            <span>점포정보</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                    <div class="blog__item__large">
                        <div class="sub-title">
                            <span><strong>BBC 치킨 강남역점</strong></span>
                    	</div>
                        <div class="blog__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/img/blog/bp-1.jpg">
                        </div>
                        <div class="blog__item__text">
                            <ul class="blog__item__tags">
                                <li>★★★★★</li>
                            </ul>
                            <h3><a href="#">커먼시 커먼구 커먼와로 12 2층</a></h3>
                            <ul class="blog__item__widget">
                                <li><i class="fa fa-phone"></i> 02-000-0000</li>
                                <li><i class="fa fa-user"></i> 후기 14개</li>
                            </ul>
                            <div class="">
                            <ul class="blog__item__widget">
	                            <li style="align-content: center;">커먼정보 :  </li>
	                            <li><select class="">
		                            	<option>마감시간 15시&nbsp;배달시간 18시</option>
		                            	<option>마감시간 16시&nbsp;배달시간 19시</option>
		                            	<option>마감시간 17시&nbsp;배달시간 20시</option>
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
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa fa-tags"></i><FONT size="4px"><strong>메인메뉴</strong></FONT></li>
                                    </ul><br>
                                   
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="javascript:prdmenu();"><FONT size="4px" color="black"><strong>후라이드+양념 반반</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>25,500원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="#"><FONT size="4px" color="black"><strong>후라이드+양념 반반</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>25,500원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div> <br>                                 
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="#"><FONT size="4px" color="black"><strong>후라이드+양념 반반</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>25,500원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div>
                                </div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa fa-tags"></i><FONT size="4px"><strong>사이드 메뉴</strong></FONT></li>
                                    </ul>
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="#"><FONT size="4px" color="black"><strong>후라이드+양념 반반</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>25,500원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="#"><FONT size="4px" color="black"><strong>후라이드+양념 반반</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>25,500원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>                                    
                                </div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa fa-tags"></i><FONT size="4px"><strong>음료 메뉴</strong></FONT></li>
                                    </ul>
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="'javascript:prdmenu();'"><FONT size="4px" color="black"><strong>후라이드+양념 반반</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>25,500원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>
                                    <div class="row">
	                                    <div class="col-xs-6 text-left">
		                                    <a href="#"><FONT size="4px" color="black"><strong>후라이드+양념 반반</strong></FONT></a>
		                                    <br>
		                                    <ul class="blog__item__widget">
		                                        <li><i class="fa fa-money"></i>25,500원</li>
		                                    </ul>
	                                    </div>
		                                <div class="col-xs-6 text-right"><img src="${pageContext.request.contextPath }/img/blog/bp-1.jpg" alt="" width="200px"></div>
                                    </div><br>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 리뷰 -->
                    <div class="col-lg-12 col-md-12" id="review" style="display:none;">
                    <div class="listing__details__text">
                                <div class="listing__details__rating">
                            <h4>Rate</h4>
                            <div class="listing__details__rating__overall">
                                <h2>4.7</h2>
                                <div class="listing__details__rating__star">
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                    <span class="icon_star"></span>
                                </div>
                                <span>(120 Rating)</span>
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
			                            <p>치킨 주문시 1마리당 콜라 245ml + 무 1개 기본으로 드립니다. (후라이드는 양념소스도 넣어드립니다.)
											245ml -> 1.25l 변경은 추가선택에서 변경 선택하시면 됩니다!
											나무젓가락 필요시 주문시에 말씀해주셔야 넣어드려요!!
											<br>
											2마리 주문시 콜라는 245ml 두개가 아닌 1.25l 드립니다! (두마리 주문후에 한마리에 1.25l 변경을 요청하시면 1.25l+245ml)
											사이다로 변경을 원하시면 주문할때 말씀해주세요!</p>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>업체정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">영업시간</i></th>
			                            <td>09:00~16:00</td></tr>
			                            <tr>
			                            <th><i class="info-item">주소</i></th>
			                            <td>커먼시 커먼구 커먼로</td></tr>
			                            </table>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>결제정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">최소주문금액</i></th>
			                            <td>16,000원</td></tr>
			                            <tr>
			                            <th><i class="info-item">결제수단</i></th>
			                            <td>요기서결제</td></tr>
			                            </table>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>사업자정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">상호명</i></th>
			                            <td>BBC치킨 강남역점</td></tr>
			                            <tr>
			                            <th><i class="info-item">사업자등록번호</i></th>
			                            <td>106-11-11111</td></tr>
			                            </table>
		                        </div>
		                        </div>
			                    <div class="listing__details__about">
			                            <h4>원산지정보</h4>
			                            <table>
			                            <tr>
			                            <th><i class="info-item">치킨</i></th>
			                            <td>국내산</td></tr>
			                            <tr>
			                            <th><i class="info-item">순살</i></th>
			                            <td>국내산</td></tr>
			                            </table>
		                        </div>
				                <div class="col-lg-12">
				                    <div class="contact__map">
				                        <iframe
				                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd"
				                            height="550" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
				                    </div>
				                </div>
                		</div>
                    
                    
                </div>
                									                        <div class="col-sm-4 hidden-xs restaurant-cart" style="top: 0px; position: relative;">
									        <!-- ngInclude: undefined --><ng-include src="'cart.html'" class="ng-scope">
									<div class="">
									  <div class="sub-title">
									    <span>주문표</span>
									    <a ng-hide="cart.is_empty()" ng-click="clear_cart()" class="">
									      <span class="ico-clear"></span>
									    </a>
									  </div>
									  <div class="cart">
									    <ul class="list-group">
									     
									      <li class="list-group-item clearfix ng-scope" ng-repeat="item in cart.get().items" on-finish-render="scrollCartArea()">
								          	<div class="menu-name ng-binding" ng-bind-html="cart.get_menu_name(item)|strip_html">후라이드</div>
									        <div class="row">
									            <div class="col-xs-6 pull-left">
									              <button class="btn btn-del-menu">삭제</button>
									              <span class="order-price ng-binding"><input type="hidden" id="order-price" value="74000" style="border:0 solid black">74,000원</span>
									           	</div>
									           	<div class="col-xs-6 text-right">
									              <button class="btn btn-minus"></button>
									              <input class="order-num ng-binding" value="2" style="width:20px; border:0px" type="text" name="ct_qty" id="ct_qty" readonly="readonly"/>
									              <button class="btn btn-plus"></button>
									            </div>
									        </div>
									      </li>
									      
									      
									      
									      
									      
									      
									      
									      
									      <li class="list-group-item clearfix ng-scope" ng-repeat="item in cart.get().items" on-finish-render="scrollCartArea()">
									        <div class="menu-name ng-binding" ng-bind-html="cart.get_menu_name(item)|strip_html">보족원쌈: 2인（생육 290g, 수육 200g）</div>
									        <div class="row">
									            <div class="col-xs-6 pull-left">
									              <a class="btn btn-del-menu" ng-click="cart.remove_item(item)" ng-hide="item.ms_type == 'disposable'">삭제</a>
									              <span class="order-price ng-binding"><input type="hidden" id="order-price" value="90000" style="border:0 solid black">90,000원</span>
									            </div>
									           	<div class="col-xs-6 text-right">
									              <button class="btn btn-minus"></button>
									              <input class="order-num ng-binding" value="1" style="width:20px; border:0px" type="text" name="ct_qty" id="ct_qty" readonly="readonly"/>
									              <button class="btn btn-plus"></button>
									            </div>
									        </div>
									      </li><li class="list-group-item clearfix ng-scope" ng-repeat="item in cart.get().items" on-finish-render="scrollCartArea()">
									          <div class="menu-name ng-binding" ng-bind-html="cart.get_menu_name(item)|strip_html">의성마늘떡맵쌈: 소（생육 500g, 수육 350g）</div>
									        <div class="row">
									            <div class="col-xs-6 pull-left">
									              <a class="btn btn-del-menu" ng-click="cart.remove_item(item)" ng-hide="item.ms_type == 'disposable'">삭제</a>
									              <span class="order-price ng-binding"><input type="hidden" id="order-price" value="38000" style="border:0 solid black">38,000원</span>
									            </div>
									           	<div class="col-xs-6 text-right">
									              <button class="btn btn-minus"></button>
									              <input class="order-num ng-binding" value="1" style="width:20px; border:0px" type="text" name="ct_qty" id="ct_qty" readonly="readonly"/>
									              <button class="btn btn-plus"></button>
									            </div>
									        </div>
									      </li>
									       
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
									
									    <div class="cart-btn clearfix">
									      <a class="btn btn-lg btn-ygy1 btn-block" ng-disabled="cart.get_restaurant_id() != restaurant.id || cart.get_amount() < 1" ng-click="checkout()">주문하기</a>
									    </div>
									  </div>
									</div>
									
									</ng-include>
									  </div>
                <!--  
                <div class="col-lg-4">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__categories">
                        <div class="blog__sidebar__recent bg-dark">
                            <h5 align="center"><FONT color="white">주 문 표</FONT></h5>

                        </div> 
									  
                            <ul>
                            	<li><div>후라이드</div><br><div>25,500 <span>1</span>
                            	</li>
                                <li><a href="#">후라이드,양념 반반 <span>18</span></a></li>
                                <li><a href="#">Business <span>20</span></a></li>
                                <li><a href="#">Loan <span>07</span></a></li>
                                <li><a href="#">Consulting <span>22</span></a></li>
                                <li><a href="#">Credit <span>19</span></a></li>
                            </ul>
                        </div>
                    </div>
						<button class="blog__sidebar__recent bg-dark"><FONT color="white">주문하기</button>
                </div>
                -->
            </div>
        </div>
    </section>
    <!-- Blog Section End -->


    <!-- Footer Section Begin -->
    <!-- 
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Challenging the way things have always been done can lead to creative new options that reward
                            you.</p>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 col-md-6">
                    <div class="footer__address">
                        <ul>
                            <li>
                                <span>Call Us:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Email:</span>
                                <p>info.colorlib@gmail .com</p>
                            </li>
                            <li>
                                <span>Fax:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Connect Us:</span>
                                <div class="footer__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-skype"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6">
                    <div class="footer__widget">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">How it work</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Blog</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Sign In</a></li>
                            <li><a href="#">How it Work</a></li>
                            <li><a href="#">Advantages</a></li>
                            <li><a href="#">Direo App</a></li>
                            <li><a href="#">Packages</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  </p>
                        </div>
                        <div class="footer__copyright__links">
                            <a href="#">Terms</a>
                            <a href="#">Privacy Policy</a>
                            <a href="#">Cookie Policy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
     -->
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <!-- <script src="js/jquery.nice-select.min.js"></script> -->
        
    <script type="text/javascript">
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
	    
	    /*function change_qty2(t){ 
	    	//var min_qty = '수량버튼'*1; 
	    	var min_qty = 1; 
	    	var max_qty = '200'; 
	    	var this_qty = parseInt($(this).siblings('#ct_qty').val())*1;;
	    	if(t=="m"){ 
	    		this_qty -= 1; 
	    		
	    		if(this_qty<min_qty){ 
	    		
		    		alert("수량은 1개 이상 입력해 주십시오."); 
		    		return; 
	    		} 
	    		
	    	} else if(t=="p") { 
	    		this_qty += 1; 
	    		
	    		if(this_qty>max_qty){ 
	    			alert("죄송합니다. 재고가 부족합니다.");
	    			return; 
    			} 
    		}
    		$("#ct_qty").val(this_qty);
	    };*/
	   	/*
	    function prdmenu1() {
	    $(".list-group").append(
	    		"<li class='list-group-item clearfix ng-scope'>"+
	          	"<div class='menu-name ng-binding'>후라이드</div>"+
	          	"<div class='row'>"+
		            "<div class='col-xs-6 pull-left'>"+
		              "<button class='btn btn-del-menu'>삭제</button>"+
		              "<span class='order-price ng-binding'>74,000원</span>"+
		           	"</div>"+
		           	"<div class='col-xs-6 text-right'>"+
		              "<button class='btn btn-minus'></button>"+
		              "<input class='order-num ng-binding' value='1' style='width:20px; border:0px' type='text' name='ct_qty' id='ct_qty' readonly='readonly'/>"+
		              "<button class='btn btn-plus'></button>"+
		            "</div>"+
		        "</div>"+
		      "</li>"+
		        "<script type='text/javascript'>"+
		        "$('.btn-plus').on('click', function(){var quantity = $(this).parent('div').find('input').val();"+
			    	"$(this).parent('div').find('input').val(++quantity);});"+
			    "$('.btn-minus').on('click', function(){var quantity = $(this).parent('div').find('input').val();"+
			    	"if(quantity > 1){$(this).parent('div').find('input').val(--quantity);}});"+
			    "$('.btn-del-menu').on('click', function(){$(this).parent().parent().parent('li').remove();});"
	    )};
	    */    
	    function prdmenu() {
		    $(".list-group").append(
		    		"<li class='list-group-item clearfix ng-scope'>"+
		          	"<div class='menu-name ng-binding'>후라이드</div>"+
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
		    
	    $(document).on('click','.btn-plus', function(){
	    	var quantity = $(this).parent('div').find('input').val();
	    	$(this).parent("div").find("input").val(++quantity);
	    	
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    });
	    
	    $(document).on('click','.btn-minus', function(){
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
	    /*
	    function totalprice() {
	    	var sum = 0;
	    	$("input#order-price").each(function(){
	    		sum += (parseInt($(this).val()))*(parseInt($(this).parent().parent().next().find("input").val()));
	    	});
	    	$('input[id=order-total]').val(sum+'원');
	    };
	    */
    </script>
</body>

</html>