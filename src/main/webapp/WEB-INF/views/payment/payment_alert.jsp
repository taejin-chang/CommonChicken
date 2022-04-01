<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Checkout - One Step Checkout , Responsive Bootstrap 4 template , bootstrap 4 starter template, bootstrap4 template, checkout template">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" lang="en" content="Checkout Bootstrap 4 pricing template , Responsive and Modern HTML5 Template made from bootstrap 4.">
    <meta name="keywords" lang="en" content="pricing template, bootstrap 4 template,bootstrap 4 checkout template, responsive bootstrap 4 template, bootstrap 4, bootstraping, bootstrap4, oribitthemes">
    <meta name="robots" content="index, follow">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <meta name="description" content="">    
</head>

<body>
    <!-- Page Preloder 
    <div id="preloder">
        <div class="loader"></div>
    </div>-->
    <!-- Header Section Begin -->
	
    <!-- Blog Section Begin -->
    <main id="main" role="main">
        <section id="checkout-container">
            <div class="container">
                <div class="py-5 text-center">
                    <i class="fa fa-credit-card fa-3x text-primary"></i>
                    <h2 class="my-3">주&nbsp;문&nbsp;완&nbsp;료</h2>
                </div>
                <div class="row">
                    <div class="col-md align-self-center" style="margin-right:0px;" >
                        <h4 class="mb-3">주문이 완료 되었습니다. </h4>
                        <form class="needs-validation" novalidate>
                            <div class="mb-3">
                                <label for="username">주문내역</label>
			                      <div class="col-md-4 order-md-2 mb-4">
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
			                                </div>
			                                <span class="text-muted">${amountList[status.index]}</span>
			                                <span class="text-muted">${productlist.prdPrice }</span>
			                            </li>
			                            </c:forEach>
			                            <li class="list-group-item d-flex justify-content-between">
			                                <span>합계</span>
			                                <strong>${ordertotal }</strong>
			                            </li>
			                        </ul>
			                    </div>
                                <label for="username">이름</label>
                                <div class="form-group mx-sm-3 mb-2">
                                    <input type="text" class="form-control-plaintext" id="username" placeholder="이름" required readonly>${memName }
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="address">주소</label>
                                <div class="row">
	                                <div class="col-md-4 mb-1">
		                                <input class="form-control-plaintext" type="text" id="sample4_postcode" placeholder="우편번호"readonly>${ordZipcode }
		                            </div>
								</div>
                                <div class="row">
                                	<div class="col-md-6 mb-1">                                
									<input class="form-control-plaintext" type="text" id="sample4_roadAddress" placeholder="도로명주소" readonly>${ordAdd1 }
									</div>
                                	<div class="col-md-6 mb-1">
									<input class="form-control-plaintext" type="text" id="sample4_jibunAddress" placeholder="지번주소" readonly>${jibun }
									</div>                                	
									<div class="col-md-4 mb-3">
									<span id="guide" style="color:#999;display:none"></span>
									<input class="form-control-plaintext" type="text" id="sample4_detailAddress" placeholder="상세주소" readonly>${ordAdd2 }
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
	                                <div class="col-md-1 mb-3">
	                                    <input type="text" class="form-control-plaintext" id="firstName" placeholder="" value="" required readonly>${ordPhone}
	                                </div>
	                            </div>
							</div>	

                            <div class="">
                                <label for="email">이메일
                                    <span class="text-muted">(Optional)</span>
                                </label>
                                <input type="email" class="form-control-plaintext" id="email" placeholder="you@example.com" readonly>
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <label for="country">요청사항</label>
                                    <input type="email" class="form-control-plaintext" id="requestMessage" placeholder="현관문 앞에 두고 가라" readonly>${ordRequest }
                                </div>
                            </div>
                            <hr class="mb-4">
                            <h4 class="mb-3">결제수단</h4>

                            <div class="col-md-6 mb-3">
                              <div class="row">
                                <div class="col-6 custom-control custom">
                                    <input id="credit" name="paymentMethod" type="hidden" onchange="setDisplay()" required>${paymentMethod }
                                    <label class="custom-control-label" for="credit">${paymentMethod }신용카드</label>
                                </div>
                                <div class="col-6 custom-control custom">
                                    <input id="paypal" name="paymentMethod" type="hidden" onchange="setDisplay()" required>
                                    <label class="custom-control-label" for="paypal">${paymentMethod }무통장입금</label>
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
                            
                            <div class="row justify-content-around">
	                            <button class="btn btn-primary" type="button" onclick="${pageContext.request.contextPath}/">홈으로</button>
	                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">커먼 게시판 글 등록</button>
                            </div>
                            
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title">커먼 게시판 글 등록</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							        <p>커먼 게시판에 현재 커먼상품으로 모집요청글을 남기시겠습니까?</p>
							      </div>
							      <div class="invalid-feedback">
							        이미 모집요청글이 등록되어 있습니다.
							      </div>
							      <div class="modal-footer">
							        <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/common_board?cmNum=${cmNum}">예</a>
							        <button type="submit" class="btn btn-secondary" data-dismiss="modal" onclick="${pageContext.request.contextPath}/">취소</button>
							      </div>
							    </div>
							  </div>
							</div>
                        </form>
                    </div>
                   </div>
                </div>
        </section>
    </main>

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
    function setDisplay() {
        if($('input:radio[id=paypal]').is(':checked')){
            $('#account_view').show();
        }else{
            $('#account_view').hide();
        }
    };	
    /*
    //var memEmail = ${loginMember.memEmail};
    var cmNum = ${cmNum};
    var ordQuantity = ${amountList};
    //var ordStatus = ${ordStatus};
    var ordZipcode = ${ordZipcode};
    //var ordAdd1 = ${ordAdd1};
    var ordAdd2 = ${ordAdd2};
    //var ordPhone = ${phone1};"+"${phone2};"+"${phone3};
    var ordRequest = ${ordRequest};
    var ordPayMethod = ${ordPayMethod};
    var prdCode = ${prdCodelist};
    console.log(ordQuantity);
    console.log(prdCodelist);
    */
    
    </script>
</body>

</html>