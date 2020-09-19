package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.Employeebean;
import beans.LearningMaterialBean;
import configurations.conn;

public class LeariningMaterialDAOImpl
{
	public static int addLearningMaterial(LearningMaterialBean bean)
	{
	
	int counter=0;
	JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
    if(template==null)
    {
         System.out.println("error in template");
        
    }
    else
    {
    	String sql = "insert into learnigmaterial(classname,subject,chepter,title,youtubeurl,type,fileName) values(?,?,?,?,?,?,?)";
		try {

			counter = template.update(sql,
					new Object[] {bean.getClassName(),bean.getSubject(),bean.getChepter(),bean.getTitle(),bean.getUrl(),bean.getType(),bean.getFileName() });
			

			return counter;

		} catch (Exception e) 
		{
			e.printStackTrace();
			
		}
    }
	
   
	return counter;
	
	}
	public List<LearningMaterialBean> list() {
		 String sqlSelectQuery = "SELECT learningId,classname,subject,chepter,title,youtubeurl,type,fileName FROM learnigmaterial";
	        JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
	        
	        List<LearningMaterialBean> beanclass = template.query(sqlSelectQuery, new RowMapper() 
	        {
	        	
	            public LearningMaterialBean mapRow(ResultSet result, int rowNum) throws SQLException
	            {
	            	System.out.println("hello");
	            	LearningMaterialBean bean = new LearningMaterialBean();
	            	bean.setId(result.getInt("learningId"));
	            	bean.setClassName(result.getString("classname"));
	                bean.setSubject(result.getString("subject"));
	                bean.setChepter(result.getString("chepter"));
	                bean.setUrl(result.getString("youtubeurl"));
	                bean.setFileName(result.getString("fileName"));
	                bean.setTitle(result.getString("title"));
	                
	            	return bean;
	            }
	        });
	        
	        return beanclass;
		
   }
}
