<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>일송디자인 | CONTACT</title>
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
<script> 
$(document).ready(function(){
	$("#sendmail").on("click", function(e){ 
		e.preventDefault();
		fn_search();
	});
});
	 
function fn_search(){ 
	if ( $("#name").val() =="" ){
		alert("이름이 누락됐습니다."); 
		$("#name").focus();
		return;
	}
	if ( $("#email").val() =="" ){
		alert("이메일이 누락됐습니다.");
		$("#email").focus();
		return;
	}else{
		
		var email =$("#email").val();
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

		if(exptext.test(email)==false){
			//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우			
			alert("이 메일형식이 올바르지 않습니다.");
			document.addjoin.email.focus();
			return false;
		}
		
	}
	if ( $("#number").val() =="" ){
		alert("전화번호가 누락됐습니다.");
		$("#number").focus();
		return;
	}
	if ( $("#content").val() =="" ){
		alert("내용이 누락됐습니다.");
		$("#content").focus();
		return;
	}
	
    var comSubmit = new ComSubmit("frm");
    comSubmit.setUrl("<c:url value='/mailsend.do' />");
    comSubmit.submit();
}
function gfn_isNull(str) {
    if (str == null) return true;
    if (str == "NaN") return true;
    if (new String(str).valueOf() == "undefined") return true;   
    var chkStr = new String(str);
    if( chkStr.valueOf() == "undefined" ) return true;
    if (chkStr == null) return true;   
    if (chkStr.toString().length == 0 ) return true;  
    return false;
}
 
function ComSubmit(opt_formId) {

    this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
    this.url = "";
     
    if(this.formId == "commonForm"){
        $("#commonForm")[0].reset();
    }
     
    this.setUrl = function setUrl(url){
        this.url = url;
    };
     
    this.addParam = function addParam(key, value){
        $("#"+this.formId).append($("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"' >"));
    };
     
    this.submit = function submit(){
        var frm = $("#"+this.formId)[0];
        frm.action = this.url;
        frm.method = "post";
        frm.submit();  
    };
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
              <li role="presentation"><a href="<%=path%>/index.do" >Home</a></li>
              <li role="presentation"><a href="<%=path%>/about.do">About Us</a></li>
              <li role="presentation"><a href="<%=path%>/services.do">Services</a></li>
              <li role="presentation"><a href="<%=path%>/gallery.do">Portfolio</a></li>
              <li role="presentation"><a href="<%=path%>/contact.do" class="active">Contact</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!--/.container-->
    </nav>
    <!--/nav-->
  </header>
  <!--/header-->

  <div class="map">
    <div id="google-map" data-latitude="37.317506" data-longitude="127.960941"></div>
  </div>

  <section class="contact-page">
    <div class="container">
      <div class="text-center">
        <h2>문의 메일 보내기</h2>
        <p>메일 접수후 바로 연락드립니다.</p>
      </div>
      <!-- <div class="row contact-wrap">
        <div class="col-md-6 col-md-offset-3">
          <div id="sendmessage">Your message has been sent. Thank you!</div>
          <div id="errormessage"></div>
          <form action="" method="post" role="form" class="contactForm">
            <div class="form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validation"></div>
            </div>
            <div class="text-center"><button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button></div>
          </form>
        </div>
      </div> -->
      
	      <div class="row contact-wrap">
	        <div class="col-md-6 col-md-offset-3">
	          <div id="sendmessage">Your message has been sent. Thank you!</div>
	          <div id="errormessage"></div>
	          <form id="frm"  name="frm"  >
		            <div class="form-group">
		              <input type="text" name="name" class="form-control" id="name" placeholder="이 름" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
		              <div class="validation"></div>
		            </div>
		            <div class="form-group">
		              <input type="email" class="form-control" name="email" id="email" placeholder="이메일" data-rule="email" data-msg="Please enter a valid email" />
		              <div class="validation"></div>
		            </div> 
		            <div class="form-group">
		              <input type="text" class="form-control" name="number" id="number" placeholder="전화번호" data-rule="minlen:4" data-msg="Please enter at least 8 chars of phone" />
		              <div class="validation"></div>
		            </div>
		            <div class="form-group">
		              <input type="text" class="form-control" name="subject" id="subject" placeholder="제목" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
		              <div class="validation"></div>
		            </div>
		            <div class="form-group">
		              <textarea class="form-control" name="content" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="내용"></textarea>
		              <div class="validation"></div>
		            </div>
		           <!--  <div class="text-center"><button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button></div> -->
		            <div class="text-center"><input type="button" name="sendmail"  id="sendmail" class="btn btn-primary btn-lg" required="required"   value="메일발송"></div>
		            <br> 
		            <!-- <div class="text-center"><a href="https://pf.kakao.com/_xgvxedu" ><img src="img/contact.jpg" class='small2'  ></div> -->
		            <input type="hidden" name="to" value="ilsonge@gmail.com"> 
					<input type="hidden" name="from" value="ilsonge@gmail.com">
	          </form>
	        </div>
	      </div> 
      <!--/.row-->
    </div>
    <!--/.container-->
  </section>
  <!--/#contact-page-->

		<div id="footer">
            <jsp:include page="footer.jsp" />
        </div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOVJbGOsDXO9Id95IKdYctp4Haj6LQcpY"></script>
  <script src="js/wow.min.js"></script>
  <script>
    wow = new WOW({}).init();
  </script>
  <script>
    (function($) {
      //Google Map
      var get_latitude = $('#google-map').data('latitude');
      var get_longitude = $('#google-map').data('longitude');

      function initialize_google_map() {
        var myLatlng = new google.maps.LatLng(get_latitude, get_longitude);
        var mapOptions = {
          zoom: 18,
          scrollwheel: false,
          center: myLatlng
        };
        var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map
        });
      }
      google.maps.event.addDomListener(window, 'load', initialize_google_map);
    })(jQuery);
  </script>
  <!-- <script src="contactform/contactform.js"></script>
 -->
</body>

</html>
