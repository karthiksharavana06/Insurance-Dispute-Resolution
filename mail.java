import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="mail ",urlPatterns={"/mail "})
public class mail extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
    {
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
         String gmail=request.getParameter("names");
        System.out.println(gmail);
         String pu_id=request.getParameter("id");
        System.out.println(pu_id);
        
        final String username="gudiyagupta810@gmail.com";
        final String password="gudiyagupta108";
        Properties props=new Properties();
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.starttls.enable","true");
        props.put("mail.smtp.starttls.required", "true");
        props.put("mail.smtp.host","smtp.gmail.com");
        props.put("mail.smtp.port","465");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
        Session session=Session.getInstance(props, 
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication()
                    {
                        return new PasswordAuthentication(username,password);
                        
                    }
                });
        try
        {
            Message message=new MimeMessage(session);
            message.setFrom(new InternetAddress(gmail));
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(gmail));
            MimeBodyPart textPart=new MimeBodyPart();
            Multipart multipart=new MimeMultipart();
            String final_Text="DEPARTMENT ID:" + pu_id ;
            textPart.setText(final_Text);
            //message.setSubject(subject);
            multipart.addBodyPart(textPart);
            message.setContent(multipart);
            message.setSubject("DEPARTMENT ID ");
            Transport.send(message);
            response.sendRedirect("police.jsp");
            out.println("email sent Successfully");
            out.println("thank you");
        }
        catch(Exception e)
        {
        out.println(e);
        }
            
          
            
        }
        
        
}

