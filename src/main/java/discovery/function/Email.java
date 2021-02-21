package discovery.function;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class Email {

    private static String from = "NIDle_Team@163.com";
    private static String host = "smtp.163.com";

    private static Properties properties = System.getProperties();
    private static Session session;

    private static Email _instance;

    static {
        properties.setProperty("mail.smtp.host", host);
        properties.put("mail.smtp.auth", "true");

        session = Session.getDefaultInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("NIDle_Team@163.com", "WFYLKRHWZOWSRGJH");
            }
        });
    }

    private Email() {
    }

    public static Email GetInstance() {
        if (_instance == null)
            _instance = new Email();
        return _instance;
    }

    public void SendMessage(String to, String title, String content) {
        new Thread(() -> {
            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(from));
                message.addRecipients(Message.RecipientType.TO, new InternetAddress[]{new InternetAddress(to)});
                message.setSubject(title);
                message.setText(content);

                Transport.send(message);

                //System.out.println("发送邮件成功");
            } catch (MessagingException e) {
                e.printStackTrace();
            }
        }).start();
    }


}
