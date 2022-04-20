<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CommomChicken</title>
<style type="text/css">
body {
	text-align: center; 
}

.message {
	font-size: 1.5em;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<p class="message">${message }</p>
	<br>
	<br>
	<button type="button" onclick="location.href='javascript:history.back();'"  style="border:none;background-color:#E89321;width:300px;height:50px "><font style="color: #FFFFFF;font-size:1.5em">이전 페이지 이동</font></button> 
</body>
</html>