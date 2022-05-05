<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	
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


    <!-- Header Section End -->
    <section class="hero set-bg" style="padding: 100px 0; padding-bottom: 0px;  border-bottom: 1px solid #EFEEEE">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- <div class="hero__text"> -->
                        <!-- <div class="section-title">
                            <h2>함께하는 즐거움 "커먼치킨"</h2>
                            <p>동네 친구들과 즐거움을 나누세요~! common comeon~</p>
                        </div> -->
                        <div style="margin-top: 10px;" class="hero__search__form" >
                            <form name="searchForm">
                             		<input type="text" name="juso" id="myLocation" placeholder="Search..."><input name="returnjuso" type="hidden" value="${juso}">
                                <div class="select__option">
                                   	<input type="hidden" name="returndeliveryTime" value="${deliveryTime }">
                                    <select class="nice-select" name="deliveryTime" id="selectdeliv">
                                        <option>배달출발시간</option>
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
                                <button type="button" style="width: 20%; background-color: #665D50;" onclick="alert('개발예정입니다.')"><!-- onclick="findLocation()"  -->현재 위치</button>
                                <button type="button" onclick="search();"style="background-color:#E89321;"><font style="color: #FFFFFF">점포 검색</font></button>
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
        <!--  
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
        -->
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
				<select name='cmClose' id="cmClose">
				  <option value=''>마감시간</option>
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
				  <option value="2022-04-01 24:00:00">24시</option>
				</select>
            </div>
            <br>            
        	 <div>
           		 <p style="display: inline;">배달시간 :</p>           		 
				<select name='deliveryTime2' id="deliveryTime2">
				  <option value=''>배달시간</option>
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
				  <option value="2022-04-01 24:00:00">24시</option>
				</select>
            </div>
            <br>
            <div>
            	<p>별점</p>
            	<label><input type="checkbox" class="rate" name="rate" value="5">⭐️⭐️⭐️⭐️⭐️</label><br>
            	<label><input type="checkbox" class="rate" name="rate" value="4">⭐️⭐️⭐️⭐️</label><br>
            	<label><input type="checkbox" class="rate" name="rate" value="3">⭐️⭐️⭐️</label><br>
            	<label><input type="checkbox" class="rate" name="rate" value="2">⭐️⭐️</label><br>
            	<label><input type="checkbox" class="rate" name="rate" value="1">⭐️</label><br>
            	<label><input type="checkbox" class="rate" name="rate" value="0">☆</label>
            </div>

        <br><br>
        
        <div >
            <button type="button" id="filterBtn" onclick="filtersearch();" style="border:none;background-color:#E89321; "><font style="color: #FFFFFF">필터 검색</font></button>
            <button type="button" id="resetBtn" style="border:none;background-color:#665D50; "><font style="color: #FFFFFF">초기화</font></button>
        </div>
    </div>
    <!-- Filter End -->

    <!-- Listing Section Begin -->
    <section>
           <div class="container">
        <div class="row">
        <div class="col">
    <!--  <section class="listing nice-scroll" style="padding-top: 20px;">-->
    <!--  
        <div class="listing__text__top">
            <div class="listing__text__top__left">
                <h5>점포</h5>
                <span>18 Results Found</span>
            </div>
            <div class="listing__text__top__right">
	            <button style="border:none; background-color: white;"><b>별점순★</b>️</button>&nbsp;&nbsp;
	            <button style="border:none; background-color: white;"><b>후기순✎</b></button>
	            <i class="fa fa-sort-amount-asc"></i>
            </div>
        </div>
        -->
        

        
        <div class="listing__list" id="detailListDiv"></div>
 
        <div class="listing__list nice-scroll" id="storeListDiv">
        <!-- 점포리스트 -->        
        
        <c:choose>
        	<c:when test="${empty(mainSearchList) }">
	        	<div class="listing__item">
	              <div class="listing__item__text__inside">
	                  <h5>조건에 맞는 점포로 다시 검색해주세요</h5>
	              </div>
	            </div>
        	</c:when>
			<c:otherwise>
        		<c:forEach var="searchStore" items="${mainSearchList}" varStatus="status" >
		            <div class="listing__item" id="mainSearchStore">
		            	<input name="stoNum" type="hidden" value="${searchStore.stoNum}">
		            	<input name="cmNum" type="hidden" value="${searchStore.cmNum}">
		                <!--  <div class="listing__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/img/listing/list-1.jpg">-->
		                <div class="listing__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/storeImg/${searchStore.stoUpload}">
		                    <img src="${pageContext.request.contextPath}/img/listing/list_icon-1.png" alt="">
		                    <div class="listing__item__pic__tag">Popular</div>
		                    <div class="listing__item__pic__btns">
		                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
		                        <a href="#"><span class="icon_heart_alt"></span></a>
		                    </div>
		                </div>
		                <div class="listing__item__text">
		                    <div class="listing__item__text__inside">
		                        <!--  <h5><a href='javascript:moveStore();'>[이전]">${searchStore.stoName }</a></h5>-->
		                        <h5><a href='${pageContext.request.contextPath}/store?stoNum=${searchStore.stoNum}&cmNum=${searchStore.cmNum}'>${searchStore.stoName }</a></h5>
		                        <div class="listing__item__text__rating">
		                            <div class="listing__item__rating__star">
		                            	<c:choose>
		                            		<c:when test="${searchStore.revRated>4.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${searchStore.revRated>4.0 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${searchStore.revRated>3.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${searchStore.revRated>3.0 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${searchStore.revRated>2.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${searchStore.revRated>2.0 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${searchStore.revRated>1.5 }">
		                            		<span class="icon_star"></span><span class="icon_star"></span></c:when>
		                            		<c:when test="${searchStore.revRated>1.0 }">
		                            		<span class="icon_star"></span><span class="icon_star-half_alt"></span></c:when>
		                            		<c:when test="${searchStore.revRated>0.5 }">
		                            		<span class="icon_star"></span></c:when>
		                            		<c:when test="${searchStore.revRated>0.0 }">
		                            		<span class="icon_star-half_alt"></span></c:when>
		                                </c:choose>
		                            </div>
		                            <!--  <h6>$40 - $70</h6>-->
		                        </div>
		                        <ul>
		                            <li><span class="icon_pin_alt"></span>${searchStore.stoAdd1 }&nbsp;${searchStore.stoAdd2 }</li>
		                            <li><span class="icon_phone"></span>${searchStore.stoPhone }</li>
		                        </ul>
		                    </div>
		                    <div class="listing__item__text__info">
		                        <div class="listing__item__text__info__left">
		                            <img src="${pageContext.request.contextPath}/img/listing/list_small_icon-1.png" alt="">
		                            <c:set var="cmDTime" value="${searchStore.cmDeliveryTime }"/><span>배달시간 : ${fn:substring(cmDTime,11,20)}</span>
		                        </div>
		                        <div class="listing__item__text__info__right"><c:set var="cmCTime" value="${searchStore.cmClose }"/>마감시간 : ${fn:substring(cmCTime,11,20)}</div>
		                    </div>
		                </div>
		            </div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
            
        </div>
    <!--  </section>-->
        </div>
        
        <div class="col">
        
        		<div id="map" style="width:100%;height:100%;"></div>
        </div>
       </div>
      </div>
      </section>
    <!-- Listing Section End -->

    <!-- Map Begin 
    <section class="listing nice-scroll" style="padding-top: 20px; float: right;">
	    <div class="listing__map" style="margin-top: 0px;">
			<div id="map" style="width:100%;height:100%;"></div>
	    </div>
    </section>-->
    <!-- Map End -->

	<!-- handlebars template -->
	<script id="template" type="text/x-handlebars-template">
		{{#each .}}
		            <div class="listing__item">
		            	<input name="stoNum" type="hidden" value="{{stoNum}}">
		            	<input name="cmNum" type="hidden" value="{{cmNum}}">
		                <div class="listing__item__pic set-bg" data-setbg="{{baseUrl}}${pageContext.request.contextPath}/storeImg/{{stoUpload}}" style="background-image: url('/commonchicken/storeImg/{{stoUpload}}');">
		                    <img src="${pageContext.request.contextPath}/img/listing/list_icon-1.png">
		                    <div class="listing__item__pic__tag">Popular</div>
		                    <div class="listing__item__pic__btns">
		                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
		                        <a href="#"><span class="icon_heart_alt"></span></a>
		                    </div>
		                </div>
		                <div class="listing__item__text">
		                    <div class="listing__item__text__inside">
		                        <h5><a href='{{baseUrl}}${pageContext.request.contextPath}/store?stoNum={{stoNum}}&cmNum={{cmNum}}'>{{stoName }}</a></h5>
		                        {{!--<h5>{{stoName }}</h5>--}}
		            			            <div class="listing__item__text__rating">
		                            <div class="listing__item__rating__star">
		                            		<span class="icon_star"><input type="hidden" value="{{revRated}}"></span>
										{{!--<input type="hidden" value="{{revRated}}"--}}
											{{#ifratestar ratelist "1"}}
		                            		<span class="icon_star"><input type="hidden" value="{{revRated}}"></span>{{/ifratestar}}
											{{#ifratestar revRated 1.5}}
		                            		<span class="icon_star"></span><span class="icon_star-half_alt"></span>{{/ifratestar}}
		                            		{{#ifratestar revRated "2"}}
		                            		<span class="icon_star"></span><span class="icon_star"></span>{{/ifratestar}}
		                            		{{#ifratestar revRated "2.5"}}
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span>{{/ifratestar}}
		                            		{{#ifratestar revRated 3}}
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span>{{/ifratestar}}
		                            		{{#ifratestar revRated "3.5"}}
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span>{{/ifratestar}}
		                            		{{#ifratestar revRated "4"}}
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span>{{/ifratestar}}
		                            		{{#ifratestar revRated "4.5"}}
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star-half_alt"></span>{{/ifratestar}}
		                            		{{#ifratestar revRated "5"}}
		                            		<span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span><span class="icon_star"></span>{{/ifratestar}}
		                            </div>
		                        </div>
		                        <ul>
		                            <li><span class="icon_pin_alt"></span>{{stoAdd1 }}&nbsp;{{stoAdd2 }}</li>
		                            <li><span class="icon_phone"></span>{{stoPhone }}</li>
		                        </ul>
		                    </div>
		                    <div class="listing__item__text__info">
		                        <div class="listing__item__text__info__left">
		                            <img src="${pageContext.request.contextPath}/img/listing/list_small_icon-1.png" alt="">
		                            <span>배달시간 : {{trimString cmDeliveryTime 11 20}}</span>
		                        </div>
		                        <div class="listing__item__text__info__right">마감시간 : {{trimString cmClose 11 20}}</div>
		                    </div>
		                </div>
		            </div>
				{{/each}}
	</script>

    <!-- Js Plugins -->

    <script type="text/javascript">

    
    function filtersearch() {
    	Handlebars.registerHelper('trimString', function(passedString, startstring, endstring) {
    		   var theString = passedString.substring( startstring, endstring );
    		   return new Handlebars.SafeString(theString)
    		});
    	
    	
    	Handlebars.registerHelper('ifratestar', function(v1, v2, options) {
        	if(v1 === v2){
        		return options.fn(this);
        	} 
        		return options.inverse(this);
        });
    	
    	$("#storeListDiv").hide();
    	var cmClose=$("select[name=cmClose]").val();
		var deliveryTime2=$("select[name=deliveryTime2]").val();
		var ratelist=[];
		$("input[name=rate]:checked").each(function(){
			var chk = $(this).val();
			ratelist.push(chk);
		});
		var returndeliveryTime=$("input[name=returndeliveryTime]").val();
		var returnjuso=$("input[name=returnjuso]").val();
		console.log(cmClose);
		console.log(deliveryTime2);
		console.log(ratelist);
		console.log(returndeliveryTime);
		console.log(returnjuso);
		
		
		$.ajax({
			type: "post",
			url: "listing_searchdetail",
			contentType: "application/json",
			data: JSON.stringify({"deliveryTime":returndeliveryTime,"juso":returnjuso,"cmClose":cmClose,"deliveryTime2":deliveryTime2,"ratelist":ratelist}),
			dateType: "json",
			success: 
				function(text) {
					if(text.detailSearchList.length=="0") {
						$("#detailListDiv").html("<div class='listing__item'>"+
								"<div class='listing__item__text__inside'>"+
								"<h5>조건에 맞는 점포로 다시 검색해주세요</h5>"+
								"</div></div>");
						return;
					}
					//응답된 게시글 목록을 HTML로 변환하도록 Handlebars 자바스크립트 라이브러리 이용
					var source=$("#template").html();//템플릿 코드를 반환받아 저장
					//템플릿 코드를 전달받아 템플릿 객체로 생성하여 저장
					var template=Handlebars.compile(source);
					//템플릿 객체에 JavaScript 객체(게시글 목록)를 전달하여 HTML 태그로 변환하여 출력
					$("#detailListDiv").html(template(text.detailSearchList));


			},
					
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});		
		
		$("#deliveryTime2").val("").prop("selected", true);
		$("#cmClose").val("").prop("selected", true);

	        var obj = document.getElementsByClassName('rate');
	 
	        for (var i = 0; i < obj.length; i++) {
	            obj[i].checked = false;
	        }
	};

	
					
	function search() {
    	Handlebars.registerHelper('trimString', function(passedString, startstring, endstring) {
    		   var theString = passedString.substring( startstring, endstring );
    		   return new Handlebars.SafeString(theString)
    		});
    	
    	
    	Handlebars.registerHelper('ifratestar', function(v1, v2, options) {
        	if(v1 === v2){
        		return options.fn(this);
        	} 
        		return options.inverse(this);
        });				
						
		$("#storeListDiv").hide();
		var mainjuso=$("input[name=juso]").val();

		var maindeliveryTime=$("select[name=deliveryTime]").val();
		console.log(maindeliveryTime);
		console.log(mainjuso);
		
		$.ajax({
			type: "post",
			url: "listing_searchagain",
			contentType: "application/json",
			data: JSON.stringify({"deliveryTime":maindeliveryTime,"juso":mainjuso}),
			dateType: "json",
			success: 
				function(text) {
					console.log(text.mainSearchListAgain);
					if(text.mainSearchListAgain.length=="0") {
						$("#detailListDiv").html("<div class='listing__item'>"+
								"<div class='listing__item__text__inside'>"+
								"<h5>조건에 맞는 점포로 다시 검색해주세요</h5>"+
								"</div></div>");
						return;
					}
					var source=$("#template").html();//템플릿 코드를 반환받아 저장
					//템플릿 코드를 전달받아 템플릿 객체로 생성하여 저장
					var template=Handlebars.compile(source);
					//템플릿 객체에 JavaScript 객체(게시글 목록)를 전달하여 HTML 태그로 변환하여 출력
					$("#detailListDiv").html(template(text.mainSearchListAgain));
					


			},
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
			
		});		
		$("#myLocation").val("");
		$("#selectdeliv").val("").prop("selected", true);
	};	


					

    
    
    /*
		function resetbtn() {
		    $(document).ready(function () {
		    	  $(document).on("click", "button[id='resetBtn']", function () {
		    			$("#cmClose option").prop("selected", false);
		    	        $("#deliveryTime2 option").prop("selected", false);
		    	  });
		    	});
		$("#cmClose option").prop("selected", false);
        $("#deliveryTime2 option").prop("selected", false);
		//document.getElementById("cmClose").value = '';
		//document.getElementById("deliveryTime2").value = '';
	};	
					
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
// 			var imgUrl = "http://maps.googleapis.com/maps/api/staticmap?center=" + userLat + "," + userLng + "&zoom=15&size=500x400&sensor=false";
			//document.getElementById("mapLocation").innerHTML = "<img src='"+imgUrl+"'>"; 
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
		*/
	</script>
	 
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2bdfd8a73509ba9bbebd99bab1f0c0a8&libraries=services"></script>
		<!--  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>-->
		<script>
		var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
			   
		var mapOption = { 
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
			/*
			var content = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            //'        <div class="title">' + 
			            //'            교촌치킨 강남역점' + 
			            //'            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
			            //'        </div>' + 
			            '        <div class="body">' + 
			            //'            <div class="img">' +
			            //'                <img src="https://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
			            //'           </div>' + 
			            //'            <div class="desc">' + 
			            //'                <div class="ellipsis">서울 강남구 강남대로 328 아이티윌</div>' + 
			            //'                <div><a href="https://itwill.co.kr" target="_blank" class="link">점포페이지</a></div>' + 
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
			*/
		</script>
		
	<script type="text/javascript">
		$("#resetBtn").click(function() {
			$("#deliveryTime2").val("").prop("selected", true);
			$("#cmClose").val("").prop("selected", true);

		        var obj = document.getElementsByClassName('rate');
		 
		        for (var i = 0; i < obj.length; i++) {
		            obj[i].checked = false;
		        }
			  //alert( "Handler for .click() called." );
			});
	</script>
</body>

</html>