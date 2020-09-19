package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import beans.sectionbean;
import configurations.conn;

public class SectionDAOImpl implements SectionDAO
{  
	JdbcTemplate template;   
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    

	@Override
	public int saveOrUpdate(sectionbean sec)
	{
		String section=sec.getSection();
		System.out.println("section in dao sucess"+section);
		
		String sql = "insert into section(section) values(?)";
		try {

			int counter = template.update(sql,
					new Object[] { sec.getSection() });
			

			return counter;

		} catch (Exception e) 
		{
			e.printStackTrace();
			return 0;
		}
   
		
		
		
	}

	@Override
	public void delete(int secId) {
		String sql="delete from section where secid="+secId+"";   
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
	public sectionbean get(int secid)
	{
		System.out.println("in section bean get by id");
		template=new JdbcTemplate(conn.getDatabaseConnection());
		 String sql="select * from section where secid=?";    
		    return template.queryForObject(sql, new Object[]{secid},new BeanPropertyRowMapper<sectionbean>(sectionbean.class));    
		
	}

	@Override
	public List<sectionbean> list() 
	{
		  // SQL Operation #3 - SQL READ Operation
        String sqlSelectQuery = "SELECT secid, section FROM section";
        template=new JdbcTemplate(conn.getDatabaseConnection());
        if(template==null)
        {
             System.out.println("error in template");
             return null;
        }
        else{
        List<sectionbean> listContacts = template.query(sqlSelectQuery, new RowMapper() 
        {
        	
            public sectionbean mapRow(ResultSet result, int rowNum) throws SQLException
            {
            	System.out.println("hello");
            	sectionbean contactObj = new sectionbean();
                 System.out.println(result.getInt("secid")+"     "+result.getString("section"));
                 contactObj.setSecId(result.getInt("secid"));
                 contactObj.setSection(result.getString("section"));
                return contactObj;
            }
        });
        
        return listContacts;
	}  
	}    

}




