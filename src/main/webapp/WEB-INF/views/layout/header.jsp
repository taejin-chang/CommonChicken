<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Header Section Begin -->
<header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="header__logo">
                    <a href="./index.html"><img src="${pageContext.request.contextPath }/img/logo2.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <div class="header__nav">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./index.html">홈</a></li>
                            <li><a href="./listing.html">제품리스트</a></li>
                            <li><a href="#">리뷰</a></li>
                            <li><a href="#">공지</a>
                                <ul class="dropdown">
                                    <li><a href="./about.html">공지사항</a></li>
                                    <li><a href="./listing-details.html">이벤트</a></li>
                                    <!-- <li><a href="./blog-details.html">Blog Details</a></li>
                                    <li><a href="./contact.html">Contact</a></li> -->
                                </ul>
                            </li>
                             <!--<li class="header__menu__right"><a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                                <ul class="dropdown">
                                    <li><a href="./about.html">로그인</a></li>
                                    <li><a href="./listing-details.html">회원가입</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                    <li><a href="./contact.html">Contact</a></li>
                                </ul>
                            </li> -->
                            <!-- <li><a href="./blog.html">Blog</a></li>
                            <li><a href="#">Shop</a></li> -->
                        </ul>
                    </nav>
                    <div class="header__menu__right">
                         <!--<a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a> -->
                        <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                    </div> 
                </div>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>
<!-- Header Section End -->