package test;

/**
 * Created by fi25 on 2016/7/15.
 */
    import java.io.IOException;
    import java.util.Date;
    import java.util.Properties;
    import javax.mail.Authenticator;
    import javax.mail.BodyPart;
    import javax.mail.Message;
    import javax.mail.MessagingException;
    import javax.mail.Multipart;
    import javax.mail.Transport;
    import javax.mail.internet.AddressException;
    import javax.mail.internet.InternetAddress;
    import javax.mail.internet.MimeBodyPart;
    import javax.mail.internet.MimeMessage;
    import javax.mail.internet.MimeMultipart;
    public class TestEmail {
        public static void  main(String args[]){
            try {
                send_email();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        public static void send_email() throws IOException, MessagingException{

            String to = "wanghuanhuai@qq.com";
            String subject = "subject";
            String content = "content";
            Properties properties = new Properties();
            properties.put("mail.smtp.host", "smtp.163.com");
            properties.put("mail.smtp.port", "25");
            properties.put("mail.smtp.auth", "true");
            Authenticator authenticator = new Email_Authenticator("lansonchinazj@163.com", "wanghuan1990");
            javax.mail.Session sendMailSession = javax.mail.Session.getDefaultInstance(properties, authenticator);
            MimeMessage mailMessage = new MimeMessage(sendMailSession);
            mailMessage.setFrom(new InternetAddress("lansonchinazj@163.com"));
            // Message.RecipientType.TO属性表示接收者的类型为TO
            mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            mailMessage.setSubject(subject, "UTF-8");
            mailMessage.setSentDate(new Date());
            // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
            Multipart mainPart = new MimeMultipart();
            // 创建一个包含HTML内容的MimeBodyPart
            BodyPart html = new MimeBodyPart();
            html.setContent(content.trim(), "text/html; charset=utf-8");
            mainPart.addBodyPart(html);
            mailMessage.setContent(mainPart);
            Transport.send(mailMessage);
        }
    }

