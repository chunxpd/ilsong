<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>

<style>
.small1 { width: 20%; }
.small2 { width: 50%; }
.small3 { width: 100%; }
</style>
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
<footer>
    <div class="container">
      <div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
        <h4>About Us</h4>
        <p>홈페이지제작 / 모바일웹제작 / 블로그제작 / SNS / 마케팅</p>
        <div class="contact-info">
          <ul>
            <li><i class="fa fa-home fa"></i> 원주시 관설안길 23 </li>
            <li><i class="fa fa-phone fa"></i><a href="tel:010-2477-7001"  style="color: white" >+82 010-2477-7001</a></li>
            <li><i class="fa fa-envelope fa"></i> ilsonge@gmail.com </li>
          </ul>
        </div>
      </div>
	      <!-- <div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
	        <div class="text-center">
	          <h4>Photo Gallery</h4>
	          <ul class="sidebar-gallery">
	            <li><a href="#"><img src="img/gallery1.png" alt="" /></a></li>
	            <li><a href="#"><img src="img/gallery2.png" alt="" /></a></li>
	            <li><a href="#"><img src="img/gallery3.png" alt="" /></a></li>
	            <li><a href="#"><img src="img/gallery4.png" alt="" /></a></li>
	            <li><a href="#"><img src="img/gallery5.png" alt="" /></a></li>
	            <li><a href="#"><img src="img/gallery6.png" alt="" /></a></li>
	          </ul>
	        </div>
	      </div>
	       -->

      <div class="col-md-8 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
      
         <div class="row contact-wrap">
	        <div class="col-md-6 col-md-offset-3">
	          <h4>문의 메일</h4>
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
		            <div class="text-center"><input type="button" name="sendmail"  id="sendmail" class="btn-primary btn-lg" required="required"   value="메일발송"></div>
		            <br> 
		            <div class="text-center"><a href="https://pf.kakao.com/_xgvxedu" ><img src="img/ilsongkakao.png" class='small2'  ></div>
		            <input type="hidden" name="to" value="ilsonge@gmail.com"> 
					<input type="hidden" name="from" value="ilsonge@gmail.com">
	          </form>
	        </div>
	      </div> 
      </div>
    </div>
  </footer>
  
    <div class="sub-footer">
    <div class="container">
      <div class="social-icon">
        <div class="col-md-4">
          <ul class="social-network">
            <li><a href="https://pf.kakao.com/_xgvxedu" ><img src="img/kakaologo.png" class='small1'  ></i></a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-4 col-md-offset-4">
        <div class="copyright">
          &copy; ilSongDesign. All Rights Reserved.
          <div class="credits">
            <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Day
            -->
            <a href="https://bootstrapmade.com/">Free Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
      </div>
    </div>
  </div>