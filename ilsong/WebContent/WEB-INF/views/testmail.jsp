<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Moderna - Bootstrap 3 flat corporate template</title>
	 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
	<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
	
	
</head>
<%
    // 컨텍스트 메서드 호출
    String path = request.getContextPath();
%>
<script type="text/javascript">
$(document).ready(function(){
	
});
 

</script>

<body>
  <form name="a" action="<%=path%>/mailsend.do" method="post">
	<label>업체명</label><input type="text" name="company" value="11"> <br>
	<label>담당자</label><input type="text" name="name" value="22"> <br>
	<label>연락처</label><input type="text" name="number" value="333"> <br>
	<label>이메일</label><input type="text" name="email" value="44@gmail.com"> <br>
	<label>제목</label><input type="text" name="subject" value="111"> <br>
	<label>내용</label><input type="text" name="content" value="333"> <br>
	<input type="button" value="메일발송" onclick="check()">
	<input type="hidden" name="to" value="chunxpd@daum.net"> 
	<input type="hidden" name="from" value="chunxpd@daum.net">
</form>
	<script> 
	 function check() {
	    document.a.submit();
	}
	</script>


</body>

</html>
