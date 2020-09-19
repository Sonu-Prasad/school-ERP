package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.StudentRegbean;
import beans.parentsbean;
import configurations.conn;

public class StudentParrentsDAOImpl implements StudentParents
{

	@Override
	public int saveOrUpdate(parentsbean pobjs) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void delete(int pid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<parentsbean> getbysid(int sid) {
		// TODO Auto-generated method stub
				JdbcTemplate template = new JdbcTemplate(conn.getDatabaseConnection());
				List<parentsbean> parentList = template.query("SELECT * FROM parents where studentId=?",
						new Object[] { sid }, new RowMapper<parentsbean>() {

							@Override
							public parentsbean mapRow(ResultSet rs, int rowNum) throws SQLException {
								parentsbean parent = new parentsbean();
								parent.setFname(rs.getString("fname"));
								parent.setMname(rs.getString("mname"));
								parent.setFemail(rs.getString("femailid"));
								parent.setMemail(rs.getString("memailid"));
								parent.setFprofession(rs.getString("fprofession"));
								parent.setMprofession(rs.getString("mprofession"));
								parent.setFmobileno(rs.getString("fmobileno"));
								parent.setMmobileno(rs.getString("mmobileno"));
								return parent;

							}

						});
				return parentList;
	}

	@Override
	public List<parentsbean> list() {
		// TODO Auto-generated method stub
		return null;
	}

}
