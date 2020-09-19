package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray;

import beans.Classbean;
import beans.FeeStructureBean;
import beans.StudentRegbean;
import beans.parentsbean;
import configurations.conn;

public class FeeStructureDAOImpl implements FeeStructureDAO
{

	@Override
	public int saveOrUpdate(FeeStructureBean feeStructure) 
	{
		// TODO Auto-generated method stub
		JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
		int counter=0;
        if(template==null)
        {
             System.out.println("error in template");
            
        }
        else
        {
        	String sql = "insert into feeStructure(feeheadid,classid,month,amount,classname,headName) values(?,?,?,?,?,?)";
    		try {

    			 counter = template.update(sql,
    					new Object[] {feeStructure.getFeeStructureHeadId(),feeStructure.getFeeStructureClassId(),feeStructure.getMonth(),feeStructure.getAmount(),feeStructure.getClassName(),feeStructure.getHeadName() });
    			

    			return counter;

    		} catch (Exception e) 
    		{
    			e.printStackTrace();
    			return counter;
    		}
        }
		
	   
        return counter;
	}

	@Override
	public void delete(int stuId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<FeeStructureBean> get(int stuId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FeeStructureBean> list() {
		// TODO Auto-generated method stub
		 String sqlSelectQuery = "SELECT feestructureid, feeheadid,classid,amount,month,classname,headName FROM feeStructure";
		 JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
	        if(template==null)
	        {
	             System.out.println("error in template");
	             return null;
	        }
	        else{
	        List<FeeStructureBean> beanclass = template.query(sqlSelectQuery, new RowMapper() 
	        {
	        	
	            public FeeStructureBean mapRow(ResultSet result, int rowNum) throws SQLException
	            {
	            	FeeStructureBean obj=new FeeStructureBean();
	            	   obj.setFeeStructureId(result.getInt("feestructureid"));
	            	   obj.setFeeStructureHeadId(result.getInt("feeheadid"));
	            	   obj.setFeeStructureClassId(result.getInt("classid"));
	            	   obj.setAmount(result.getDouble("amount"));
	            	   obj.setMonth(result.getString("month"));
	            	   obj.setHeadName(result.getString("headName"));
	            	   obj.setClassName(result.getString("classname"));
	            	return obj;
	            }
	        });
	        
	        return beanclass;
		}  
	}
	
	
	public static List<FeeStructureBean> getSfeeNameByclassId(int id) {
	    
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		List<FeeStructureBean> list = template.query("SELECT * FROM feeStructure where classid=?",
				new Object[] { id }, new RowMapper<FeeStructureBean>() {

					@Override
					public FeeStructureBean mapRow(ResultSet rs, int rowNum) throws SQLException {
						FeeStructureBean obj = new FeeStructureBean();
						  obj.setFeeStructureId(rs.getInt("feestructureid"));
						  obj.setAmount(rs.getDouble("amount"));
						return obj;

					}

				});
		return list;

	}
	
}