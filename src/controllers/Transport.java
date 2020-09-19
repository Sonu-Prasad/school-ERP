package controllers;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import beans.vechilebean;
import dao.VechileDao;

@Controller
public class Transport
{
	@RequestMapping(value="/transportFront",method=RequestMethod.GET)  
    public ModelAndView singleMailForm()  
    {  
		ModelAndView modal=new ModelAndView("addVechile");
		//ClassDAOImpl dao=new ClassDAOImpl();
		//List<Classbean> classList= dao.list();
		 //modal.addObject("classList", classList);
        return modal;  
    } 
	@RequestMapping(value="/vechileList",method=RequestMethod.GET)  
    public ModelAndView vechileList()  
    {  
		ModelAndView modal=new ModelAndView("vechileLists");
		VechileDao dao=new VechileDao();
	    List<vechilebean> vechile=dao.listAll();
	      modal.addObject("vechileList", vechile);
        return modal;  
    } 
	@RequestMapping(value="/addvechileFormdata",method = RequestMethod.POST)  
    public ModelAndView addVechile(@ModelAttribute("SpringWeb") vechilebean vechile){  
        
		System.out.println("route name"+vechile.getRoutename());
        VechileDao dao=new VechileDao();
         dao.saveOrUpdate(vechile);
        return new ModelAndView("redirect:/transportFront"); 
    } 
	
	@RequestMapping(value="/transportMemberForm",method=RequestMethod.GET)  
    public ModelAndView transportMember()  
    {  
		ModelAndView modal=new ModelAndView("addvechileMember");
		    VechileDao dao=new VechileDao();
		    List<vechilebean> vechile=dao.listAll();
		    for(vechilebean cust: vechile){
	         	 System.out.println("Customer Bs : " + cust.getRoutename());
	         	 
	        }
		    
		 modal.addObject("vechileList", vechile);
        return modal;  
    } 
	
	
	@RequestMapping(value="/check",method = RequestMethod.POST,produces = "application/json") 
	public @ResponseBody String loadreateVisitType(@RequestBody String routename,HttpServletRequest request, HttpServletResponse response)
			throws JsonProcessingException {    
			    // NOTE1: change the method to return a "String"
			    // NOTE2: add "throws JsonProcessingException" to the method (or catch it)
		       System.out.println(routename);
			    List<String> serviceCategories1=new ArrayList<String>(); 
			    VechileDao dao=new VechileDao();
			    List<vechilebean> vechile=dao.listByroute(routename);
			    for(vechilebean cust: vechile){
		         	 System.out.println("route name: " + cust.getRoutename());
		         	serviceCategories1.add(cust.getVechileNo()); 
		        }
			    
			     
			   ObjectMapper mapper = new ObjectMapper();
			   return mapper.writeValueAsString(serviceCategories1);
			   }
}
