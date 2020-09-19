package controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import beans.Loginbean;
import dao.LoginDAOImpl;  
@Controller  
public class Login
{  
   @RequestMapping({"/","/index"}) 
   public String display()  
   {  
        return "index";  
   }    
	@RequestMapping(value="/hello",method=RequestMethod.POST)  
    public ModelAndView redirect(@ModelAttribute Loginbean login,HttpSession session)  
    {  
		System.out.println("hjhjhj");
		ModelAndView modal;
		modal=new ModelAndView("redirect:/sucess");
		return modal;
//		if(LoginDAOImpl.validate(login)==true)
//		{
//			session.setAttribute("user", login.getUserName());
//			modal=new ModelAndView("redirect:/sucess");
//			return modal;	
//		}else{
//			modal=new ModelAndView("redirect:/index");
//			return modal;
//		}
//		
		
    } 
	@RequestMapping(value="/sucess")  
    public ModelAndView loginSucess(HttpSession session)  
    {
		int total=LoginDAOImpl.countStudent();
		int totemp=LoginDAOImpl.countEmployee();
		 System.out.println("total emp"+totemp);
		
		ModelAndView modal=new ModelAndView("AdminDashbord");
		modal.addObject("totalStudent", total);
		modal.addObject("totalEmp", totemp);
        return modal;	
    }
	@RequestMapping(value="/logout")  
    public String logout(HttpSession session)  
    {
		session.invalidate();
		
		return "index"; 
    }
    
	
}  