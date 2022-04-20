<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Checkout - One Step Checkout , Responsive Bootstrap 4 template , bootstrap 4 starter template, bootstrap4 template, checkout template">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" lang="en" content="Checkout Bootstrap 4 pricing template , Responsive and Modern HTML5 Template made from bootstrap 4.">
    <meta name="keywords" lang="en" content="pricing template, bootstrap 4 template,bootstrap 4 checkout template, responsive bootstrap 4 template, bootstrap 4, bootstraping, bootstrap4, oribitthemes">
    <meta name="robots" content="index, follow">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <meta name="description" content="">    
    <title>Directing | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    
</head>

<body>
    <!-- Page Preloder -->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <!-- Blog Section Begin -->
    <main id="main" role="main">
        <section id="checkout-container">
            <div class="container">
                <div class="py-5 text-center">
                    <i class="fa fa-credit-card fa-3x text-primary"></i>
                    <h2 class="my-3">주&nbsp;&nbsp;문</h2>
                </div>
        <form name="orderlist">
                <div class="row py-5">
                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">상품 정보</span>
                        </h4>
                        <ul class="list-group mb-3">
                        	<li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                	<h6 class="my-0">상품명</h6>
                                </div>
                                <span class="text-muted">&nbsp;상품가격</span>
                                <span class="text-muted">수량</span>
                            </li>
                        <c:forEach var="productlist" items="${productList}" varStatus="status">
                            <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">${productlist.prdName}</h6>
                                    <input name="prdName" type="hidden" value="${productlist.prdName}">
                                    <input name="prdCode" type="hidden" value="${productlist.prdCode }">
                                </div>
                                <span class="text-muted">${productlist.prdPrice}</span>
                                <input name="prdPrice" type="hidden" value="${productlist.prdPrice}">
                                <span class="text-muted">${amountList[status.index]}</span>
                                <input name="prdAmount" type="hidden" value="${amountList[status.index]}">
                            </li>
						</c:forEach>                            
                            
                            <li class="list-group-item d-flex justify-content-between">
                                <span>합계</span>
                                <strong><input type="hidden" name="ordertotal"value="${ordertotal }">${ordertotal }</strong>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-8 order-md-1">
                            <div class="col-md-6 mb-3">
                              <div class="row">
                                <div class="col-6 custom-control custom-radio">
                                    <input id="orgaddr" name="addrMethod" type="radio" checked class="custom-control-input" onchange="setAddr()" required value="default">
                                    <label class="custom-control-label" for="orgaddr">회원정보와 동일</label>
                                </div>
                                <div class="col-6 custom-control custom-radio">
                                    <input id="newaddr" name="addrMethod" type="radio" class="custom-control-input" onchange="setAddr()" required value="new">
                                    <label class="custom-control-label" for="newaddr">새로운 배송지</label>
                                </div>
                              </div>
                            </div>
                        <h4 class="mb-3">배송지 정보</h4>
                            <div class="mb-3">
                                <label for="username">받는 사람</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="username" name="memName" placeholder="Username" required value="${loginMember.memName}">
                                    <input type="hidden" name="memEmail" value="${loginMember.memEmail}">
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="address">주소</label>
                                <div class="row">
	                                <div class="col-md-4 mb-1">
		                                <input class="form-control" type="text" id="sample4_postcode" name="ordZipcode" placeholder="우편번호" value="${loginMember.memZipCode}">
		                            </div><div class="col-md-3 mb-3">    
										<input class="btn btn-primary btn-md btn-block" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
									</div>	
								</div>
                                <div class="row">
                                	<div class="col-md-6 mb-1">                                
									<input class="form-control" type="text" id="sample4_roadAddress" name="ordAdd1" placeholder="도로명주소" value="${loginMember.memAdd1}">
									</div>
                                	<div class="col-md-6 mb-1">
									<input class="form-control" type="text" id="sample4_jibunAddress" name="jibun" placeholder="지번주소" value="">
									</div>                                	
									<div class="col-md-4 mb-3">
									<span id="guide" style="color:#999;display:none"></span>
									<input class="form-control" type="text" id="sample4_detailAddress" name="ordAdd2" placeholder="상세주소" value="${loginMember.memAdd2}">
									</div>                                	
								</div>
							</div>
                                <!--  
                                <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address2">Address 2
                                    <span class="text-muted">(Optional)</span>
                                </label>
                                <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                            -->
                            <div class="mb-3">
                                <label for="mobile">휴대전화</label>
	                            <div class="row">
	                                <div class="col-md-4 mb-3">
	                                    <input type="text" class="form-control" id="memPhone" name="ordPhone" value="${loginMember.memPhone}" required>
	                                </div>
	                            </div>
							</div>	
							<!--  
                            <div class="mb-3">
                                <label for="email">이메일
                                    <span class="text-muted">(Optional)</span>
                                </label>
                                <input type="email" class="form-control" id="email" placeholder="you@example.com" value="${loginMember.memAdd2}">
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>
							-->

                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <label for="country">요청사항</label>
                                    <select class="w-100" id="country" required name="ordRequest">
                                        <option value="">Choose...</option>
                                        <option>현관문 앞에 두고 가라</option>
                                        <option>1층 앞에 두고 가라</option>
                                        <option>경비실에 두고 가라</option>
                                    </select>
                                </div>
                            </div>
                            <hr class="mb-4">
                            <h4 class="mb-3">결제수단</h4>

                            <div class="col-md-6 mb-3">
                              <div class="row">
                                <div class="col-4 custom-control custom-radio">
                                    <input id="credit" name="paymentMethod" type="radio" value="0" class="custom-control-input" onchange="setDisplay()" required>
                                    <label class="custom-control-label" for="credit">신용카드</label>
                                </div>
                                <div class="col-4 custom-control custom-radio">
                                    <input id="paypal" name="paymentMethod" type="radio" value="1" class="custom-control-input" onchange="setDisplay()" required>
                                    <label class="custom-control-label" for="paypal">무통장입금</label>
                                </div>
                              </div>
                            </div>
                            <div class="row" style="display:none;" id="account_view">
                                <div class="col-md-6 mb-3">
                                    <label for="cc-name">계좌번호</label>
                                    <!--  <input type="text" class="form-control" id="cc-name" placeholder="" required>-->
                                    <br><small class="text-muted">커먼뱅크 123-123321-123 (예금주 : 컴온치킨)</small>
                                    <div class="invalid-feedback">
                                        Name on card is required
                                    </div>
                                </div>
                            </div>
                            <hr class="mb-4">
                            <h4 class="mb-3">약관동의</h4>
	                              	<textarea class="form-control" readonly style="resize: none; height: 200px">
	                              	개인정보 수집 및 이용 동의
1. 수집하는 개인정보의 항목
①이용 시 수집하는 개인정보의 범위
가. 배달 정보: 휴대폰번호, 배달주소
나. 결제 정보: [결제대행업체(PG사)로부터 제공받는 정보] 결제 처리 결과, 부분 마스킹 처리된 카드/계좌번호, 카드사, 은행명
다. 자동 생성 정보: 서비스 이용 기록, 접속 로그, 쿠키, 접속 IP 주소, 기기정보(모델명, OS 버전, 기기고유번호), 광고ID
2. 이용목적
①회사는 다음과 같은 목적을 위하여 개인정보를 수집하고 있으며 목적이 변경될 경우에는 사전에 이용자의 동의를 구하도록 하겠습니다.
가. 배달 정보: 이용자의 음식 주문에 따른 배달 진행, 맛집배달대행 서비스 이용 및 경품 배송을 위한 정확한 배송지의 확보 및 본인 식별
나. 결제 정보: 결제 처리 결과 확인
다. 자동 생성 정보: 서비스 부정이용 방지, 맞춤형 서비스 제공, 온라인 맞춤형 광고(브라우저 설정을 통해 거부가 가능하며, 자세한 내용은 개인정보 처리방침 참조)
3. 수집하는 개인정보의 보유 및 이용기간
①고객님의 개인정보는 서비스를 제공하는 기간 동안 보유 및 이용하며, 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다. 다만, 관계법령의 규정 및 내부지침에 의하여 고객님의 개인정보를 보관할 필요성이 있는 경우에는 고객님의 개인정보를 보관할 수 있습니다. 세부 내용은 요기요 개인정보처리방침을 참고해주시기 바랍니다.
4. 동의 거부 권리 및 거부 시 불이익
①고객님은 개인정보 수집 및 이용에 동의하지 않을 권리가 있습니다. 다만, 서비스에 필수적인 동의이므로 거부 할 경우 서비스 이용이 불가합니다.
</textarea>
                            <div class="col-md-6 mb-3">
	                            <div class="custom-control custom-checkbox">
	                                <input type="checkbox" class="custom-control-input" id="same-address" name = "mustcheck">
	                                <label class="custom-control-label" for="same-address">모든 약관 동의</label>
	                            </div>
                            </div>
                            <button type="button" onclick="orderinsert();" class="btn btn-primary btn-lg btn-block">결제하기</button>
                    </div>
                </div>
                            </form>
            </div>
            
            <!--  <a href="#" class="btn btn-primary scrollUp">
                <i class="fa fa-arrow-circle-o-up"></i>
            </a>-->
        </section>
    </main>
    <!-- Blog Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_detailAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_detailAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
    <script type="text/javascript">
    //var cmNum = ${cmNum};
   // var stoNum = ${stoNum};
    //var ordprdamount = ${amountList};
    //var ordprdprice = ${ordprdprice};
   // console.log=ordprdamount;
   	
   	var memName = document.getElementById("memName");
   	var ordZipcode = document.getElementById("ordZipcode");
   	var ordAdd1 = document.getElementById("ordAdd1");
   	var ordAdd2 = document.getElementById("ordAdd2");
   	var ordPhone = document.getElementById("ordPhone");
   	var ordRequest = document.getElementById("ordRequest");
   	var	mustcheck = document.getElementById("mustcheck");
    
    function setDisplay() {
        if($('input:radio[id=paypal]').is(':checked')){
            $('#account_view').show();
        } else{
            $('#account_view').hide();
        }
    };	
    
    function setAddr() {
        //if($('input:radio[id=newaddr]').is(':checked')){
        	var valueCheck1 = $('input:radio[id=newaddr]:checked').val();
        	var valueCheck2 = $('input:radio[id=orgaddr]:checked').val();
        	if ( valueCheck1 == 'new' ) {
        		console.log(valueCheck1);
	        	 document.getElementById('username').value = '';
	        	 document.getElementById('sample4_postcode').value = '';
	        	 document.getElementById('sample4_roadAddress').value = '';
	        	 document.getElementById('sample4_detailAddress').value = '';
	        	 document.getElementById('memPhone').value = '';
	            orderlist.ordAdd1.value == '';
	            orderlist.ordAdd2.value == '';
	            orderlist.ordPhone.value == '';
        	} 
        	
        	if ( valueCheck2 == 'default' ) {
            	console.log(valueCheck2);
        		document.getElementById('username').value = '${loginMember.memName}';
        		document.getElementById('sample4_postcode').value = '${loginMember.memZipCode}';
        		document.getElementById('sample4_roadAddress').value = '${loginMember.memAdd1}';
        		document.getElementById('sample4_detailAddress').value = '${loginMember.memAdd2}';
        		document.getElementById('memPhone').value = '${loginMember.memPhone}';
        	}
        
    };	
    
    function orderinsert() {
    		
		if (orderlist.memName.value == "") {
			alert("받는사람을 입력해 주세요.");
			orderlist.memEmail.focus();
			return;
		}
    	
		if (orderlist.ordZipcode.value == "") {
			alert("우편번호를 입력해 주세요.");
			orderlist.ordZipcode.focus();
			return;
		}
		
		if (orderlist.ordAdd1.value == "") {
			alert("주소를 입력해 주세요.");
			orderlist.ordAdd1.focus();
			return;
		}
		if (orderlist.ordAdd2.value == "") {
			alert("상세주소를 입력해 주세요.");
			orderlist.ordAdd2.focus();
			return;
		}
		if (orderlist.ordPhone.value == "") {
			alert("휴대전화를 입력해 주세요.");
			orderlist.ordPhone.focus();
			return;
		}
		if (orderlist.ordRequest.value == "") {
			alert("요청사항을 선택해 주세요.");
			orderlist.ordRequest.focus();
			return;
		}
		
		if (!$("input:checked[name='paymentMethod']").is(":checked")) {
			alert("결제수단을 체크해 주세요.");
			orderlist.paymentMethod.focus();
			return;
		}
		if (!$("input:checked[name='mustcheck']").is(":checked")) {
			alert("약관동의를 체크해 주세요.");
			orderlist.mustcheck.focus();
			return;
		}
    	
	    var ordPay = $("input[name='paymentMethod']:checked").val();
    	var ordPayMethod = $("#ordPayMethod").val(ordPay);
    	 
    	orderlist.method="post";
    	orderlist.setAttribute("ordPayMethod","ordPayMethod")
    	orderlist.action="${pageContext.request.contextPath}/payment?cmNum=${cmNum}";
    	orderlist.submit();
	}
    
    </script>
</body>

</html>