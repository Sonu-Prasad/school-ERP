package dao;


import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import beans.vechilebean;
import configurations.conn;

public class VechileDao 
{
	  public int saveOrUpdate(vechilebean vechile)
	  {
		  JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
			int counter=0;
	        if(template==null)
	        {
	             System.out.println("error in template");
	             
	        }
	        else
	        {
	        	String sql = "insert into vechile(routename,midpoint1,midpoint2,vechileNo,seats,driverName,driverNo,conductorName,conductorNo,notes) values(?,?,?,?,?,?,?,?,?,?)";
	    		try {

	    			 counter = template.update(sql,
	    					new Object[] { vechile.getRoutename(),vechile.getMidpoint1(),vechile.getMidpoint2(),vechile.getVechileNo(),vechile.getSeats(),vechile.getDriverName(),vechile.getDriverNo(),vechile.getConductorName(),vechile.getConductorNo(),vechile.getNotes() });
	    			

	    		} catch (Exception e) 
	    		{
	    			e.printStackTrace();
	    			return 0;
	    		}
		  }
			return counter;
	  }
	  
	  @SuppressWarnings("rawtypes")
	public List<vechilebean> listAll(){
		  JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
			String sql = "SELECT * FROM vechile";
				List<vechilebean> vechile  = template.query(sql,new BeanPropertyRowMapper(vechilebean.class));
				
			return vechile;
		}
	public List<vechilebean> listByroute(String route){
		  JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
			String sql = "SELECT * FROM vechile where routename='"+route+"'";
				List<vechilebean> vechile  = template.query(sql,new BeanPropertyRowMapper(vechilebean.class));
				
			return vechile;
		}

}
