package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.Classbean;
import beans.sectionbean;
import configurations.conn;

public class ClassDAOImpl implements ClassDAO
{
	  public ClassDAOImpl()
	  {
		  
	  }
	  
	  JdbcTemplate template;   
		
	@Override
	public int saveOrUpdate(Classbean clas)
	{
		
		//String className=clas.getClassName();
		//String sql="delete from section where secid="+secId+"";   
		template=new JdbcTemplate(conn.getDatabaseConnection());
        if(template==null)
        {
             System.out.println("error in template");
            
        }
        else
        {
        	String sql = "insert into classes(classname) values(?)";
    		try {

    			int counter = template.update(sql,
    					new Object[] { clas.getClassName() });
    			

    			return counter;

    		} catch (Exception e) 
    		{
    			e.printStackTrace();
    			return 0;
    		}
        }
		
	   
		return 0;
	}

	@Override
	public void delete(int classId) {
		String sql="delete from classes where classid="+classId+"";   
		template=new JdbcTemplate(conn.getDatabaseConnection());
        if(template==null)
        {
             System.out.println("error in template");
            
        }
        else{
        	template.update(sql);
        }
		
	}

	@Override
	public Classbean get(int classid) {
		// TODO Auto-generated method stub
		Classbean obj=new Classbean();
		String sqlSelectQuery = "SELECT classname FROM classes WHERE classid=?";
        template=new JdbcTemplate(conn.getDatabaseConnection());
        if(template==null)
        {
             System.out.println("error in template");
             return null;
        }
        else{
        	String className = (String) template.queryForObject(
        			sqlSelectQuery, new Object[] { classid }, String.class);

            obj.setClassName(className);
            obj.setClassId(classid);
        }
		
		return obj;
	}

	@Override
	public List<Classbean> list() {
		 String sqlSelectQuery = "SELECT classid, classname FROM classes";
	        template=new JdbcTemplate(conn.getDatabaseConnection());
	        if(template==null)
	        {
	             System.out.println("error in template");
	             return null;
	        }
	        else{
	        List<Classbean> beanclass = template.query(sqlSelectQuery, new RowMapper() 
	        {
	        	
	            public Classbean mapRow(ResultSet result, int rowNum) throws SQLException
	            {
	            	System.out.println("hello");
	            	Classbean classobj = new Classbean();
	            	classobj.setClassId(result.getInt("classid"));
	            	classobj.setClassName(result.getString("classname"));
	            	//classobj.setSectionId(result.getInt("secid"));
	                
	            	//SectionDAOImpl sec=new SectionDAOImpl();
	            	//sectionbean secobj=sec.get(result.getInt("secid"));
	            	
	            	//classobj.setSectionName(secobj.getSection());
	            	//System.out.println(secobj.getSection());
	            	return classobj;
	            }
	        });
	        
	        return beanclass;
		}  
		
	}

}
