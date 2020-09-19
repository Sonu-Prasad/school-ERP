package controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import beans.Classbean;
import beans.FileModel;
import beans.LearningMaterialBean;
import dao.ClassDAOImpl;
import dao.LeariningMaterialDAOImpl;
import helper.LearningMaterialExcelList;
@Controller
public class LearningMaterial  
{
	//All Registred Employee list
	@RequestMapping(value="/addmaterialForm",method=RequestMethod.GET)  
    public ModelAndView addlearningMaterialForm()  
    {  
		ModelAndView modal=new ModelAndView("addLearningMaterialForm");
		ClassDAOImpl dao=new ClassDAOImpl();
		List<Classbean> classList= dao.list();
		 modal.addObject("classList", classList);
        return modal;  
    } 
	@RequestMapping(value="/listlearningmaterial",method=RequestMethod.GET)  
    public ModelAndView listlearningMaterialForm()  
    {  
		ModelAndView modal=new ModelAndView("learningMaterialList");
		LeariningMaterialDAOImpl obj=new LeariningMaterialDAOImpl();
		List<LearningMaterialBean> docList= obj.list();
		modal.addObject("docList",docList);
        return modal;  
    } 
	
	
	
	
	  ServletContext context; 
		@RequestMapping(value="/learningmaterialdata",method=RequestMethod.POST)  
	    public ModelAndView studentRegistration(HttpServletRequest request, FileModel file) 
	      
		    {  

	    	           MultipartFile multipartFile = file.getFile();
//			           
			           String filename = "/home/sonu/workspace/erp/WebContent/resources/document/"
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
			           LearningMaterialBean bean=new LearningMaterialBean();
			                bean.setClassName(request.getParameter("class"));
			                bean.setSubject(request.getParameter("subject"));
			                bean.setChepter(request.getParameter("chapter"));
			                bean.setUrl(request.getParameter("url"));
			                bean.setType(request.getParameter("fileType"));
			                bean.setFileName(multipartFile.getOriginalFilename());
			                bean.setTitle(request.getParameter("title"));
			                LeariningMaterialDAOImpl.addLearningMaterial(bean);
			                          
			           
			        ModelAndView modal=new ModelAndView("addLearningMaterialForm");
			   		ClassDAOImpl dao=new ClassDAOImpl();
			   		List<Classbean> classList= dao.list();
			   		
			   		modal.addObject("classlist",classList);
			           return modal;  
		    }
		//Download only pdf file
		
		@RequestMapping(value="/download/{fileName}",method=RequestMethod.GET)
	    public void getLogFile(HttpSession session,@PathVariable("fileName") String fileName,HttpServletResponse response,HttpServletRequest request) throws Exception {
	        try {

	          //  String fileName=(String)file_name;
	            System.out.println("file name"+fileName);
	            String filePathToBeServed ="/home/sonu/workspace/erp/WebContent/resources/document/";
	            File fileToDownload = new File(filePathToBeServed+fileName+".pdf");

	            InputStream inputStream = new FileInputStream(fileToDownload);
	            response.setContentType("application/force-download");
	            response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf"); 
	            IOUtils.copy(inputStream, response.getOutputStream());
	            response.flushBuffer();
	            inputStream.close();
	        } catch (Exception exception){
	            exception.printStackTrace();
	        }

	    }
		@RequestMapping(value="/listpdf",method=RequestMethod.GET)  
	    public ModelAndView listInPdf()  
	    {  
			LeariningMaterialDAOImpl obj=new LeariningMaterialDAOImpl();
			List<LearningMaterialBean> docList= obj.list();
			Document doc=new Document();
			return new ModelAndView("pdfView", "listBooks", docList);
			
	    }
		
		@RequestMapping(value="/listexcel",method=RequestMethod.GET)  
	    public ModelAndView listInExcel()  
	    {  
			LeariningMaterialDAOImpl obj=new LeariningMaterialDAOImpl();
			List<LearningMaterialBean> docList= obj.list();
			return new ModelAndView(new LearningMaterialExcelList(), "listBooks", docList);
			
	    }
		
}
