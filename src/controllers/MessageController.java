package controllers;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONObject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController
{
	@RequestMapping(value="/sendMessage",method=RequestMethod.GET)  
    public ModelAndView singleMailForm()  
    {  
		ModelAndView modal=new ModelAndView("sendSms");
		//ClassDAOImpl dao=new ClassDAOImpl();
		//List<Classbean> classList= dao.list();
		 //modal.addObject("classList", classList);
        return modal;  
    } 
	@RequestMapping(value="/message",method = RequestMethod.POST)  
    public  String addVechile(HttpServletRequest request){  
        
		System.out.println("mobile "+request.getParameter("mobile")+"   "+"message   "+request.getParameter("message"));
        
	    final String url = "https://www.way2sms.com";
	    /**
	     *
	     * @param token 
	     * @param phone 10 digit mobile number
	     * @param message
	     * @param senderId
	     */
	    try{
	          // construct data
	        JSONObject urlParameters = new JSONObject();
	        urlParameters.put("apikey","9P4NVFJZZ4TXEME6S4A70QDFZV5MDXW7");
	        urlParameters.put("secret","ANK6MN1NQEQL4QQT");
	        urlParameters.put("usetype","json");
	        urlParameters.put("phone", request.getParameter("mobile"));
	        urlParameters.put("message", URLEncoder.encode(request.getParameter("message"),"UTF-8"));
	        urlParameters.put("senderid", "Airtel");
	        URL obj = new URL(url + "/api/v1/sendCampaign");
	          // send data
	        HttpURLConnection httpConnection = (HttpURLConnection) obj.openConnection();
	        httpConnection.setDoOutput(true);
	        httpConnection.setRequestMethod("POST");
	        DataOutputStream wr = new DataOutputStream(httpConnection.getOutputStream());
	        wr.write(urlParameters.toString().getBytes());
	        // get the response  
	        BufferedReader bufferedReader = null;
	        if (httpConnection.getResponseCode() == 200) {
	            bufferedReader = new BufferedReader(new InputStreamReader(httpConnection.getInputStream()));
	        } else {
	            bufferedReader = new BufferedReader(new InputStreamReader(httpConnection.getErrorStream()));
	        }
	        StringBuilder content = new StringBuilder();
	        String line;
	        while ((line = bufferedReader.readLine()) != null) {
	            content.append(line).append("\n");
	        }
	        bufferedReader.close();
	        return content.toString();
	      }catch(Exception ex){
	        ex.printStackTrace();
	        return "{'status':500,'message':'Internal Server Error'}";
	      }
	        
	    }
    } 

