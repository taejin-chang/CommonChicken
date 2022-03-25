<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zxx">

<head>
	<style>
	    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
	    .wrap * {padding: 0;margin: 0;}
	    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
	    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
	    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
	    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
	    .info .close:hover {cursor: pointer;}
	    .info .body {position: relative;overflow: hidden;}
	    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
	    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
	    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
	    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
	    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	    .info .link {color: #5085BB;}
/* 	    .list {
			  max-height: 50px;
			  overflow-y: scroll !important;
			} */
			
			.nice-scroll {
			height: 800px;
			overflow-y: hidden;
}
			
	</style>
</head>

<body class="ov-hid">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
<!--     <header class="header header--normal">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="./index.html">Home</a></li>
                                <li class="active"><a href="./listing.html">Listing</a></li>
                                <li><a href="#">Categories</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./about.html">About</a></li>
                                        <li><a href="./listing-details.html">Listing Details</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./contact.html">Contact</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Blog</a></li>
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
    </header> -->
    <!-- Header Section End -->
    <section class="hero set-bg" style="padding: 100px 0; padding-bottom: 0px;"  data-setbg="img/logo11.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- <div class="hero__text"> -->
                        <!-- <div class="section-title">
                            <h2>함께하는 즐거움 "커먼치킨"</h2>
                            <p>동네 친구들과 즐거움을 나누세요~! common comeon~</p>
                        </div> -->
                        <div class="hero__search__form">
                            <form action="#">
                                <input type="text" id="myLocation" placeholder="Search...">
                                <div class="select__option">
                                    <select>
                                        <option value="">출발시간</option>
										  <option value='1'>13시</option>
										  <option value='2'>14시</option>
										  <option value='3'>15시</option>
										  <option value='4'>16시</option>
										  <option value='5'>17시</option>
										  <option value='6'>18시</option>
										  <option value='7'>19시</option>
										  <option value='8'>20시</option>
										  <option value='9'>22시</option>
										  <option value='10'>22시</option>
										  <option value='11'>23시</option>
										  <option value='12'>24시</option>
                                    </select>
                                </div>
<!--                                 <div class="select__option">
                                    <select>
                                        <option value="">위치 API</option>
                                    </select>
                                </div> -->
                                <button onclick="findLocation()" type="button" style="width: 20%; background-color: #327258;">현재 위치</button>
                                <button type="submit">Explore Now</button>
                            </form>
                        </div>
                        <!-- <ul class="hero__categories__tags">
                            <li><a href="#"><img src="img/hero/cat-1.png" alt=""> Restaurent</a></li>
                            <li><a href="#"><img src="img/hero/cat-2.png" alt=""> Food & Drink</a></li>
                            <li><a href="#"><img src="img/hero/cat-3.png" alt=""> Shopping</a></li>
                            <li><a href="#"><img src="img/hero/cat-4.png" alt=""> Beauty</a></li>
                            <li><a href="#"><img src="img/hero/cat-5.png" alt=""> Hotels</a></li>
                            <li><a href="#"><img src="img/hero/cat-6.png" alt=""> All Categories</a></li>
                        </ul> -->
                    <!-- </div> -->
                </div>
            </div>
        </div>
    </section>




    <!-- Filter Begin -->
    <div class="filter nice-scroll">
        <div class="filter__title">
            <h5><i class="fa fa-filter"></i> Filter</h5>
        </div>
        <br>
<!--         <div class="filter__search">
            <input type="text">
        </div>
        <div class="filter__select">
            <select>
                <option value="">All Categories</option>
            </select>
        </div> -->
<!--         <div class="filter__location">
            <input type="text" placeholder="위치">
            <i class="fa fa-map-marker"></i>
        </div> -->
        <div class="filter__radius">
            <p>거리 :</p>
            <div class="price-range-wrap">
                <div
                    class="price-range-radius ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content">
                    <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                </div>
                <div class="range-slider">
                    <div class="price-input">
                        <input type="text" id="radius">
                    </div>
                </div>
            </div>
        </div>
<!--         <div class="filter__price">
            <p>별점 :</p>
            <div class="price-range-wrap">
                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content">
                    <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                    <span tabindex="4" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                </div>
                <div class="range-slider">
                    <div class="price-input">
                        <input type="text" id="minamount" value="3명">
                        <input type="text" id="maxamount" value="5개">
                    </div>
                </div>
            </div>
        </div> -->
        	 <div>
           		 <p style="display: inline;">커먼 마감시간 :</p>
				<select name='endtime'>
				  <option value=''>마감시간</option>
				  <option value='1'>13시</option>
				  <option value='2'>14시</option>
				  <option value='3'>15시</option>
				  <option value='4'>16시</option>
				  <option value='5'>17시</option>
				  <option value='6'>18시</option>
				  <option value='7'>19시</option>
				  <option value='8'>20시</option>
				  <option value='9'>22시</option>
				  <option value='10'>22시</option>
				  <option value='11'>23시</option>
				  <option value='12'>24시</option>
				</select>
            </div>
            <br>            
        	 <div>
           		 <p style="display: inline;">배달시간 :</p>           		 
				<select name='shiptime'>
				  <option value=''>배달시간</option>
				  <option value='1'>13시</option>
				  <option value='2'>14시</option>
				  <option value='3'>15시</option>
				  <option value='4'>16시</option>
				  <option value='5'>17시</option>
				  <option value='6'>18시</option>
				  <option value='7'>19시</option>
				  <option value='8'>20시</option>
				  <option value='9'>22시</option>
				  <option value='10'>22시</option>
				  <option value='11'>23시</option>
				  <option value='12'>24시</option>
				</select>
            </div>
            <br>
            <div>
            	<p>별점</p>
            	<label><input type="checkbox" name="five" value="5">⭐️⭐️⭐️⭐️⭐️</label><br>
            	<label><input type="checkbox" name="four" value="4">⭐️⭐️⭐️⭐️</label><br>
            	<label><input type="checkbox" name="three" value="3">⭐️⭐️⭐️</label><br>
            	<label><input type="checkbox" name="two" value="2">⭐️⭐️</label><br>
            	<label><input type="checkbox" name="one" value="1">️⭐️</label>
            </div>
<!--         <div class="filter__tags">
            <h6>Tag</h6>
            <label for="coupon">
                Coupons
                <input type="checkbox" id="coupon">
                <span class="checkmark"></span>
            </label>
            <label for="sa">
                Smoking Allowed
                <input type="checkbox" id="sa">
                <span class="checkmark"></span>
            </label>
            <label for="camping">
                Camping
                <input type="checkbox" id="camping">
                <span class="checkmark"></span>
            </label>
            <label for="hot-spots">
                Hot Spots
                <input type="checkbox" id="hot-spots">
                <span class="checkmark"></span>
            </label>
            <label for="internet">
                Internet
                <input type="checkbox" id="internet">
                <span class="checkmark"></span>
            </label>
            <label for="tr">
                Top Rated
                <input type="checkbox" id="tr">
                <span class="checkmark"></span>
            </label>
            <label for="hd">
                Hot Deal
                <input type="checkbox" id="hd">
                <span class="checkmark"></span>
            </label>
        </div> -->
        <br><br>
        
        <div class="filter__btns">
            <button type="submit">필터 검색</button>
            <button type="submit" class="filter__reset">초기화</button>
        </div>
    </div>
    <!-- Filter End -->

    <!-- Listing Section Begin -->
    <section class="listing nice-scroll" style="padding-top: 20px;">
        <div class="listing__text__top">
            <div class="listing__text__top__left">
                <h5>Restaurants</h5>
                <span>18 Results Found</span>
            </div>
            <div class="listing__text__top__right">
	            <button style="border:none; background-color: white;"><b>별점순★</b>️</button>&nbsp;&nbsp;
	            <button style="border:none; background-color: white;"><b>후기순✎</b></button>
	            <i class="fa fa-sort-amount-asc"></i>
            </div>
        </div>
        <div class="listing__list">
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg">
                    <img src="img/listing/list_icon-1.png" alt="">
                    <div class="listing__item__pic__tag">Popular</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>Chinese Sausage Restaurant</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <h6>$40 - $70</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span> 236 Littleton St. New Philadelphia, Ohio, United
                                States</li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/list_small_icon-1.png" alt="">
                            <span>Restaurant</span>
                        </div>
                        <div class="listing__item__text__info__right">Open Now</div>
                    </div>
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-2.jpg">
                    <img src="img/listing/list_icon-2.png" alt="">
                    <div class="listing__item__pic__tag top_rate">Top Rate</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>Shrimp floured and fried</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <h6>$40 - $70</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus, Georgia(GA), United States
                            </li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/list_small_icon-2.png" alt="">
                            <span>Food & Drink</span>
                        </div>
                        <div class="listing__item__text__info__right closed">Closed</div>
                    </div>
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-4.jpg">
                    <img src="img/listing/list_icon-4.png" alt="">
                    <div class="listing__item__pic__tag">Popular</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>Crab fried with tamarind</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <h6>$40 - $70</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span> 14320 Keenes Mill Rd. Cottondale, Alabama(AL), United
                                States</li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/list_small_icon-3.png" alt="">
                            <span>Hotel</span>
                        </div>
                        <div class="listing__item__text__info__right closed">Closed</div>
                    </div>
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-3.jpg">
                    <img src="img/listing/list_icon-3.png" alt="">
                    <div class="listing__item__pic__tag">Popular</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>Sweet and sour pork ribs</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <h6>$40 - $70</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks, Washington(WA), United States
                            </li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/list_small_icon-1.png" alt="">
                            <span>Restaurant</span>
                        </div>
                        <div class="listing__item__text__info__right">Open Now</div>
                    </div>
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-5.jpg">
                    <img src="img/listing/list_icon-5.png" alt="">
                    <div class="listing__item__pic__tag hot_deal">Hot Deal</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>Tortoise grilled on salt</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <h6>$40 - $70</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span> 236 Littleton St. New Philadelphia, Ohio, United
                                States</li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/list_small_icon-4.png" alt="">
                            <span>Shopping</span>
                        </div>
                        <div class="listing__item__text__info__right">Open Now</div>
                    </div>
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-6.jpg">
                    <img src="img/listing/list_icon-6.png" alt="">
                    <div class="listing__item__pic__tag">Popular</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>Fish cooked with fishsauce</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <h6>$40 - $70</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span> 2604 E Drachman St. Tucson, Arizona, United States
                            </li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/list_small_icon-3.png" alt="">
                            <span>Hotel</span>
                        </div>
                    6    <div class="listing__item__text__info__right">Open Now</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Listing Section End -->

    <!-- Map Begin -->
    <div class="listing__map" style="margin-top: 0px;">
		<div id="map" style="width:100%;height:100%;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3f2400bbaac1b16c5e6592a750160c2d"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.498911, 127.031900), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();
			
			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
			
			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			
			// 지도에 마커를 표시합니다 37.498911, 127.031900
			var marker = new kakao.maps.Marker({
			    map: map, 
			    position: new kakao.maps.LatLng(37.498911, 127.031900)
			});

			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            아이티' + 
			            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="https://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
			            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
			            '                <div><a href="https://itwill.co.kr" target="_blank" class="link">홈페이지</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlay = new kakao.maps.CustomOverlay({
			    content: content,
			    map: map,
			    position: marker.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(marker, 'click', function() {
			    overlay.setMap(map);
			});

			// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			function closeOverlay() {
			    overlay.setMap(null);     
			}
			
		</script>
    
       <!--  <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
    </div>
    <!-- Map End -->

    <!-- Js Plugins -->

        	<script>
		var loc = document.getElementById("myLocation");
		function findLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showYourLocation, showErrorMsg);
			} else { 
				loc.innerHTML = "이 문장은 사용자의 웹 브라우저가 Geolocation API를 지원하지 않을 때 나타납니다!";
			}
		}

		function showYourLocation(position) {
			var userLat = position.coords.latitude;
			var userLng = position.coords.longitude;
			document.getElementById("myLocation").value = userLat +'  '+ userLng ;
/* 			var imgUrl = "http://maps.googleapis.com/maps/api/staticmap?center=" + userLat + "," + userLng + "&zoom=15&size=500x400&sensor=false";
			document.getElementById("mapLocation").innerHTML = "<img src='"+imgUrl+"'>"; */
		}
		function showErrorMsg(error) {
			switch(error.code) {
				case error.PERMISSION_DENIED:
				loc.innerHTML = "이 문장은 사용자가 Geolocation API의 사용 요청을 거부했을 때 나타납니다!"
				break;
				case error.POSITION_UNAVAILABLE:
				loc.innerHTML = "이 문장은 가져온 위치 정보를 사용할 수 없을 때 나타납니다!"
				break;
				case error.TIMEOUT:
				loc.innerHTML = "이 문장은 위치 정보를 가져오기 위한 요청이 허용 시간을 초과했을 때 나타납니다!"
				break;
				case error.UNKNOWN_ERROR:
				loc.innerHTML = "이 문장은 알 수 없는 오류가 발생했을 때 나타납니다!"
				break;
			}
		}
	</script>.
	
</body>

</html>