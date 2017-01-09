package com.bitcamp.pick.web.util;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends javax.mail.Authenticator {
    public PasswordAuthentication getPasswordAuthentication() {
 
        return new PasswordAuthentication("pickyoutest01@gmail.com", "123456789pp");
        
    }
}