package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.Classbean;
import beans.Employeebean;
import configurations.conn;

public class EmployeeDAOImpl
{
    public int addEmp(Employeebean emp)
    {
    	int counter=0;
    	JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
        if(template==null)
        {
             System.out.println("error in template");
            
        }
        else
        {
        	String sql = "insert into employee(name,dob,gender,religion,emailid,phone,doj,image,type) values(?,?,?,?,?,?,?,?,?)";
    		try {

    			counter = template.update(sql,
    					new Object[] { emp.getName(),emp.getDob(),emp.getGender(),emp.getReligion(),emp.getEmail(),emp.getPhone(),emp.getDoj(),emp.getImage(),emp.getType() });
    			

    			return counter;

    		} catch (Exception e) 
    		{
    			e.printStackTrace();
    			
    		}
        }
		
	   
		return counter;
    }
    
    public List<Employeebean> list() {
		 String sqlSelectQuery = "SELECT empid,name,dob,emailid,phone,doj,type FROM employee";
	        JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
	        
	        List<Employeebean> beanclass = template.query(sqlSelectQuery, new RowMapper() 
	        {
	        	
	            public Employeebean mapRow(ResultSet result, int rowNum) throws SQLException
	            {
	            	System.out.println("hello");
	            	Employeebean employeebean = new Employeebean();
	            	employeebean.setEmpId(result.getInt("empid"));
	            	employeebean.setName(result.getString("name"));
	            	employeebean.setDob(result.getString("dob"));
	            	employeebean.setEmail(result.getString("emailid"));
	            	employeebean.setPhone(result.getString("phone"));
	            	employeebean.setDoj(result.getString("doj"));
	            	employeebean.setType(result.getString("type"));
	            	return employeebean;
	            }
	        });
	        
	        return beanclass;
		
    }
}
