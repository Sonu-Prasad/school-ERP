package dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import beans.Loginbean;
import beans.vechilebean;
import configurations.conn;

public class LoginDAOImpl
{
	public static int countStudent()
	{
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		int total=0;
		String sql = "select count(*) from student";
		if (template != null)
		{
			
			total=template.queryForObject(sql, Integer.class);

		}
		
		return total;

	}
	public static int countEmployee()
	{
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		int total=0;
		String sql = "select count(*) from employee";
		if (template != null)
		{
			
			total=template.queryForObject(sql, Integer.class);

		}
		
		return total;

	}
	public static boolean validate(Loginbean bean)
	{
		JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
		String sql = "SELECT * FROM login where userName='"+bean.getUserName()+"' and password='"+bean.getPassword()+"'";
			@SuppressWarnings("unchecked")
			List<Loginbean> user  = template.query(sql,new BeanPropertyRowMapper(Loginbean.class));
		try{
			Loginbean temp=user.get(0);
		       System.out.println("After select      "+temp.getUserName()+"    "+temp.getPassword());
		       System.out.println("After bean select "+bean.getUserName()+"    "+bean.getPassword());
				if(bean.getUserName().equals(temp.getUserName()) && bean.getPassword().equals(temp.getPassword()))
				{
					System.out.println("testing"+temp.getUserName()+"    "+temp.getPassword());
					return true;
				}else{
					return false;
				}
		}catch(Exception Ex){
			return false;
		}
	  
	}
	
}
