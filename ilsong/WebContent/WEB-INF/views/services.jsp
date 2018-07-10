<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>일송디자인 | SERVICE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<!-- css -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link href="css/animate.min.css" rel="stylesheet">
	<link href="css/style.css?ver=1" rel="stylesheet" />
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
	<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
	
	
</head>
<%
    // 컨텍스트 메서드 호출
    String path = request.getContextPath();
%>


<body>
  <header id="header">
    <nav class="navbar navbar-default navbar-static-top" role="banner">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
          <div class="navbar-brand">
            <a href="<%=path%>/index.do"><h1>일송디자인</h1></a>
          </div>
        </div>
        <div class="navbar-collapse collapse">
          <div class="menu">
            <ul class="nav nav-tabs" role="tablist">
              <li role="presentation"><a href="<%=path%>/index.do" >Home</a></li>
              <li role="presentation"><a href="<%=path%>/about.do">About Us</a></li>
              <li role="presentation"><a href="<%=path%>/services.do" class="active">Services</a></li>
              <li role="presentation"><a href="<%=path%>/gallery.do">Portfolio</a></li>
              <li role="presentation"><a href="<%=path%>/contact.do">Contact</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!--/.container-->
    </nav>
    <!--/nav-->
  </header>
  <!--/header-->

  <div class="services">
    <div class="container">
      <div class="text-center">
        <h2>MAIN SERVICES</h2>
        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
          <i class="fa fa-heart-o"></i>
          <h3>블로그 광고</h3>
          <p>블로그 디자인 제작 | 홈페이지형 블로그 제작 | 블로그 제작 후 관리 | 블로그 포스팅 대행</p>
        </div>
        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
          <i class="fa fa-cloud"></i>
          <h3>모바일 홈페이지 제작</h3>
          <p>우리 사엄장만의 모바일 홈페이지를 만들어보세요 고객님들께 많은 정보를 제공 할 수 있습니다.</p>
        </div>
        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
          <i class="fa fa-book"></i>
          <h3>인쇄광고</h3>
          <p>명함, 고급명함, 카드명함, 리플렛, 팜플렛, 포스터, 전단지, 스티커, 봉투, 현수막, 배너 등</p>
        </div>
        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
          <i class="fa fa-gear"></i>
          <h3>광고대행</h3>
          <p>네이버, 다음 노출광고 대행 | 네이버, 다음 사이트 등록 | 네이버, 다음 기본 상호검색 등록대행 | 페이스북 페이지 디자인 | 페이스북 광고</p>
        </div>
      </div>
    </div>
     
  </div>

   
<div id="footer">
          <jsp:include page="footer.jsp" />
</div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script>
    wow = new WOW({}).init();
  </script>

</body>

</html>
