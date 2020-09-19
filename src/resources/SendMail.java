package resources;

import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.InputStream;
 
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class SendMail
{
	private JavaMailSender mailSender;
    private SimpleMailMessage simpleMailMessage;
	
	public void setSimpleMailMessage(SimpleMailMessage simpleMailMessage) {
		this.simpleMailMessage = simpleMailMessage;
	}
	
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	
    public void sendMail(String from, final String to, final String subject, final String msg,String attach,CommonsMultipartFile attachFile) {  
       /* //creating message  
        SimpleMailMessage message = new SimpleMailMessage();  
        message.setFrom(from);  
        message.setTo(to);  
        message.setSubject(subject);  
        message.setText(msg); */
    	/*MimeMessage message = mailSender.createMimeMessage();
    	try{
    		MimeMessageHelper helper = new MimeMessageHelper(message, true);
    		helper.setFrom(from);
    		helper.setTo(to);
    		helper.setSubject(subject);	
    		helper.setText(msg);
    		FileSystemResource file;
    		if(attach!=null)
    		{
    		   // file = new FileSystemResource("/home/sonu/Downloads/Admission.pdf");
        		helper.addAttachment(attachName, new InputStreamSource() {
                          
                         @Override
                         public InputStream getInputStream() throws IOException {
                             return attachFile.getInputStream();
                         }
                     });
        		
    		}
    		
    		
    	 }catch (Exception e) {
    			e.printStackTrace();;
    		     }*/
        //sending message  
    	//mailSender.send(message); 
    	 mailSender.send(new MimeMessagePreparator() {
    		 
             @Override
             public void prepare(MimeMessage mimeMessage) throws Exception {
                 MimeMessageHelper messageHelper = new MimeMessageHelper(
                         mimeMessage, true, "UTF-8");
                 messageHelper.setTo(to);
                 messageHelper.setSubject(subject);
                 messageHelper.setText(msg);
                  
                 // determines if there is an upload file, attach it to the e-mail
                 String attachName = attachFile.getOriginalFilename();
                 System.out.println("attachment file  size"+attachFile.getSize());
                 if (attachFile.getSize() > 0)
                 {
  
                     messageHelper.addAttachment(attachName, new InputStreamSource() {
                          
                         @Override
                         public InputStream getInputStream() throws IOException {
                             return attachFile.getInputStream();
                         }
                     });
                 }
                  
             }
  
         });
  
    }  

}
