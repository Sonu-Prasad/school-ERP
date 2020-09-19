package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import beans.Classbean;
import beans.sectionbean;
import dao.ClassDAOImpl;
import dao.SectionDAO;
import dao.SectionDAOImpl;  
@Controller  
public class Section
{  
	@Autowired
	  SectionDAO dao;
	
	@RequestMapping(value="/sec",method=RequestMethod.GET)  
    public ModelAndView section()  
    {  
		ModelAndView modal=new ModelAndView("AddSection");
		

		SectionDAOImpl obj=new SectionDAOImpl();
		List<sectionbean> sectionList=obj.list();
		
		modal.addObject("sectionlist", sectionList);
        return modal;  
    }     
	
	@RequestMapping(value="/addsec",method=RequestMethod.POST)  
    public ModelAndView Addsection(@RequestParam("section") String section,ModelAndView modal)  
    {  
		System.out.println("Section  "+section);
		sectionbean obj=new sectionbean();
		  obj.setSection(section);
		 int t=dao.saveOrUpdate(obj);
	//	ModelAndView modal=new ModelAndView("AddSection");
		 

			SectionDAOImpl obj1=new SectionDAOImpl();
			List<sectionbean> sectionList=obj1.list();
			
			modal.addObject("sectionlist", sectionList);
		 modal.setViewName("AddSection");
        return modal;  
    } 
	
	 @RequestMapping(value="/deletesec/{id}",method = RequestMethod.GET)  
    public ModelAndView deletesection(@PathVariable int id)  
    {  
		//ModelAndView modal=new ModelAndView();
		
		System.out.println("delete section id =  "+id);
		SectionDAOImpl obj=new SectionDAOImpl();
		      obj.delete(id);
		      
		 //modal.setViewName("AddSection");
		 return new ModelAndView("redirect:/sec");
    }     
	
	
	
	
	
	
	//class work start
   
	@RequestMapping(value="/classes",method=RequestMethod.GET)  
    public ModelAndView classes()  
    {  
		ModelAndView modal=new ModelAndView("AddClass");
		
		//SectionDAOImpl obj=new SectionDAOImpl();
		//List<sectionbean> sectionList=obj.list();
		
		//modal.addObject("sectionlist", sectionList);
		
		
		ClassDAOImpl dao=new ClassDAOImpl();
		List<Classbean> classList= dao.list();
		
		modal.addObject("classlist",classList);
		
        return modal;  
    }     
	
	@RequestMapping(value="/addclass",method=RequestMethod.POST)  
    public ModelAndView Addclass(HttpServletRequest request) 
      
    { 
		String className=request.getParameter("classes");
		  Classbean obj=new Classbean();
		   obj.setClassName(className);
		   
		 ClassDAOImpl cls=new ClassDAOImpl();
			cls.saveOrUpdate(obj);
   /*    String[] section=request.getParameterValues("selectsection");
		System.out.println("class "+className);
		int id=0;
		String sec;
		
		for(int i=0;i<section.length;i++)
		{
			String[] str=section[i].split("-");
			 id=Integer.parseInt(str[0]);
			 sec=str[1];
			System.out.println("Section  "+id+"  "+sec);
			
			  Classbean obj=new Classbean();
			   obj.setClassName(className);
			   obj.setSectionId(id);
			ClassDAOImpl cls=new ClassDAOImpl();
			cls.saveOrUpdate(obj);
		}
		*/
			 return new ModelAndView("redirect:/classes");
		
    }
	//delete class list
	 @RequestMapping(value="/deleteclass/{id}",method = RequestMethod.GET)  
	    public ModelAndView deleteClass(@PathVariable int id)  
	    {  
			
			System.out.println("delete section id =  "+id);
			ClassDAOImpl obj=new ClassDAOImpl();
			
			      obj.delete(id);
			      
			       /* List<Classbean> classList= obj.list();
					
					SectionDAOImpl secobj=new SectionDAOImpl();
					List<sectionbean> sectionList=secobj.list();
					
					 modal.addObject("sectionlist", sectionList);
					
					 modal.addObject("classlist",classList);
					 
					 modal.setViewName("AddClass");
			        
					// return modal;*/
					 return new ModelAndView("redirect:/classes");
	    }     
		
	
}  