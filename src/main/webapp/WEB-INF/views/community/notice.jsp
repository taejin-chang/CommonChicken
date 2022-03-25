<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Directing | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css">
</head>

<body class="ov-hid">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header header--normal">
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
    </header>
    <!-- Header Section End -->

    <!-- Filter Begin -->
    <div class="filter nice-scroll">
        <div class="filter__title">
            <h5><i class="fa fa-filter"></i> 커먼모집</h5>
        </div>
        <br>
        <div class="filter__title">
            <h5><i class="fa fa-filter"></i> 리뷰</h5>
        </div>
        <br>
        <div class="filter__title">
            <h5><i class="fa fa-filter"></i> 공지사항</h5>
        </div>
        <br>
        <div class="filter__title">
            <h5><i class="fa fa-filter"></i> 이벤트</h5>
        </div>
        <div class="filter__search">
            <input type="text">
        </div>
    </div>
    <!-- Filter End -->
	<div class=" grid-margin stretch-card" style="margin: 150px 1% 1% 1%;">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">공지사항</h4>
                  <br>
                  <div class="table-responsive">
                    <table class="table" style="text-align: center;">
                      <thead>
                        <tr>
                          <th style="width: 10%;">글번호</th>
                          <th>제목</th>
                          <th style="width: 20%;">날짜</th>
                          <th style="width: 10%;">조회수</th>
                        </tr>
                      </thead>
                      <tbody >
                        <tr>
                          <td>1</td>
                          <td>제목1</td>
                          <td>2022.03.12</td>
                          <td>1</td>
                          <!-- <td><label class="badge badge-warning">In progress</label></td> -->                        </tr>
                        <tr>
                          <td>2</td>
                          <td>제목2</td>
                          <td>2022.03.12</td>
                          <td>1</td>
                          <!-- <td><label class="badge badge-warning">In progress</label></td> -->                        </tr>
                        <tr>
                          <td>3</td>
                          <td>제목3</td>
                          <td>2022.03.12</td>
                          <td>1</td>
                          <!-- <td><label class="badge badge-warning">In progress</label></td> -->                        </tr>
                        <tr>
                          <td>4</td>
                          <td>제목4</td>
                          <td>2022.03.12</td>
                          <td>1</td>
                          <!-- <td><label class="badge badge-warning">In progress</label></td> -->                        </tr>
                        <tr>
                          <td>5</td>
                          <td>제목5</td>
                          <td>2022.03.12</td>
                          <td>1</td>
                          <!-- <td><label class="badge badge-warning">In progress</label></td> -->
                        </tr>
                      </tbody>
                    </table>
                    <div class="template-demo" style="text-align: center;">
                     <button type="button" class="btn btn-primary"><</button>                                        
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-primary">1</button>
                          <button type="button" class="btn btn-primary">2</button>
                          <button type="button" class="btn btn-primary">3</button>
                        </div>
                        <button type="button" class="btn btn-primary">></button>                        
                      </div>
                  </div>
                </div>
              </div>
            </div>

    <!-- Listing Section End -->


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
</body>

</html>