<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="com.example.common.SMTPAuthenticatior"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
  
String company  = request.getParameter("company");
String name = request.getParameter("name");
String from = request.getParameter("from");
String to = request.getParameter("to");
String email = request.getParameter("email");
String number = request.getParameter("number");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

System.out.println(company);
System.out.println(name);
System.out.println(from);
System.out.println(to);
System.out.println(email);
System.out.println(number);
System.out.println(content);

Properties p = new Properties(); // 정보를 담을 객체
  ////////////////  네이버 안됨.  다음 됨
/* p.put("mail.smtp.host","smtp.mailplug.co.kr");
p.put("mail.smtp.port", "465");
p.put("mail.smtp.starttls.enable", "true");
p.put("mail.smtp.auth", "true");
p.put("mail.smtp.debug", "true");
p.put("mail.smtp.socketFactory.port", "465");
p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
p.put("mail.smtp.socketFactory.fallback", "false");
 */
 
///다음//////
/*
p.put("mail.transport.protocol", "smtp");
p.put("mail.smtp.host", "smtp.daum.net");
p.put("mail.smtp.port", "465");
p.put("mail.smtp.ssl.enable", "true");
p.put("mail.smtp.auth", "true");
*/
///GMAIL//////  gmail은 계정은 로그인및 보안가서 보안수준이 낮은 앱 허용 활성화 시켜야 한다.
// 구글계정에서 2단계인증 사용후 앱비밀번호를 세팅해야 한다. 기기선택에서 기타로 넣고 생성하면 기기용앱비밀번호가 나오는데
//       protected PasswordAuthentication getPasswordAuthentication() {
//        return new PasswordAuthentication("chunxpd@gmail.com","fanwbgcxjzavdsas");
// 위와 같이 나온 비밀번호를 기입하고  SMTPAuthenticatior.java 파일에 이메일주소와 패스워드를 넣어준다.

p.put("mail.transport.protocol", "smtp");
p.put("mail.smtp.host", "smtp.gmail.com");
p.put("mail.smtp.port", "465");
p.put("mail.smtp.starttls.enable","true");
p.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
p.put("mail.smtp.auth", "true");


// 컨텍스트 메서드 호출
String path = request.getContextPath();

  
try{
    Authenticator auth = new SMTPAuthenticatior();
    Session ses = Session.getInstance(p, auth);
      
    ses.setDebug(true);
    MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체 
 
    msg.setSubject(subject); //  제목
 
    StringBuffer buffer = new StringBuffer();
    
    buffer.append("담당자 : ");
    buffer.append(name+"<br>");   
    buffer.append("연락처 : ");
    buffer.append(number+"<br>");
    buffer.append("이메일 : ");
    buffer.append(email+"<br>");   
    buffer.append("제목 : ");
    buffer.append(subject+"<br>");
    buffer.append("내용 : ");
    buffer.append(content+"<br>");
    Address fromAddr = new InternetAddress(from);
    msg.setFrom(fromAddr); 
 
    Address toAddr = new InternetAddress(to);
    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
     
    msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); // 내용
    Transport.send(msg); // 전송  
 
} catch(Exception e){
    e.printStackTrace();
    return;
}
%>
<script type="text/javascript">
alert("정상적으로 메일이 보내졌습니다.");
location.href='<%=path%>/index.do'
</script>

