package controllers;

import java.util.List;

import java.io.BufferedOutputStream;  
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;
import org.springframework.util.FileCopyUtils;
import org.springframework.beans.factory.annotation.Autowired;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
//import org.apache.commons.fileupload.servlet.ServletFileUpload;  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;  
import org.springframework.web.servlet.ModelAndView;  


import beans.Classbean;
import beans.FileModel;
import beans.StudentRegbean;
import beans.addressbean;
import beans.parentsbean;
import beans.sectionbean;
import dao.ClassDAOImpl;
import dao.SectionDAOImpl;
import dao.StuRegDAOImpl;
import dao.StudentParrentsDAOImpl;

@Controller 
public class Student
{
	@RequestMapping(value="/stuAdmission",method=RequestMethod.GET)  
    public ModelAndView student()  
    {  
		ModelAndView modal=new ModelAndView("studentAdmissionForm");
		ClassDAOImpl dao=new ClassDAOImpl();
		List<Classbean> classList= dao.list();
		
		modal.addObject("classlist",classList);
		
        return modal;  
    } 
	
	@Autowired
	   ServletContext context; 
	@RequestMapping(value="/newStuReg",method=RequestMethod.POST)  
    public ModelAndView studentRegistration(HttpServletRequest request, FileModel file,  
            HttpSession session) 
      
	    {  

		     //image work
		      
//		           System.out.println("Fetching file");
    	           MultipartFile multipartFile = file.getFile();
//		           String uploadPath = context.getRealPath("/") + File.separator + "temp" + File.separator;
		           //Now do something with file...
//		           String webappRoot = context.getRealPath("/");
//		           String relativeFolder = File.separator + "resources" + File.separator
//		                                    + "images" + File.separator;
		           String filename = "/home/sonu/workspace/erp/WebContent/resources/images/"
		                              + multipartFile.getOriginalFilename();
		          
		           System.out.println("file path"+filename);
		           try {
					FileCopyUtils.copy(file.getFile().getBytes(), new File(filename));
			         //  String fileName = multipartFile.getOriginalFilename();
			           System.out.println(filename+"has sucessfully inserted");

		           } catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		          
		     //image work end
		
		       String name=request.getParameter("sname");
		       String clas=request.getParameter("classesID");
		       String gender=request.getParameter("sex");
		       String sdob=request.getParameter("dob");
		       String relogion=request.getParameter("religion");
		       String cast=request.getParameter("caste");
		       String email=request.getParameter("email");
		       String area=request.getParameter("area");
		       String city=request.getParameter("city");
		       String pin=request.getParameter("pin");
		       String img=filename;
		       String prevSchool=request.getParameter("p_school");
		       String prevclas=request.getParameter("p_class");
		       
		       System.out.println(name+"  "+clas+"  "+gender+"  "+sdob+"  "+relogion+" "+cast+"  "+email +"  "+area+"  "+city+"  "+pin+"  "+img);
		        
		       //parrents work
		        String fname=request.getParameter("father_name");
		        String mname=request.getParameter("mother_name");
		        String fprofession=request.getParameter("father_profession");
		        String mprofession=request.getParameter("mother_profession");
		        String femail=request.getParameter("p_email");
		        String memail=request.getParameter("mother_email");
		        String fmobileno=request.getParameter("f_phone");
		        String mmobileno=request.getParameter("mother_phone");
		        String fanualinc=request.getParameter("f_annual_income");
		        String manualinc=request.getParameter("m_annual_income");
		        
		        parentsbean pobjs=new parentsbean();
		           pobjs.setFname(fname);
		           pobjs.setMname(mname);
		           pobjs.setFprofession(fprofession);
		           pobjs.setMprofession(mprofession);
		           pobjs.setFemail(femail);
		           pobjs.setMemail(memail);
		           pobjs.setFmobileno(fmobileno);
		           pobjs.setMmobileno(mmobileno);
		           pobjs.setFanualinc(fanualinc);
		           pobjs.setManualinc(manualinc);
		           
		       //end parrents data
		       //address work
		        String home=request.getParameter("home");
		 	    String post=request.getParameter("post");
		 	    String ps=request.getParameter("ps");
		 	    String dist=request.getParameter("dist");
		 	    String state=request.getParameter("state");
		 	    String pincode=request.getParameter("pin");
		 	    
		 	   addressbean address=new addressbean();
		 	     address.setHome(home);
		 	     address.setPost(post);
		 	     address.setPs(ps);
		 	     address.setDist(dist);
		 	     address.setState(state);
		 	     address.setPin(pincode);
		        //end of address data
		       StudentRegbean stu=new StudentRegbean();
		            stu.setName(name);
		            stu.setClas(clas);
		            stu.setGender(gender);
		            stu.setSdob(sdob);
		            stu.setRelogion(relogion);
		            stu.setCast(cast);
		            stu.setEmail(email);
		            stu.setArea(area);
		            stu.setCity(city);
		            stu.setPin(pin);
		            stu.setImg(img);
		            stu.setPrevclas(prevclas);
		            stu.setPrevSchool(prevSchool);
		            
		            StuRegDAOImpl stuobj=new StuRegDAOImpl();
		            stuobj.saveOrUpdate(stu,pobjs,address);
		     ModelAndView modal=new ModelAndView();
		
		    return modal;
	    }
	
	//All Registred student list
	@RequestMapping(value="/approvedList",method=RequestMethod.GET)  
    public ModelAndView allApprovededstudent()  
    {  
		ModelAndView modal=new ModelAndView("approvedStudent");
		 StuRegDAOImpl stuobj=new StuRegDAOImpl();
	    	List<StudentRegbean> studentList= stuobj.getAllApproved();
		
		
		modal.addObject("studentList",studentList);
		
        return modal;  
    } 
	//All Registred student list
		@RequestMapping(value="/registrationList",method=RequestMethod.GET)  
	    public ModelAndView allRegistredstudent()  
	    {  
			ModelAndView modal=new ModelAndView("AllRegistrationList");
			 StuRegDAOImpl stuobj=new StuRegDAOImpl();
		    	List<StudentRegbean> studentList= stuobj.list();
			
			
			modal.addObject("studentList",studentList);
			
	        return modal;  
	    } 
    
	//All Registred student details view
		@RequestMapping(value="/studentInfo/{sid}",method=RequestMethod.GET)  
	    public ModelAndView studentinfo(@PathVariable int sid)  
	    {  
			ModelAndView modal=new ModelAndView("studentDetailView");
			 StuRegDAOImpl stuobj=new StuRegDAOImpl();
			 
			 List<StudentRegbean> studentInfo= stuobj.get(sid);
			   
			 StudentRegbean obj=studentInfo.get(0);
			       ClassDAOImpl cdi=new ClassDAOImpl();
			       Classbean classbean=cdi.get(Integer.parseInt(obj.getClas()));
			       obj.setClas(classbean.getClassName());
			 
			modal.addObject("studentInfo",obj);
			
			
			StudentParrentsDAOImpl parent=new StudentParrentsDAOImpl();
			
			 List<parentsbean> parentobj=parent.getbysid(sid);
			 parentsbean pr=parentobj.get(0);
			 
			 modal.addObject("parent",pr);
			
			//System.out.println("student name"+studentInfo.getName());
	        return modal;  
	    } 

		
		// student Registration disapproved
				@RequestMapping(value="/studentregdis/{sid}",method=RequestMethod.GET)  
			    public ModelAndView studentRegDisapproved(@PathVariable int sid)  
			    {  
					
					 StuRegDAOImpl stuobj=new StuRegDAOImpl();
					 stuobj.updateRegistrationStatus(sid);
					 
                    ModelAndView modal=new ModelAndView("redirect:/registrationList");
					
					//System.out.println("student name"+studentInfo.getName());
			        return modal;  
			    } 
				
				// student Registration approved
				@RequestMapping(value="/admission_approval/{sid}",method=RequestMethod.GET)  
			    public ModelAndView studentRegApproved(@PathVariable int sid)  
			    {  
					
					 StuRegDAOImpl stuobj=new StuRegDAOImpl();
					 stuobj.updateRegistrationStatusApproved(sid);
					 
                    ModelAndView modal=new ModelAndView("redirect:/registrationList");
					
					//System.out.println("student name"+studentInfo.getName());
			        return modal;  
			    } 

				// student Registration approved
				@RequestMapping(value="/continoue/{sid}",method=RequestMethod.GET)  
			    public ModelAndView studentContinoue(@PathVariable int sid)  
			    {  
                    ModelAndView modal=new ModelAndView("AdmissionForm");
                   
            		SectionDAOImpl obj1=new SectionDAOImpl();
            		List<sectionbean> sectionList=obj1.list();
            		
            		if(sectionList!=null)
            		  {
            			  modal.addObject("sectionlist", sectionList);
            			
            		  }
            		
			        return modal;  
			    }
				
			    
}


