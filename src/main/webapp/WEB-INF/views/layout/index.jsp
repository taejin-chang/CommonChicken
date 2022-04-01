<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>


    <!-- Hero Section Begin -->
    <section class="hero set-bg" data-setbg="img/logo11.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- <div class="hero__text"> -->
                        <!-- <div class="section-title">
                            <h2>함께하는 즐거움 "커먼치킨"</h2>
                            <p>동네 친구들과 즐거움을 나누세요~! common comeon~</p>
                        </div> -->
                        <div class="hero__search__form">
                            <form name="searchForm">
                                <input type="text" name="juso" id="myLocation" placeholder="Search...">
                                <div class="select__option">
                                    <select class="nice-select" name="deliveryTime">
                                        <option value="">배달출발시간</option>
										  <option value="2022-03-09 13:00:00">13시</option>
										  <option value="2022-03-09 14:00:00">14시</option>
										  <option value="2022-03-09 15:00:00">15시</option>
										  <option value="2022-03-09 16:00:00">16시</option>
										  <option value="2022-03-09 17:00:00">17시</option>
										  <option value="2022-03-09 18:00:00">18시</option>
										  <option value="2022-03-09 19:00:00">19시</option>
										  <option value="2022-03-09 20:00:00">20시</option>
										  <option value="2022-03-09 21:00:00">21시</option>
										  <option value="2022-03-09 22:00:00">22시</option>
										  <option value="2022-03-09 23:00:00">23시</option>
										  <option value="2022-03-09 24:00:00">24시</option>
                                    </select>
                                </div>
<!--                                 <div class="select__option">
                                    <select>
                                        <option value="">위치 API</option>
                                    </select>
                                </div> -->
                                <button onclick="findLocation()" type="button" style="width: 20%; background-color: #327258;">현재 위치</button>
                                <button type="button" onclick="search();">Explore Now</button>
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
    <!-- Hero Section End -->

       <!-- Most Search Section Begin -->
       <section class="most-search spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h3>🔅추천🔅</h3>
                        <!-- <p>Travelocity empowers travelers who are giving back on their trips in ways big and small</p> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- <div class="most__search__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <span class="flaticon-039-fork"></span>
                                    Restaurent
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                    <span class="flaticon-030-kebab"></span>
                                    Shopping
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                    <span class="flaticon-032-food-truck"></span>
                                    Travel
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                    <span class="flaticon-017-croissant"></span>
                                    Beauty
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab">
                                    <span class="flaticon-038-take-away"></span>
                                    Event
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">
                                    <span class="flaticon-031-delivery"></span>
                                    Rental
                                </a>
                            </li>
                        </ul>
                    </div> -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
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
                                                    <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                        Philadelphia, Ohio, United States</li>
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
                                </div>
                                <div class="col-lg-4 col-md-6">
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
                                                    <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus,
                                                        Georgia(GA), United States</li>
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
                                </div>
                                <div class="col-lg-4 col-md-6">
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
                                                    <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                        Washington(WA), United States</li>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Most Search Section End -->

    <!-- 이벤트 시작 -->
    <section class="news-post spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h3>🎁이벤트🎁</h3>
                        <!-- <p>Checkout Latest News And Articles From Our Blog</p> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-1.jpg">
                            <a href="https://www.youtube.com/watch?v=8EJ3zbKTWQ8" class="play-btn video-popup"><i class="fa fa-play"></i></a>
                        </div>
                        <!-- <div class="blog__item__text">
                            <ul class="blog__item__tags">
                                <li><i class="fa fa-tags"></i> Travel</li>
                                <li>Videos</li>
                            </ul>
                            <h5><a href="#">Internet Banner Advertising Most Reliable</a></h5>
                            <ul class="blog__item__widget">
                                <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                <li><i class="fa fa-user"></i> John Smith</li>
                            </ul>
                        </div> -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-2.jpg"></div>
                        <!-- <div class="blog__item__text">
                            <ul class="blog__item__tags">
                                <li><i class="fa fa-tags"></i> Travel</li>
                                <li>Restaurant</li>
                            </ul>
                            <h5><a href="#">Internet Banner Advertising Most Reliable</a></h5>
                            <ul class="blog__item__widget">
                                <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                <li><i class="fa fa-user"></i> John Smith</li>
                            </ul>
                        </div> -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-3.jpg"></div>
                        <!-- <div class="blog__item__text">
                            <ul class="blog__item__tags">
                                <li><i class="fa fa-tags"></i> Travel</li>
                                <li>Restaurant</li>
                            </ul>
                            <h5><a href="#">Internet Banner Advertising Most Reliable</a></h5>
                            <ul class="blog__item__widget">
                                <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                <li><i class="fa fa-user"></i> John Smith</li>
                            </ul>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 이벤트 끝 -->

 
    <!-- 카드뉴스 시작 -->
    <section class="work spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h3> 💌카드뉴스💌</h3>
                        <!-- <p>Travelocity empowers travelers who are giving back on their trips in ways big and small</p> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="work__item">
                        <div class="work__item__number">01.</div>
                        <img src="img/work/work-1.png" alt="">
                        <h5>Location & Categories</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="work__item">
                        <div class="work__item__number">02.</div>
                        <img src="img/work/work-2.png" alt="">
                        <h5>Explore Listting</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="work__item">
                        <div class="work__item__number">03.</div>
                        <img src="img/work/work-3.png" alt="">
                        <h5>Making Appointments</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 카드뉴스 끝 -->




        <script src="js/jquery.nice-select.min.js"></script>
    
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
		
		function search() {
			searchForm.method="post";
			searchForm.action="${pageContext.request.contextPath}/listing_search";
			searchForm.submit();
		}
		
		
	</script>
    
</body>

</html>