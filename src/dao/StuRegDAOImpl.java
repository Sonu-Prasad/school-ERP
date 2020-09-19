
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import beans.Classbean;
import beans.StudentRegbean;
import beans.addressbean;
import beans.parentsbean;
import beans.sectionbean;
import configurations.conn;

public class StuRegDAOImpl implements StuRegDAO {

	@Override
	public int saveOrUpdate(StudentRegbean stu,parentsbean pobjs,addressbean addres)
	{
		// TODO Auto-generated method stub
		int clssid = Integer.parseInt(stu.getClas());
		String address = stu.getArea() + " " + stu.getCity() + " " + stu.getPin();
		String sdob = stu.getSdob();
		String sqlDate=null;
		try{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date convertedCurrentDate = sdf.parse(sdob);
		sqlDate=sdf.format(convertedCurrentDate );
		System.out.println(sqlDate);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		//JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		NamedParameterJdbcTemplate temp= new NamedParameterJdbcTemplate(conn.getDatabaseConnection());

		if (temp == null) {
			System.out.println("error in template");

		} else {
			String sqlquery = "insert into parents(fname,mname,femailid,memailid,fmobileno,mmobileno,fprofession,mprofession,studentId) values(:fname,:mname,:femailid,:memailid,:fmobileno,:mmobileno,:fprofession,:mprofession,:studentId)";
			//String sqlquery1 = "insert into parents(fname,mname,femailid,memailid,fmobileno,mmobileno,fprofession,mprofession) values(?,?,?,?,?,?,?,?)";
			
			//String sql1 = "insert into student(studentName,StudentClassId,studentDOB,gender,religion,studentEmail,studentPhoto,cast,addresss,registration_status,home,post,ps,dist,state,pincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			String sql = "insert into student(studentName,StudentClassId,studentDOB,gender,religion,studentEmail,studentPhoto,cast,addresss,registration_status,home,post,ps,dist,state,pincode) values(:studentName,:StudentClassId,:studentDOB,:gender,:religion,:studentEmail,:studentPhoto,:cast,:addresss,:registration_status,:home,:post,:ps,:dist,:state,:pincode)";
			
			try {
				
				KeyHolder holder = new GeneratedKeyHolder();
				
				 SqlParameterSource parameters = new MapSqlParameterSource()
							.addValue("studentName", stu.getName())
							.addValue("StudentClassId", clssid)
							.addValue("studentDOB", sqlDate)
							.addValue("gender",stu.getGender())
							.addValue("religion",stu.getRelogion())
							.addValue("studentEmail",stu.getEmail())
							.addValue("studentPhoto", stu.getImg())
							.addValue("cast",stu.getCast())
							.addValue("addresss",address)
							.addValue("registration_status", "processed")
							.addValue("home",addres.getHome())
							.addValue("post", addres.getPost())
							.addValue("ps", addres.getPs())
							.addValue("dist",addres.getDist())
							.addValue("state",addres.getState())
							.addValue("pincode",addres.getPin());
				temp.update(sql, parameters,holder);

				 int sid=holder.getKey().intValue();
				 
				System.out.println("student data sucessfully inserted"+sid);
				 SqlParameterSource parameter = new MapSqlParameterSource()
							.addValue("fname", pobjs.getFname())
							.addValue("mname", pobjs.getMname())
							.addValue("femailid",pobjs.getFemail())
							.addValue("memailid",pobjs.getMemail())
							.addValue("fmobileno",pobjs.getFmobileno())
							.addValue("mmobileno",pobjs.getMmobileno())
							.addValue("fprofession", pobjs.getFprofession())
							.addValue("mprofession",pobjs.getMprofession())
							.addValue("studentId",sid);
					
				temp.update(sqlquery, parameter,holder);
				int pid=holder.getKey().intValue();
				StuRegDAOImpl.updateparentsId(sid, pid);
				//int counter1= template.update(sqlquery, new Object[] {pobjs.getFname(), pobjs.getMname(),pobjs.getFemail(),pobjs.getMemail(),pobjs.getFmobileno(),pobjs.getMmobileno(),pobjs.getFprofession(),pobjs.getMprofession()});

				
				System.out.println("parrents data sucessfully inserted"+pid);
				//return 0;

			} catch (Exception e) {
				e.printStackTrace();
				//return 0;
			}
		}
         return 0;
	}

	@Override
	public void delete(int stuId) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<StudentRegbean> get(int stuId) {
		// TODO Auto-generated method stub
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		List<StudentRegbean> studentList = template.query("SELECT * FROM student where studentId=?",
				new Object[] { stuId }, new RowMapper<StudentRegbean>() {

					@Override
					public StudentRegbean mapRow(ResultSet rs, int rowNum) throws SQLException {
						StudentRegbean student = new StudentRegbean();

						student.setName(rs.getString("studentName"));
						student.setClas(String.valueOf(rs.getInt("StudentClassId")));
						student.setGender(rs.getString("gender"));
						student.setSdob(rs.getString("studentDOB"));
						student.setRelogion(rs.getString("religion"));
						student.setCast(rs.getString("cast"));
						student.setEmail(rs.getString("studentEmail"));
						student.setImg(rs.getString("studentPhoto"));
						student.setClas(rs.getString("StudentClassId"));
						
						addressbean addr=new addressbean();
						  addr.setHome(rs.getString("home"));
						  addr.setPost(rs.getString("post"));
						  addr.setPs(rs.getString("ps"));
						  addr.setDist(rs.getString("dist"));
						  addr.setState(rs.getString("state"));
						  addr.setPin(rs.getString("pincode"));
						  
						  student.setAddress(addr);
						  // student.setArea(rs.getString(""));
						// student.setCity(rs.getString(""));
						// student.setPin(rs.getString(""));
						student.setImg(rs.getString("studentPhoto"));
						// student.setPrevclas(rs.getString(""));
						// student.setPrevSchool(rs.getString(""));
						return student;

					}

				});

		return studentList;
	}

	
	//all approved student list
	public List<StudentRegbean> getAllApproved() {
		// TODO Auto-generated method stub
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		List<StudentRegbean> studentList = template.query("SELECT * FROM student where registration_status=?",
				new Object[] { "approved" }, new RowMapper<StudentRegbean>() {

					@Override
					public StudentRegbean mapRow(ResultSet rs, int rowNum) throws SQLException {
						StudentRegbean student = new StudentRegbean();
                        student.setSid(rs.getInt("studentId"));
						student.setName(rs.getString("studentName"));
						student.setClas(String.valueOf(rs.getInt("StudentClassId")));
						student.setGender(rs.getString("gender"));
						student.setSdob(rs.getString("studentDOB"));
						student.setRelogion(rs.getString("religion"));
						student.setCast(rs.getString("cast"));
						student.setEmail(rs.getString("studentEmail"));
						student.setImg(rs.getString("studentPhoto"));
						student.setClas(rs.getString("StudentClassId"));
						student.setRegistrationStatus(rs.getString("registration_status"));
						
						addressbean addr=new addressbean();
						  addr.setHome(rs.getString("home"));
						  addr.setPost(rs.getString("post"));
						  addr.setPs(rs.getString("ps"));
						  addr.setDist(rs.getString("dist"));
						  addr.setState(rs.getString("state"));
						  addr.setPin(rs.getString("pincode"));
						  
						  student.setAddress(addr);
						  // student.setArea(rs.getString(""));
						// student.setCity(rs.getString(""));
						// student.setPin(rs.getString(""));
						student.setImg(rs.getString("studentPhoto"));
						// student.setPrevclas(rs.getString(""));
						// student.setPrevSchool(rs.getString(""));
						
						StudentParrentsDAOImpl parent=new StudentParrentsDAOImpl();
						
						 List<parentsbean> parentobj=parent.getbysid(student.getSid());
						 parentsbean pr=parentobj.get(0);
						 
						 student.setParent(pr);
						
						return student;

					}

				});

		return studentList;
	}

	
	@Override
	public List<StudentRegbean> list() {
		String sqlSelectQuery = "SELECT studentId,studentName,StudentClassId,registration_status FROM student";
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		if (template == null) {
			System.out.println("error in template");
			return null;
		} else {
			List<StudentRegbean> stubean = template.query(sqlSelectQuery, new RowMapper() {

				public StudentRegbean mapRow(ResultSet result, int rowNum) throws SQLException {
					System.out.println("hello");
					StudentRegbean stuobj = new StudentRegbean();
					stuobj.setSid(result.getInt("studentId"));
					stuobj.setName(result.getString("studentName"));
					stuobj.setClas(result.getString("StudentClassId").toString());
					stuobj.setRegistrationStatus(result.getString("registration_status"));
					
					StudentParrentsDAOImpl parent=new StudentParrentsDAOImpl();
					
					 List<parentsbean> parentobj=parent.getbysid(stuobj.getSid());
					 parentsbean pr=parentobj.get(0);
					 
					 stuobj.setParent(pr);
					
					return stuobj;
				}
			});

			return stubean;

		}
	}

	public void updateRegistrationStatus(int sid)

	{
		String sql = "update student set registration_status = ? where studentId = ?";
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		template.update(sql, "rejected", sid);
		System.out.println("record updated sucessfully" + sid);

	}
	public void updateRegistrationStatusApproved(int sid)

	{
		String sql = "update student set registration_status = ? where studentId = ?";
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		template.update(sql, "approved", sid);
		System.out.println("record updated sucessfully" + sid);

	}
	
	public static void updateparentsId(int sid,int pid)

	{
		String sql = "update student set pid = ? where studentId = ?";
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		template.update(sql, pid, sid);
		System.out.println("pid record updated sucessfully" + sid);

	}
	
	public static void finalAdmission(int sid)
	{
		StuRegDAOImpl stuobj=new StuRegDAOImpl();
		  List<StudentRegbean> studentInfo= stuobj.get(sid);
		     StudentRegbean stu=studentInfo.get(0);    
		     addressbean addres=new addressbean();
		     String sql = "insert into student(studentName,StudentClassId,studentDOB,gender,religion,studentEmail,studentPhoto,cast,home,post,ps,dist,state,pincode) values(:studentName,:StudentClassId,:studentDOB,:gender,:religion,:studentEmail,:studentPhoto,:cast,:addresss,:registration_status,:home,:post,:ps,:dist,:state,:pincode)";
				
		/*		try {
					
					KeyHolder holder = new GeneratedKeyHolder();
					
					 SqlParameterSource parameters = new MapSqlParameterSource()
								.addValue("studentName", stu.getName())
								.addValue("StudentClassId", stu.getClas())
								.addValue("studentDOB", stu.getSdob())
								.addValue("gender",stu.getGender())
								.addValue("religion",stu.getRelogion())
								.addValue("studentEmail",stu.getEmail())
								.addValue("studentPhoto", stu.getImg())
								.addValue("cast",stu.getCast())
								//.addValue("addresss",address)
								.addValue("registration_status", "processed")
								.addValue("home",addres.getHome())
								.addValue("post", addres.getPost())
								.addValue("ps", addres.getPs())
								.addValue("dist",addres.getDist())
								.addValue("state",addres.getState())
								.addValue("pincode",addres.getPin());
					temp.update(sql, parameters,holder);

					 int sid=holder.getKey().intValue();
					 
					System.out.println("student data sucessfully inserted"+sid);
					 SqlParameterSource parameter = new MapSqlParameterSource()
								.addValue("fname", pobjs.getFname())
								.addValue("mname", pobjs.getMname())
								.addValue("femailid",pobjs.getFemail())
								.addValue("memailid",pobjs.getMemail())
								.addValue("fmobileno",pobjs.getFmobileno())
								.addValue("mmobileno",pobjs.getMmobileno())
								.addValue("fprofession", pobjs.getFprofession())
								.addValue("mprofession",pobjs.getMprofession())
								.addValue("studentId",sid);
						
					temp.update(sqlquery, parameter,holder);
					int pid=holder.getKey().intValue();
					StuRegDAOImpl.updateparentsId(sid, pid);
					//int counter1= template.update(sqlquery, new Object[] {pobjs.getFname(), pobjs.getMname(),pobjs.getFemail(),pobjs.getMemail(),pobjs.getFmobileno(),pobjs.getMmobileno(),pobjs.getFprofession(),pobjs.getMprofession()});

					
					System.out.println("parrents data sucessfully inserted"+pid);
					//return 0;

				} catch (Exception e) {
					e.printStackTrace();
					//return 0;
				}*/

		
		     
	}

	
	public static List<StudentRegbean> getStudentRecordByclasssection(int classID,int sectionId)
	{
		JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
		List<StudentRegbean> studentList = template.query("SELECT * FROM student where StudentClassId=?",
				new Object[] { classID }, new RowMapper<StudentRegbean>() {

					@Override
					public StudentRegbean mapRow(ResultSet rs, int rowNum) throws SQLException {
						StudentRegbean student = new StudentRegbean();
                        student.setSid(rs.getInt("studentId"));
						student.setName(rs.getString("studentName"));
						student.setClas(String.valueOf(rs.getInt("StudentClassId")));
						
						
						StudentParrentsDAOImpl parent=new StudentParrentsDAOImpl();
						
						 List<parentsbean> parentobj=parent.getbysid(student.getSid());
						 parentsbean pr=parentobj.get(0);
						 
						 student.setParent(pr);
						
						return student;

					}

				});

		return studentList;
	}
}  
