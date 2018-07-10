<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>일송디자인 | PORTFOLIO</title>
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
              <li role="presentation"><a href="<%=path%>/services.do">Services</a></li>
              <li role="presentation"><a href="<%=path%>/gallery.do" class="active">Portfolio</a></li>
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

  <div class="gallery">
    <div class="text-center">
      <h2>PORTFOLIO</h2>
      <p></p>
    </div>
    <div class="container">
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/web1.jpg" alt="" class="img-responsive" />
          <figcaption>
            <h4>HOMEPAGE</h4>
            <p>네이버 "Modoo" 홈페이지 제작 대행</p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/www.wsclub.kr.jpg" alt="" class="img-responsive" />
          <figcaption>
            <h4>HOMEPAGE</h4>
            <p>시니어클럽 www.wsclub.kr</p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/www.stardaon.kr.jpg" alt="" class="img-responsive" />
           <figcaption>
            <h4>HOMEPAGE</h4>
            <p>별헤는마을다온 www.stardaon.kr</p>
          </figcaption>
        </figure>
      </div>
    </div>
    <!--  ***************************************************** -->
    <div class="container">
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/wjhyanggyo.jpg" alt="" class="img-responsive" />
		  <figcaption>
            <h4>HOMEPAGE</h4>
            <p>원주향교 wjhyanggyo.com</p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/www.kimsmuse.com.jpg" alt="" class="img-responsive" />
          <figcaption>
            <h4>HOMEPAGE</h4>
            <p>킴스실용음악학원 www.kimsmuse.com</p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/bigtreeedu.kr.jpg" alt="" class="img-responsive" />
          <figcaption>
            <h4>HOMEPAGE</h4>
            <p>큰나무사회적협동조합 http://bigtree-edu.kr</p>
          </figcaption>
        </figure>
      </div>
    </div>
    <!--  ***************************************************** -->
    
    
   <!--  ***************************************************** -->
    <div class="container">
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/qprime.kr.jpg" alt="" class="img-responsive" />
		 <figcaption>
            <h4>HOMEPAGE</h4>
            <p>큐프라임치과 http://qprime.kr</p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/cardnews1.jpg" alt="" class="img-responsive" />
          <figcaption>
            <h4>CARDNEWS</h4>
            <p>패션인스타 https://story.kakao.com/ch/instar0      </p>
          </figcaption>
        </figure>
      </div>
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/cardnews2.jpg" alt="" class="img-responsive" />
           <figcaption>
            <h4>CARDNEWS</h4>
            <p>뷰티뉴스 https://story.kakao.com/ch/beautynews</p>
          </figcaption>
        </figure>
      </div>
         <!--  ***************************************************** -->
         
            <!--  ***************************************************** -->
      <div class="col-md-4">
        <figure class="effect-marley">
          <img src="img/cardnews3.jpg" alt="" class="img-responsive" />
          <figcaption>
            <h4>CARDNEWS</h4>
            <p>감성뷰티 https://band.us/band/63602497</p>
          </figcaption>
        </figure>
      </div>
      
         <!--  ***************************************************** -->
       
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
