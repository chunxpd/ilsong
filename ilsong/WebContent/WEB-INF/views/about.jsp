<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>일송디자인 | ABOUT US</title>
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
              <li role="presentation"><a href="<%=path%>/about.do" class="active">About Us</a></li>
              <li role="presentation"><a href="<%=path%>/services.do">Services</a></li>
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

  <div class="about">
    <div class="container">
    	<div class="col-md-4">
    	
	        <figure class="effect-marley">
	          <img src="img/aboutus.png"alt="" class="img-responsive " />
	       </figure>
	     </div>
	     <br>
	     <div  class="col-md-7">
    	
	        <figure class="effect-marley">
	          <img src="img/aboutus2.png"alt="" width="100%" />
	       </figure>
	     </div>
    </div>
  </div>
  <hr>

   
  <!--/about-us-->

  
  <section id="about-us">
    <div class="container">
       
      <!-- our-team -->
      <div class="team">
        <div class="text-center wow fadeInDown">
          <h2>ilSONG DESIGN TEAM</h2>
          <p>일송디자인은 전문 디자이너, 마케팅 담당자들로 이루어진 체계적인 기업입니다.</p>
        </div>

        <div class="row clearfix">
          <div class="col-md-4 col-sm-6">
            <div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
              <div class="media">
                <div class="pull-left">
                  <a href="#"><img class="media-object" src="img/ilsong2.png" width="145px" height="137px" alt=""></a>
                </div>
                <div class="media-body">
                  <h4>Hong Il song</h4>
                  <h5>Founder and CEO</h5>
                  <ul class="tag clearfix">
                    <li class="btn"><a href="#">홈페이지</a></li>
                    <li class="btn"><a href="#">바이럴마케팅</a></li>
                    <li class="btn"><a href="#">SNS운영대행</a></li>
                    <li class="btn"><a href="#">디자인</a></li>
                  </ul>

                  <ul class="social_icons">
                  </ul>
                </div>
              </div>
              <!--/.media -->
              <p></p>
            </div>
          </div>
          <!--/.col-lg-4 -->


          <div class="col-md-4 col-sm-6 col-md-offset-2">
            <div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
              <div class="media">
                <div class="pull-left">
                  <a href="#"><img class="media-object" src="img/designer2.png" width="145px" height="137px" alt=""></a>
                </div>
                <div class="media-body">
                  <h4>Lee song yi</h4>
                  <h5>Main Designer</h5>
                  <ul class="tag clearfix">
                    <li class="btn"><a href="#">Web</a></li>
                    <li class="btn"><a href="#">Ui</a></li>
                    <li class="btn"><a href="#">Ux</a></li>
                    <li class="btn"><a href="#">Photoshop</a></li>
                    <li class="btn"><a href="#">ILLUST/INDESIGN</a></li>
                  </ul>
                   <ul class="social_icons">
                   </ul>
                </div>
              </div>
              <!--/.media -->
              <p></p>
            </div>
          </div>
          <!--/.col-lg-4 -->
        </div>
        <!--/.row -->
        <div class="row team-bar">
          <div class="first-one-arrow hidden-xs">
            <hr>
          </div>
          <div class="first-arrow hidden-xs">
            <hr> <i class="fa fa-angle-up"></i>
          </div>
          <div class="second-arrow hidden-xs">
            <hr> <i class="fa fa-angle-down"></i>
          </div>
          <div class="third-arrow hidden-xs">
            <hr> <i class="fa fa-angle-up"></i>
          </div>
          <div class="fourth-arrow hidden-xs">
            <hr> <i class="fa fa-angle-down"></i>
          </div>
        </div>
        <!--skill_border-->

        <div class="row clearfix">
          <div class="col-md-4 col-sm-6 col-md-offset-2">
            <div class="single-profile-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
              <div class="media">
                <div class="pull-left">
                  <a href="#"><img class="media-object" src="img/program.png" width="145px" height="137px" alt=""></a>
                </div>

                <div class="media-body">
                  <h4>Hong jae sung</h4>
                  <h5>Programmer</h5>
                  <ul class="tag clearfix">
                    <li class="btn"><a href="#">Web</a></li>
                    <li class="btn"><a href="#">MediaQuery</a></li>
                    <li class="btn"><a href="#">Linux</a></li>
                    <li class="btn"><a href="#">Java</a></li>
                    
                  </ul>
                  <ul class="social_icons">
                  </ul>
                </div>
              </div>
              <!--/.media -->
              <p></p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-md-offset-2">
            <div class="single-profile-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
              <div class="media">
                <div class="pull-left">
                  <a href="#"><img class="media-object" src="img/designer.png" width="145px" height="137px" alt=""></a>
                </div>
                <div class="media-body">
                  <h4>Lee min ji</h4>
                  <h5>Sub Designer</h5>
                  <ul class="tag clearfix">
                    <li class="btn"><a href="#">Web</a></li>
                    <li class="btn"><a href="#">Ui</a></li>
                    <li class="btn"><a href="#">Ux</a></li>
                    <li class="btn"><a href="#">Photoshop</a></li>
                  </ul>
                  <ul class="social_icons">
                  </ul>
                </div>
              </div>
              <!--/.media -->
              <p> </p>
            </div>
          </div>
        </div>
        <!--/.row-->
      </div>
      <!--section-->
    </div>
    <!--/.container-->
  </section>
  <!--/about-us-->
  
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
