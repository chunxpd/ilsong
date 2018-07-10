package com.example.common;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticatior extends Authenticator{ 
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
       /* return new PasswordAuthentication("chunxpd@gmail.com","fanwbgcxjzavdsas");*/
    	 return new PasswordAuthentication("ilsonge@gmail.com ","iqmnjwmbjowprchs");
    }
}


