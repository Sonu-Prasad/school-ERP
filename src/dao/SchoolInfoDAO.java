package dao;

import org.springframework.jdbc.core.JdbcTemplate;
import beans.schoolbean;
import configurations.conn;

public class SchoolInfoDAO 
{
	public static int saveOrUpdate(schoolbean school,String file)
	  {
			JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
			int counter=0;
		    if(template==null)
		    {
		         System.out.println("error in template");
		         
		    }
		    else
		    {
		
		    	String sql = "insert into schoolInfo(schoolName,address,principal,principal_email,"
		    			+ "principal_mobile,chairman,cur_addmision_year,web_url,fax_no,board,school_code,"
		    			+ "registd_year,financial_year,schoolcontact,email,class_allow,file) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				try {
		
					 counter = template.update(sql,
							new Object[] { 
									school.getSchoolName(),school.getAddress(),school.getPrincipal(),school.getPrincipal_email(),
									school.getPrincipal_mobile(),school.getChairman(),school.getCur_addmision_year(),school.getWeb_url(),
									school.getFax_no(),school.getBoard(),school.getSchool_code(),school.getRegistd_year(),school.getFinancial_year(),
									school.getSchoolcontact(),school.getEmail(),school.getClass_allow(),file
									
							});
					
		
				} catch (Exception e) 
				{
					e.printStackTrace();
					return 0;
				}
		  }
			return counter;
}

}
