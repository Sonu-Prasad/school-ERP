package controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import beans.FileModel;
import beans.schoolbean;
import dao.SchoolInfoDAO;

@Controller
public class schollController
{
	@RequestMapping(value="/schoolInfo",method=RequestMethod.GET)  
    public ModelAndView singleMailForm()  
    {  
		ModelAndView modal=new ModelAndView("school");
		//ClassDAOImpl dao=new ClassDAOImpl();
		//List<Classbean> classList= dao.list();
		 //modal.addObject("classList", classList);
        return modal;  
    } 
	@Autowired
	   ServletContext context; 
	@RequestMapping(value="/schooldata",method=RequestMethod.POST)  
 public ModelAndView studentRegistration(@ModelAttribute schoolbean school,HttpServletRequest request, FileModel file,  HttpSession session) 
   
	    { 
		   System.out.println(school.getSchoolName()+"  "+ school.getPrincipal());
		   MultipartFile multipartFile = file.getFile();
		   String filename = "/home/sonu/workspace/erp/WebContent/resources/images/"
                   + multipartFile.getOriginalFilename();

				System.out.println("file path"+filename);
				try {
					FileCopyUtils.copy(file.getFile().getBytes(), new File(filename));
				  //  String fileName = multipartFile.getOriginalFilename();
					
					SchoolInfoDAO.saveOrUpdate(school,filename);
				    System.out.println(filename+"has sucessfully inserted");
				
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

	    return null;
	    
	    }
}
