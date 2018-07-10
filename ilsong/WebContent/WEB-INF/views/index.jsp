<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>일송디자인 | il SONG DESIGN</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	
	
	
	<!-- css -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.css?ver=1">
	<link href="css/animate.min.css" rel="stylesheet">
	<link href="css/style.css?ver=1" rel="stylesheet" />
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
	<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
	 
	 </style>
</head>
<%
    // 컨텍스트 메서드 호출
    String path = request.getContextPath();
%>

<script type="text/javascript">
$(document).ready(function(){
	
});
$("#go-bottom").click(function(){
	
});
function goDiv(seq){
	var offset = $("#about1").offset();
	var offset = $("#about" + seq).offset();
    $('html, body').animate({scrollTop : offset.top}, 400);

}
</script>

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
              <li role="presentation"><a href="<%=path%>/index.do" class="active">Home</a></li>
              <li role="presentation"><a href="<%=path%>/about.do">About Us</a></li>
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

  <div class="slider">
    <div id="about-slider">
      <div id="carousel-slider" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators visible-xs">
          <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-slider" data-slide-to="1"></li>
          <li data-target="#carousel-slider" data-slide-to="2"></li>
        </ol>
     

        <div class="carousel-inner">
        
          <div class="item active">
            <img src="img/slide.jpg" class="img-responsive" alt="">
            <div class="carousel-caption"><br><br>
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
                 <img src = "img/main1.png" onClick="goDiv('1');">
              </div>
              <div class="wow fadeInRight" data-wow-offset="120" data-wow-delay="1.4s">
                 <img src="img/poimg.png" style="max-width: 50%; height: auto;">
              </div>
           <!--    <div class="col-md-10 col-md-offset-1">
                <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
                  <img src = "img/main1-1-1.png">
                </div>
              </div> -->
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">
                <form class="form-inline">
                  <div class="form-group">
                   <!--  <button type="button" name="Live Demo" class="btn btn-primary btn-lg" required="required" onClick="goDiv('1');" style="font-size : 20px;" >자세히>></button> -->
                    
                  </div>
                </form>
              </div>
            </div>
          </div>

          <div class="item">
            <img src="img/mainimage1.jpg" class="img-responsive" alt="">
            <div class="carousel-caption"><br><br>
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
                <img src = "img/main2.png" onClick="goDiv('2');">
              </div>
               <div class="wow fadeInLeft" data-wow-offset="120" data-wow-delay="1.4s">
                 <img src="img/poimg2.png" style="max-width: 50%; height: auto;">
              </div>
                <!-- <div class="col-md-10 col-md-offset-1">
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
                  <img src = "img/main2-2-2.png">
                </div>
              </div> -->
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.6s">
                <form class="form-inline">
                  <div class="form-group">
                <!--     <button type="button" name="purchase" class="btn btn-primary btn-lg" required="required" onClick="goDiv('2');" style="font-size : 20px;">자세히>></button> -->
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="img/mainimage2.jpg" class="img-responsive" alt="">
            <div class="carousel-caption"><br><br>
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
                <img src = "img/main3.png" onClick="goDiv('3');">
              </div>
               <div class="wow fadeInUp" data-wow-offset="120" data-wow-delay="1.4s">
                 <img src="img/poimg3.png" style="max-width: 100%; height: auto;">
              </div>
           <!--    <div class="col-md-10 col-md-offset-1">
                <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
                  <img src = "img/main3-3-3.png">
                </div>
              </div> -->
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">
                <form class="form-inline">
                  <div class="form-group">
                 <!--    <button type="button"  name="purchase" class="btn btn-primary btn-lg" required="required"  onClick="goDiv('3');" style="font-size : 20px;">자세히>></button> -->
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>

        <a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
					<i class="fa fa-angle-left"></i>
				</a>

        <a class=" right carousel-control hidden-xs" href="#carousel-slider" data-slide="next">
					<i class="fa fa-angle-right"></i>
				</a>
      </div>
      <!--/#carousel-slider-->
    </div>
    <!--/#about-slider-->
  </div>
  <!--/#slider-->
  <div class="about" id="about1">
    <div class="container">
    	<div class="col-md-5">
	        <figure class="effect-marley">
	          <img src="img/responsible.png"alt="" class="img-responsive " width="100%"  />
	       </figure>
	     </div>
	     <div  class="col-md-7">
	         <!--  <figure class="effect-marley">
	          <img src="img/nmain1-1.png"alt="" width="100%" />
	      	 </figure>  -->
	       
 				       <div class="text-left">
 				       <img src="img/test1.png"alt="" class="img-responsive " width="100%"  />
				        <!-- <h2>아직도 PC버전, Mobile버전 홈페이지를 따로 만드시나요? </h2> -->
				        <div class="col-md-10 col-md-offset-1">
				          <p>현재 대부분의 웹사이트는 PC버전, Mobile버전 홈페이지를 따로 관리하고 있습니다. 
				          그 이유는 스크린(해상도)의 크기가 다르기 때문입니다.<br> 
				          Mobile웹의 경우 PC웹과 달리 작은 화면(해상도)에 모든 내용을 포함시킬 수 없어 모바일 환경에 맞춰 별도의 웹피이지를 제작합니다.
				          그렇다보니 사이트 제작 비용과 시간이 많이 들며, 관리 또한 불편한 것이 사실입니다.
				          <br><b>하지만 2018 모바일시대의 경쟁력은 반응형웹!</b>
				          <br> - 어떠한 환경에서도 최적의 해상도 유지 / 홈페이지 제작시간 및 비용절감
				          <br> - PC웹 Mobile웹 구분없이 통합관리기능 / 통합 마케팅으로 홍보효과 상승
				           <br>
				          <font color="#088A08">  <b>반응형 웹사이트란?</b><br>
				           '데스크톱, 태블릿, 모바일' 그 외 어떠한 새로운 기기에도 알맞은 화면(해상도)으로 즉각 반응하는 웹사이트를 말합니다.
				          </font>
				             
				        </div>
				
				        <div class="col-md-6 col-sm-6 col-xs-6">
				          <div class="btn-gamp"><a href="<%=path%>/contact.do">문의하기</a></div>
				        </div>
				        <div class="col-md-6 col-sm-6 col-xs-6">
				          <div class="gamp-btn"><a href="<%=path%>/gallery.do">PORTFOLIO</a></div>
				        </div>
			
			   	  		 </div> 
	       
	     </div>
    </div>
  </div>
  <hr>
  
    <div class="about" id="about2">
    <div class="container">
    	<div class="col-md-5">
	        <figure class="effect-marley">
	          <img src="img/customzing.png"alt="" class="img-responsive " width="100%"  />
	       </figure>
	     </div>
	     <div  class="col-md-7">
	       <!--  <figure class="effect-marley">
	          <img src="img/nmain2-2.png"alt="" width="100%" />
	       </figure>  -->
		        <div class="text-left">
		        	<img src="img/test3.png"alt="" class="img-responsive " width="100%"  />
			         <!-- <h2>아직도 PC버전, Mobile버전 홈페이지를 따로 만드시나요? </h2>  -->
			        <div class="col-md-10 col-md-offset-1">
			           <p>홈페이지제작 / 모바일제작 / 블로그제작 / SNS / 마케팅
			           <br>
					          홍보 마케팅과 동행하여 디자인은 이미지 마케팅의 기본으로, 
					          <br>사람들의 시선을 사로 잡을만한 감각적인 디자인은 꼭 필요합니다.
					          사업소개 및 상업활동부터 개인의 취미생활을 담는 공간까지, 
					          <br><b>일송디자인</b>은 고객님이 원하는 용도에 알맞게 제작해드립니다.
					          <br>고객 여러분의 성공 파트너로서 끊임없는 노력과 일송디자인만의 노하우로 
					          <br>고객 여러분의 성공을 도와드리겠습니다.
					          <br><b>워드프레스 / cafe24 / 저렴한 홈페이지 '네이버모두' 제작대행</b>
					          <br><b>네이버, 다음 노출 광고 대행 / 사이트 등록</b>
			             
			        </div>
			
			        <div class="col-md-6 col-sm-6 col-xs-6">
			          <div class="btn-gamp"><a href="<%=path%>/contact.do">문의하기</a></div>
			        </div>
			        <div class="col-md-6 col-sm-6 col-xs-6">
			          <div class="gamp-btn"><a href="<%=path%>/gallery.do">PORTFOLIO</a></div>
			        </div>
			
			      </div>
	       
	     </div> 
    </div>
  </div>
  <hr>
  
    <div class="about" id="about3">
    <div class="container">
    	<div class="col-md-5">
    	
	        <figure class="effect-marley">
	          <img src="img/cardnews.png"alt="" class="img-responsive " width="100%"  />
	       </figure>
	     </div>
	     <div  class="col-md-7">
	        <div class="text-left">
	        <img src="img/test2.png"alt="" class="img-responsive " width="100%"  />
		        <!-- <h2>SNS 마케팅 이제 카드뉴스로 간단명료하게 전달됩니다.</h2> -->
			        <div class="col-md-10 col-md-offset-1">
			          <p>뷰티업계 카드뉴스 대행 전문업체
			          <br>SNS 컨텐츠 제작 및 관리/등록 대행
			          <br>(밴드/스토리채널/페이스북/App)
			        
			          <br>뷰티 / 다이어트 / 패션 / 일상 팁 / 영어 등 다양한 주제로 가능합니다.
			         
			        </div>
			
			        <div class="col-md-6 col-sm-6 col-xs-6">
			          <div class="btn-gamp"><a href="<%=path%>/contact.do">문의하기</a></div>
			        </div>
			        <div class="col-md-6 col-sm-6 col-xs-6">
			          <div class="gamp-btn"><a href="<%=path%>/gallery.do">PORTFOLIO</a></div>
			        </div>
			
			      </div>
	     </div>
    </div>
  </div>
  <hr>
  
  
  <%-- <div class="about1" id="about1">
    <div class="container">
      <div class="text-center">
        <h2>아직도 PC버전, Mobile버전 홈페이지를 따로 만드시나요? </h2>
        <div class="col-md-10 col-md-offset-1">
          <p>현재 대부분의 웹사이트는 PC버전, Mobile버전 홈페이지를 따로 관리하고 있습니다. 그 이유는 스크린(해상도)의 크기가 다르기 때문입니다.<br> 
          Mobile웹의 경우 PC웹과 달리 작은 화면(해상도)에 모든 내용을 포함시킬 수 업서 모바일 환경에 맞춰 별도의 웹피이지를 제작합니다.<br>
          그렇다보니 사이트 제작 비용과 시간이 많이 들며, 관리 또한 불편한 것이 사실입니다.
          <br><b>하지만 2018 모바일시대의 경쟁력은 반응형웹!</b>
        
          <br>  - 어떠한 환경에서도 최적의 해상도 유지
          <br>  - 홈페이지 제작시간 및 비용절감
          <br> - PC웹 Mobile웹 구분없이 통합관리기능
          <br> - 통합 마케팅으로 홍보효과 상승
           <br><br>
          <font color="#088A08">  <b>반응형 웹사이트란?</b><br>
           '데스크톱, 태블릿, 모바일' 그 외 어떠한 새로운 기기에도 알맞은 화면(해상도)으로 즉각 반응하는 웹사이트를 말합니다.
          </font>
             
        </div>

        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="btn-gamp"><a href="<%=path%>/contact.do">문의하기</a></div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="gamp-btn"><a href="<%=path%>/gallery.do">PORTFOLIO</a></div>
        </div>

      </div>
    </div>
  </div>
  <hr>

  <div class="about2" id="about2">
    <div class="container">
      <div class="text-center">
        <h2>고객을 먼저 생각하는 웹디자인 전문업체 일송디자인입니다. </h2>
        <div class="col-md-10 col-md-offset-1">
          <p>홈페이지제작 / 모바일제작 / 블로그제작 / SNS / 마케팅
          홍보 마케팅과 동행하여 디자인은 이미지 마케팅의 기본으로, 사람들의 시선을 사로 잡을만한 감각적인 디자인은 꼭 필요합니다.
          사업소개 및 상업활동부터 개인의 취미생활을 담는 공간까지, 일송디자인은 고객님이 원하는 용도에 알맞게 제작해드립니다.
          고객 여러분의 성공 파트너로서 끊임없는 노력과 일송디자인만의 노하우로 고객 여러분의 성공을 도와드리겠습니다.
          <br><b>워드프레스 / cafe24 / 저렴한 홈페이지 '네이버모두' 제작대행</b>
          <br><b>네이버, 다음 노출 광고 대행 / 사이트 등록</b>
         
        </div>

        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="btn-gamp"><a href="<%=path%>/contact.do"">문의하기</a></div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="gamp-btn"><a href="<%=path%>/gallery.do">PORTFOLIO</a></div>
        </div>

      </div>
    </div>
  </div>
  <hr>

  <div class="about3" id="about3">
    <div class="container">
      <div class="text-center">
        <h2>SNS 마케팅 이제 카드뉴스로 간단명료하게 전달됩니다.</h2>
        <div class="col-md-10 col-md-offset-1">
          <p>뷰티업계 카드뉴스 대행 전문업체
          <br>SNS 컨텐츠 제작 및 관리/등록 대행
          <br>(밴드/스토리채널/페이스북/App)
        
          <br>뷰티 / 다이어트 / 패션 / 일상 팁 / 영어 등 다양한 주제로 가능합니다.
         
        </div>

        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="btn-gamp"><a href="<%=path%>/contact.do">문의하기</a></div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-6">
          <div class="gamp-btn"><a href="<%=path%>/gallery.do">PORTFOLIO</a></div>
        </div>

      </div>
    </div>
  </div> --%>
  <hr>
 
 
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
