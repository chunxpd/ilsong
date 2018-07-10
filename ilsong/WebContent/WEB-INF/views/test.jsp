<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Moderna - Bootstrap 3 flat corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<style>

*{margin:0 ; padding:0}
.container{
	width: 630px;
	margin: 100px auto 0;
}

.box{
	float:left;
	width: 255px;
	height: 515px;
	margin: 0 30px;
	position: relative;
}

.back{
	position: absolute;
	top: 0;
	left: 0;
}

.box:hover .fron{transform: translateX(30px);}
.box:hover .back{transform: translateX(-30px);}

.front{transform: translateX(0px); transition: all 0.8s ease;}
.back{transform: translateX(0px); transition: all 0.8s ease;}

</style>
</head>
<%
	// 컨텍스트 메서드 호출
	String path = request.getContextPath();
%>

<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
<body>
<div class="container">
	<div class="box">
		<div class="front"><img src="img/gallery1.png"/></div>
		<div class="back"><img src="img/gallery2.png"/></div>
	</div>
	<div class="box">
		<div class="front"><img src="img/gallery1.png"/></div>
		<div class="back"><img src="img/gallery2.png"/></div>
	</div>
</div>


<br>
<img src="img/sns.png" usemap="sns">
<map id="sns" name="sns">
	<area shape="rect" alt="페이스북" title="페이스북" coords="14,15,105,106"	href="http://www.facebook.com" target="_blank" />
	<area shape="rect" alt="트위터" title="트위터" coords="122,21,206,102"	href="http://www.twitter.com" target="_top" />
	<area shape="rect" alt="네이버" title="" coords="223,20,304,106"	href="http://www.naver.com" target="_blank" />
	<area shape="rect" alt="카카오톡" title="" coords="327,22,404,102"	href="http://www.kakao.com" target="_self" />
	<area shape="rect" alt="" title="" coords="220,129,301,203" href=""	target="" />
	<!-- Created by Online Image Map Editor (http://www.maschek.hu/imagemap/index) -->
</map>
</body>
</html>