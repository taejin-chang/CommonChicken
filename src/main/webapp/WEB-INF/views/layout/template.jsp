<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>CommonChicken</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/barfiller.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<!-- <style type="text/css">
	    .list {
			  max-height: 50px;
			  overflow-y: scroll !important;
			}
  </style> -->
</head>
<body>
 	<c:if test="${empty(login) }">
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	</c:if>
	<div id="content">
		<tiles:insertAttribute name="content"/>
		
 		<div id="msgStack" style="position: absolute; right: 0px; bottom: 0px;"></div>
	</div>

 	<c:if test="${empty(listing||login) }">
 	
		<div id="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</c:if>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- <script src="js/jquery.nice-select.min.js"></script> -->
    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.barfiller.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>	
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
    
    <script type="text/javascript">
    var ws = null;

    $(document).ready( function() {
    	if(${not empty(loginMember) }){
        connectWS();	
    	}
    });

    function connectWS() {
        console.log("tttttttttttttt")

        ws = new SockJS("<c:url value="/echo"/>");
    	ws.onopen = function() {
    		console.log('Info: connection opened.');
    		//setTimeout(function() { connect(); }, 1000);
    	};
    	
    	ws.onmessage = function (event) {
    		console.log('receive:', event.data+'\n');
    		onMessage(event);
    	};
    	
    	ws.onclose = function(event) { console.log('Info: connection closed.');};
    	ws.onerror = function(event) { console.log('error: connection error.');};
    	
    	$('#btnSend').on('click',function(evt) {
    		evt.preventDefault();
    		if(socket.readyState !==1) return;
    		let msg = $('input#msg').val();
    		ws.send(msg);
    	});
    }
    function onMessage(evt){
        var data = evt.data;
        
        var today = new Date();   
        
        var year = today.getFullYear();
        var month = ('0' + (today.getMonth() + 1)).slice(-2);
        var day = ('0' + today.getDate()).slice(-2);
        var hours = ('0' + today.getHours()).slice(-2); 
        var minutes = ('0' + today.getMinutes()).slice(-2);
        var seconds = ('0' + today.getSeconds()).slice(-2); 

        var datetimeString = year + '-' + month  + '-' + day + ' ' +hours + ':' + minutes  + ':' + seconds;

        
        // toast
        let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true'>";
        toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='mr-auto'>알림</strong>";
        toast += "<small class='text-muted'>"+datetimeString+"</small><button type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
        toast += "<span aria-hidden='true'>&times;</span></button>";
        toast += "</div> <div class='toast-body'>" + data + "</div></div>";
        $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가
        $(".toast").toast({"animation": true, "autohide": false});
        $('.toast').toast('show');
    };	
    </script>
</body>
</html>