package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.FeeHeadBean;
import beans.StudentRegbean;
import configurations.conn;

public class FeeHeadDAOImpl implements FeeHeadDAO
{

	@Override
	public int saveOrUpdate(FeeHeadBean feeHeadBean) {
		// TODO Auto-generated method stub
		JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
		int counter=0;
        if(template==null)
        {
             System.out.println("error in template");
             
        }
        else
        {
        	String sql = "insert into feeHead(headName,feetype) values(?,?)";
    		try {

    			 counter = template.update(sql,
    					new Object[] { feeHeadBean.getHeadName(),feeHeadBean.getHeadType() });
    			

    		} catch (Exception e) 
    		{
    			e.printStackTrace();
    			return 0;
    		}
	  }
		return counter;

	}

	@Override
	public void delete(int feeId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FeeHeadBean get(int feeId) {
		// TODO Auto-generated method stub
		return null;
		
	}

	@Override
	public List<FeeHeadBean> list()
	{
		// TODO Auto-generated method stub
		String sqlSelectQuery = "SELECT feeheadid,headName,feetype FROM feeHead";
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		List<FeeHeadBean> feeHead=null;
		if (template == null) {
			System.out.println("error in template");
			return feeHead;
		} else
		{
			 feeHead = template.query(sqlSelectQuery, new RowMapper()
			 {

				public FeeHeadBean mapRow(ResultSet result, int rowNum) throws SQLException 
				{
					System.out.println("hello");
					FeeHeadBean feeHeadobj = new FeeHeadBean();
					feeHeadobj.setFeeId(result.getInt("feeheadid"));
					feeHeadobj.setHeadName(result.getString("headName"));
					feeHeadobj.setHeadType(result.getString("feetype"));
					return feeHeadobj;
				}
			});

			return feeHead;
		}

	}

	
}
