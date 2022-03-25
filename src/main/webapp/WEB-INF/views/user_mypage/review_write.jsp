<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Directing | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/barfiller.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/star.css" type="text/css">
</head>

<body class="ov-hid">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	

	<!-- Filter Begin -->
	<div class="filter nice-scroll">
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 커먼모집
			</h5>
		</div>
		<br>
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 리뷰
			</h5>
		</div>
		<br>
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 공지사항
			</h5>
		</div>
		<br>
		<div class="filter__title">
			<h5>
				<i class="fa fa-filter"></i> 이벤트
			</h5>
		</div>
		<div class="filter__search">
			<input type="text">
		</div>
	</div>
	<!-- Filter End -->
	<div class="row" style="margin: 150px 1% 1% 1%;">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<h2 class="text-center">리뷰 작성</h2>
			<form action="BoardWriterProc.jsp"name="myform" id="myform" method="post">
				<table class="table table-striped">
					
					<tr>
						<td>이미지</td>
						<td><input type="file" name="email"></td>
					</tr>

					<tr>
						<td>별점</td>
						<td>
							<fieldset>
								<input type="radio" name="rating" value="5" id="rate1"><label
									for="rate1">⭐</label> <input type="radio" name="rating"
									value="4" id="rate2"><label for="rate2">⭐</label> <input
									type="radio" name="rating" value="3" id="rate3"><label
									for="rate3">⭐</label> <input type="radio" name="rating"
									value="2" id="rate4"><label for="rate4">⭐</label> <input
									type="radio" name="rating" value="1" id="rate5"><label
									for="rate5">⭐</label>
							</fieldset>


						</td>
					</tr>

					<tr>
						<td>내용</td>
						<td><textarea rows="10" cols="50" name="content"
								class="form-control"></textarea></td>
					</tr>
					<tr>

						<td colspan="2" class="text-center"><input type="submit"
							value="글쓰기" class="btn btn-success"> <input type="reset"
							value="다시작성" class="btn btn-warning">
							<button type="button" class="btn btn-primary">전체 게시글보기</button></td>
					</tr>

				</table>
			</form>
		</div>
	</div>

	<!-- Listing Section End -->


	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.barfiller.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>