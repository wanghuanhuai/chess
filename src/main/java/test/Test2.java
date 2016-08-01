package test;

/**
 * Created by fi25 on 2016/7/15.
 */
import java.util.Date;
import java.util.Properties;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

public class Test2 {

    public static void main(String[] args) throws Exception {

        String host = "smtp.exmail.qq.com";
        int port = 465;
        String username = "wanghuanhuai@vip.qq.com";
        String password = "wanghuan1990";

        String content = "测试发邮件";

        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.auth", true);
        javaMailProperties.put("mail.smtp.starttls.enable", true);
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(host);
        mailSender.setPort(port);
        mailSender.setUsername(username);
        mailSender.setPassword(password);
        mailSender.setJavaMailProperties(javaMailProperties);
        String email = "w493516542@163.com";
        String tousername = "yyyy";
        for (int i = 0; i < 100; i++) {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper help = new MimeMessageHelper(message, true,
                    "UTF-8");
            help.setFrom(username);
            help.setTo(new String[] { email });
            help.setSubject("测试发个邮件");
            Date date = new Date();
            String _content = content.replace("${date}", date.toLocaleString());
            _content = content.replace("${tousername}", tousername);
            help.setText(_content, true);
            mailSender.send(message);
        }
    }

}