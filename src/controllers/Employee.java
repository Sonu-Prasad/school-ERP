package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import beans.Employeebean;
import beans.StudentRegbean;
import dao.EmployeeDAOImpl;
import dao.StuRegDAOImpl;

@Controller 
public class Employee
{
	//All Registred Employee list
		@RequestMapping(value="/EmpList",method=RequestMethod.GET)  
	    public ModelAndView allEmployee()  
	    {  
			ModelAndView modal=new ModelAndView("empList");
			List<Employeebean> empbean=new EmployeeDAOImpl().list();
			  modal.addObject("empBean",empbean);
	        return modal;  
	    } 
		//All Registred Employee list
				@RequestMapping(value="/addEmpForm",method=RequestMethod.GET)  
			    public ModelAndView addEmployeeForm()  
			    {  
					ModelAndView modal=new ModelAndView("addEmployee");
					
			        return modal;  
			    } 
		//All Registred Employee list
				@RequestMapping(value="/addEmp",method=RequestMethod.POST)  
			    public ModelAndView addEmployee(HttpServletRequest request)  
			    {  
					
					Employeebean bean=new Employeebean();
					      bean.setName(request.getParameter("name"));
					      bean.setDob(request.getParameter("dob"));
					      bean.setEmail(request.getParameter("email"));
					      bean.setGender(request.getParameter("sex"));
					      bean.setImage(request.getParameter("image"));
					      bean.setDoj(request.getParameter("jod"));
					      bean.setReligion(request.getParameter("religion"));
					      bean.setType(request.getParameter("usertype"));
					      bean.setPhone(request.getParameter("phone"));
					EmployeeDAOImpl emp=new EmployeeDAOImpl();
					   int counter= emp.addEmp(bean);
					   
					   ModelAndView modal=null;
					   if(counter>0)
					   {
						    modal=new ModelAndView("redirect:/empList"); 
					   }
					      
					
					
					
			        return modal;  
			    } 
}
