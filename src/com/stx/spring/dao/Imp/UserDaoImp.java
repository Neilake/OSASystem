package com.stx.spring.dao.Imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.dao.UserDao;
import com.stx.spring.entity.TUser;

@Repository
public class UserDaoImp implements UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public boolean isUserNameExist(TUser user) {
		String sql = "select userid from tbl_user where username=?";
		Object[] datas = new Object[] { user.getUsername() };
		List<TUser> users = jdbcTemplate
				.query(sql, datas, new UserBeanMapper());
		return users.size() != 0;
	}

	public boolean addUser(TUser user) {
		String sql = "insert into tbl_user values(seq_user.nextval,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] datas = new Object[] { user.getUsername(), user.getPassword(),
				user.getPermission(), user.getEmile(), user.getSex(),
				user.getBirth(), user.getTel(), user.getCardid(),
				user.getAddress(), user.getDept_id(), user.getPosit_id() };
		int n = jdbcTemplate.update(sql, datas);
		return n == 1;
	}
	
	//签到功能
	public boolean singIn(TUser user){
		String sql = "insert into tbl_attend (tend_id,userid,in_time) values(seq_tend_id.nextval,?,sysdate)";
		
		Object[] datas = new Object[] {
				user.getUserid()
		};
		int n = jdbcTemplate.update(sql, datas);
		return n == 1;
		
	}

	private class UserBeanMapper implements RowMapper<TUser> {

		@Override
		public TUser mapRow(ResultSet rs, int arg1) throws SQLException {
			return new TUser(rs.getInt("userid"), rs.getString("username"),rs.getString("password"));

		}

	}

	// 查询所有用户
	@Override
	public List<TUser> queryUserList() {
		String sql = "select * from tbl_user";
		List<TUser> alluser = jdbcTemplate.query(sql, new AllUserMaper());
		return alluser;
	}

	private class AllUserMaper implements RowMapper<TUser> {

		@Override
		public TUser mapRow(ResultSet rs, int arg1) throws SQLException {
			TUser user = new TUser();
			user.setUserid(rs.getInt("userid"));
			user.setUsername(rs.getString("username"));
			user.setPermission(rs.getInt("permission"));
			user.setEmile(rs.getString("emile"));
			user.setSex(rs.getString("sex"));
			user.setBirth(rs.getString("birth"));
			user.setTel(rs.getString("tel"));
			user.setCardid(rs.getString("cardid"));
			user.setAddress(rs.getString("address"));
			user.setDept_id(rs.getInt("dept_id"));
			user.setPosit_id(rs.getInt("posit_id"));
			return user;
		}
		
	}
	
//用户登录
	@Override
	public boolean loginSuccess(TUser user) {
		String sql = "select * from tbl_user where username=? and password = ?";
		Object[] datas = new Object[] { user.getUsername(),
				user.getPassword() };
		List<TUser> users = jdbcTemplate.query(sql, datas,
				new UserBeanMapper());
		return users.size() != 0;
	}
//删除用户
	@Override
	public boolean delete(int userid) {
		String sql = "delete from tbl_user where userid=?";
		 Object[] args = new Object[]{userid};  
	        int temp = jdbcTemplate.update(sql,args);
			return temp==1;  
	}
	
}
