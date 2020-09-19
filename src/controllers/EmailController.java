package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import resources.SendMail;

@Controller
public class EmailController
{
	@RequestMapping(value="/sendsinglemail",method=RequestMethod.GET)  
    public ModelAndView singleMailForm()  
    {  
		ModelAndView modal=new ModelAndView("singleEmail");
		//ClassDAOImpl dao=new ClassDAOImpl();
		//List<Classbean> classList= dao.list();
		 //modal.addObject("classList", classList);
        return modal;  
    } 
	
	@RequestMapping(value="/maildata",method=RequestMethod.POST)  
    public ModelAndView sendMail(HttpServletRequest request,final @RequestParam CommonsMultipartFile attachFile)  
    {
		String to=request.getParameter("to");
		String from=request.getParameter("from");
		String sub=request.getParameter("subject");
		String msg=request.getParameter("message");
		String attach=attachFile.getOriginalFilename();
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("configurations/mail-bean.xml");
		
		SendMail m=(SendMail)context.getBean("sendMail");  
		String sender=from;//write here sender gmail id  
		String receiver=to;//write here receiver id  
		System.out.println("file path"+attach);
		m.sendMail(sender,receiver,sub,msg,attach,attachFile);  
		      
		ModelAndView modal=null;
		   
			    modal=new ModelAndView("redirect:/sendsinglemail"); 
		   
		return modal;  
		
    }
}
