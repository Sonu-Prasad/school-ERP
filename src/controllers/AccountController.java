package controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import beans.Classbean;
import beans.FeeHeadBean;
import beans.FeeStructureBean;
import beans.StudentRegbean;
import beans.sectionbean;
import beans.vechilebean;
import dao.ClassDAOImpl;
import dao.FeeHeadDAOImpl;
import dao.FeeStructureDAOImpl;
import dao.InvoiceDAOImpl;
import dao.SectionDAOImpl;
import dao.StuRegDAOImpl;
import dao.VechileDao;

@Controller
public class AccountController {
	@RequestMapping(value = "/feehead", method = RequestMethod.GET)
	public ModelAndView feeHead() {
		ModelAndView modal = new ModelAndView("feeHead");
		FeeHeadDAOImpl obj = new FeeHeadDAOImpl();
		List<FeeHeadBean> feeheadList = obj.list();
		if (feeheadList != null) {

			modal.addObject("feeheadList", feeheadList);
		} else {
			System.out.println("error in fetching valuue");
		}

		return modal;
	}

	@RequestMapping(value = "/feeheaddata", method = RequestMethod.POST)
	public ModelAndView addfeehead(HttpServletRequest request) {
		String head = request.getParameter("feehead");
		String type = request.getParameter("fee_type");

		FeeHeadBean feehead = new FeeHeadBean();
		feehead.setHeadName(head);
		feehead.setHeadType(type);
		FeeHeadDAOImpl obj = new FeeHeadDAOImpl();
		obj.saveOrUpdate(feehead);
		ModelAndView modal = new ModelAndView("redirect:/feehead");

		return modal;
	}

	@RequestMapping(value = "/feeStructure", method = RequestMethod.GET)
	public ModelAndView feeStructure() {
		ModelAndView modal = new ModelAndView("feeStructure");

		FeeHeadDAOImpl obj = new FeeHeadDAOImpl();
		List<FeeHeadBean> feeheadList = obj.list();

		ClassDAOImpl dao = new ClassDAOImpl();
		List<Classbean> classList = dao.list();

		FeeStructureDAOImpl fee = new FeeStructureDAOImpl();
		List<FeeStructureBean> feeList = fee.list();

		if (feeheadList != null && classList != null) {
			modal.addObject("classList", classList);
			modal.addObject("feeheadList", feeheadList);
			modal.addObject("feeList", feeList);

		} else {
			System.out.println("error in fetching valuue");
		}

		return modal;
	}

	@RequestMapping(value = "/feestructuredata", method = RequestMethod.POST)
	public ModelAndView addfeeStructure(HttpServletRequest request) {
		String head[] = request.getParameter("fee_head").split("-");
		int headid = Integer.parseInt(head[0]);
		String headName = head[1];
		String clas[] = request.getParameter("class").split("-");
		int classId = Integer.parseInt(clas[0]);
		String className = clas[1];
		String amount = request.getParameter("amount");

		String[] month = request.getParameterValues("selectMonth");

		FeeStructureDAOImpl obj = new FeeStructureDAOImpl();

		for (int i = 0; i < month.length; i++) {
			System.out.println(
					headid + "  " + headName + " " + classId + "  " + className + " " + amount + " " + month[i]);
			FeeStructureBean bean = new FeeStructureBean();
			bean.setFeeStructureHeadId(headid);
			bean.setFeeStructureClassId(classId);
			bean.setAmount(Double.parseDouble(amount));
			bean.setMonth(month[i]);
			bean.setHeadName(headName);
			bean.setClassName(className);

			obj.saveOrUpdate(bean);

		}

		return new ModelAndView("redirect:/feeStructure");
	}

	
	
	
	
	/* create invoice form data 
		//@RequestMapping(value = "/invoicesubmited",method=RequestMethod.POST)
		@RequestMapping(value = "/invoicesub",method =RequestMethod.POST)
	  public ModelAndView created(HttpServletRequest request)
		{
			String clas[] = request.getParameter("class").split("-");
			int classId = Integer.parseInt(clas[0]);
			String[] month = request.getParameterValues("selectMonth");
			String fee = request.getParameter("tutsionfee");
			String sid=request.getParameter("sid");
			// call invoice DAOIMPL 
			int count=InvoiceDAOImpl.addInvoice(fee,month,sid);
			System.out.println("totel row inserted"+count);
			ModelAndView modal = new ModelAndView("redirect:/feehead");
			return modal;
		}*/
		
	
	@RequestMapping(value = "/feeBilling", method = RequestMethod.GET)
	public ModelAndView feeBilling() {
		ModelAndView modal = new ModelAndView("billing");
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
	@RequestMapping(value="/changeclass",method = RequestMethod.POST,produces = "application/json") 
	public @ResponseBody String loadreateVisitType(@RequestBody String classid,HttpServletRequest request, HttpServletResponse response)
			throws JsonProcessingException {    
			    // NOTE1: change the method to return a "String"
			    // NOTE2: add "throws JsonProcessingException" to the method (or catch it)
		       System.out.println(classid);
		       String clas[] = classid.split("-");
				int classId = Integer.parseInt(clas[0]);
				String className = clas[1];
				System.out.println("class id"+classId);
				List<FeeStructureBean> amount= FeeStructureDAOImpl.getSfeeNameByclassId(classId);
				System.out.println("amount ="+amount.get(0).getAmount());
			    List<String> serviceCategories1=new ArrayList<String>(); 
			    serviceCategories1.add(Double.toString(amount.get(0).getAmount()));
			   
			   ObjectMapper mapper = new ObjectMapper();
			   return mapper.writeValueAsString(serviceCategories1);
			   }

}
