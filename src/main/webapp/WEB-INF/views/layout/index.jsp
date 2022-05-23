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
    <section class="hero set-bg" data-setbg="">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- <div class="hero__text"> -->
                        <!-- <div class="section-title">
                            <h2>함께하는 즐거움 "커먼치킨"</h2>
                            <p>동네 친구들과 즐거움을 나누세요~! common comeon~</p>
                        </div> -->
                        <div class="hero__search__form" style="border: 3px solid orange;">
                            <form name="searchForm">
                                <input type="text" name="juso" id="myLocation" placeholder="Search...">
                                <div class="select__option" >
                                    <select class="nice-select" name="deliveryTime">
                                        <option value="">배달출발시간</option>
										  <option value="2022-04-01 13:00:00">13시</option>
										  <option value="2022-04-01 14:00:00">14시</option>
										  <option value="2022-04-01 15:00:00">15시</option>
										  <option value="2022-04-01 16:00:00">16시</option>
										  <option value="2022-04-01 17:00:00">17시</option>
										  <option value="2022-04-01 18:00:00">18시</option>
										  <option value="2022-04-01 19:00:00">19시</option>
										  <option value="2022-04-01 20:00:00">20시</option>
										  <option value="2022-04-01 21:00:00">21시</option>
										  <option value="2022-04-01 22:00:00">22시</option>
										  <option value="2022-04-01 23:00:00">23시</option>
                                    </select>
                                </div>
<!--                                 <div class="select__option">
                                    <select>
                                        <option value="">위치 API</option>
                                    </select>
                                </div> -->
                                <!--  <button type="button" style="width: 20%; background-color: #665D50;" onclick="alert('개발예정입니다.')">현재 위치</button>-->
                                <button type="button" style="width: 20%; background-color: #665D50;" onclick="findLocation();">현재 위치</button>
                                <button type="button" onclick="search();" style="background-color:#E89321;"><font style="color: #FFFFFF">점포 검색</font></button>
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
       <section class="most-search spad" style="background-color:#FFFFFF">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title" >
                        <!--  <h3 style="background-image: url('${pageContext.request.contextPath}/img/recommand_logo2.png');">추천</h3>-->
                        <img src="${pageContext.request.contextPath}/img/recommand_logo2.png">
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
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5><a href='${pageContext.request.contextPath}/store?stoNum=7841&cmNum=2'>노랑통닭 수원점</a></h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                    </div>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span>서울시 테헤란로 114 굳빌딩 160호</li>
                                                    <li><span class="icon_phone"></span>031-125-2211</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="img/listing/list_small_icon-1.png" alt="">
                                                    <span>배달시간 : 16:45:18</span>
                                                </div>
                                                <div class="listing__item__text__info__right">마감시간 : 14:45:39</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="img/listing/list-2.jpg">
                                            <img src="img/listing/list_icon-2.png" alt="">
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5><a href='${pageContext.request.contextPath}/store?stoNum=7781&cmNum=5'>짱치킨</a></h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                    </div>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span>서울시 테헤란로 111 짱빌딩 66호</li>
                                                    <li><span class="icon_phone"></span>031-125-2211</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="img/listing/list_small_icon-1.png" alt="">
                                                    <span>배달시간 : 16:45:18</span>
                                                </div>
                                                <div class="listing__item__text__info__right">마감시간 : 14:45:39</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="img/listing/list-3.jpg">
                                            <img src="img/listing/list_icon-3.png" alt="">
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5><a href='${pageContext.request.contextPath}/store?stoNum=6656&cmNum=7'>교촌치킨 일산점</a></h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                    </div>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span>서울시 테헤란로 98 현우빌딩 34호</li>
                                                    <li><span class="icon_phone"></span>010-1111-111</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="img/listing/list_small_icon-1.png" alt="">
                                                    <span>배달시간 : 13:25:55</span>
                                                </div>
                                                <div class="listing__item__text__info__right">마감시간 : 13:25:55</div>
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
    <!-- 
    <section class="news-post spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h3>🎁이벤트🎁</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-1.jpg">
                            <a href="https://www.youtube.com/watch?v=8EJ3zbKTWQ8" class="play-btn video-popup"><i class="fa fa-play"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-2.jpg"></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-3.jpg"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="work spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h3> 💌카드뉴스💌</h3>
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
     -->
    <!-- 카드뉴스 끝 -->




        <script src="js/jquery.nice-select.min.js"></script>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2bdfd8a73509ba9bbebd99bab1f0c0a8&libraries=services"></script>
    
    
    	<script>
    	var geocoder = new kakao.maps.services.Geocoder();

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
		    var coord = new kakao.maps.LatLng(userLat, userLng);
		    var callback = function(result, status) {
		    var roadadd = null;
		    if (status === kakao.maps.services.Status.OK) {
		            console.log(result);
		            if(result[0].road_address == null) {
			            roadadd = result[0].address.region_2depth_name;
		            } else {
			            roadadd = result[0].address.region_2depth_name;//road_address.address_name;
		            }
					document.getElementById("myLocation").value = roadadd ;
					
		        }
		    }
		    geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);         
			//var realposition = geocoder.coord2RegionCode(coords.getLat());
			//var realposition2 = geocoder.coord2RegionCode(coords.getLng());
			
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