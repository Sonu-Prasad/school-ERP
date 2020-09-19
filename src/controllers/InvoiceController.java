package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import beans.Classbean;
import beans.FeeHeadBean;
import beans.StudentRegbean;
import beans.sectionbean;
import beans.vechilebean;
import dao.ClassDAOImpl;
import dao.FeeHeadDAOImpl;
import dao.SectionDAOImpl;
import dao.StuRegDAOImpl;
import dao.VechileDao;

@Controller
public class InvoiceController
{
	// create invoice
		@RequestMapping(value = "/createinvoice", method = RequestMethod.GET)
		public ModelAndView createInvoice() {
			ModelAndView modal = new ModelAndView("invoiceCreate");
			ClassDAOImpl dao = new ClassDAOImpl();
			List<Classbean> classList = dao.list();

			SectionDAOImpl obj1 = new SectionDAOImpl();
			List<sectionbean> sectionList = obj1.list();

			if (classList != null && sectionList != null) {
				modal.addObject("classList", classList);
				modal.addObject("sectionlist", sectionList);

				System.out.println("add class list");
			}
			return modal;
		}
		
		// create invoice form data for search Student Record
		@RequestMapping(value = "/invoiceCreate", method = RequestMethod.POST)
		public ModelAndView createInvoiceFormData(HttpServletRequest request)
		{
			String clas[] = request.getParameter("class").split("-");
			int classId = Integer.parseInt(clas[0]);
			//String className = clas[1];
			
			String section[] = request.getParameter("sec").split("-");
			int secId = Integer.parseInt(section[0]);
			//String secName = section[1];
			
			System.out.println("classid"+classId +"    "+"sec id"+secId);
			
			List<StudentRegbean> stuobj=StuRegDAOImpl.getStudentRecordByclasssection(classId, secId);
			System.out.println("student name in account controller "+stuobj.get(0).getName());
			
			ModelAndView modal = new ModelAndView("invoiceCreate");
			ClassDAOImpl dao = new ClassDAOImpl();
			List<Classbean> classList = dao.list();

			SectionDAOImpl obj1 = new SectionDAOImpl();
			List<sectionbean> sectionList = obj1.list();

			if (classList != null && sectionList != null) {
				modal.addObject("classList", classList);
				modal.addObject("sectionlist", sectionList);

				System.out.println("add class list");
			}
			modal.addObject("student", stuobj);
			return modal;
		}
		
		

	// create invoice 
		@RequestMapping(value="/create/{sid}",method=RequestMethod.GET)  
	    public ModelAndView studentContinoue(@PathVariable int sid)  
	    {  
	        ModelAndView modal=new ModelAndView("createinvoiceform");
	        FeeHeadDAOImpl obj = new FeeHeadDAOImpl();
			List<FeeHeadBean> feeheadList = obj.list();
			
			ClassDAOImpl dao = new ClassDAOImpl();
			List<Classbean> classList = dao.list();
			
			if (feeheadList != null) {

				 modal.addObject("feeheadList", feeheadList);
	             modal.addObject("stuID", sid);
	             modal.addObject("classList", classList);
			}  
			
	        return modal;  
	    }
	
}
