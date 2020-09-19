package dao;

import org.springframework.jdbc.core.JdbcTemplate;

import configurations.conn;

public class InvoiceDAOImpl 
{
   public static int addInvoice(String fee,String[] month,String sid)
   {
	   Double fees=Double.parseDouble(fee);
	   Integer studentid=Integer.parseInt(sid);
	   int counter=0;
	   JdbcTemplate template=new JdbcTemplate(conn.getDatabaseConnection());
	   String sql = "insert into studentinvoice(studentId,month,tutionfee) values(?,?,?)";
	   for (int i = 0; i < month.length; i++)
	   {
		   try {

  			 counter = template.update(sql,
  					new Object[] {studentid,month[i],fees });
  			
  		} catch (Exception e) 
  		{
  			e.printStackTrace();
  			return counter;
  		}
	   }
	   return counter;
   }
}
