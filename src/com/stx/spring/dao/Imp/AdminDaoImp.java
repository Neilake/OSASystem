package com.stx.spring.dao.Imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.dao.AdminDao;
import com.stx.spring.entity.Dept;
import com.stx.spring.entity.Posit;
import com.stx.spring.entity.TAdmin;
import com.stx.spring.entity.TUser;

@Repository
public class AdminDaoImp implements AdminDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public boolean loginSuccess(TAdmin tAdmin) {
		String sql = "select admin_id from tbl_admin where admin_name=? and admin_password = ?";
		Object[] datas = new Object[] { tAdmin.getAdmin_name(),
				tAdmin.getAdmin_password() };
		List<TAdmin> admins = jdbcTemplate.query(sql, datas,
				new AdminBeanMapper());
		return admins.size() != 0;
	}

	private class AdminBeanMapper implements RowMapper<TAdmin> {

		@Override
		public TAdmin mapRow(ResultSet rs, int arg1) throws SQLException {
			return new TAdmin(rs.getString("admin_id"), "admin_name", null);
		}

	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	// 添加部门
	@Override
	public boolean dept_add(Dept dept) {
		String sql = "insert into  tbl_dept values(seq_dept.nextval,?)";
		Object[] datas = new Object[] { dept.getDept_name() };
		int n = jdbcTemplate.update(sql, datas);
		return n == 1;
	}

	// 查询所有部门
	@Override
	public List<Dept> ShowDept() {
		String sql = "select * from tbl_dept";
		List<Dept> allDept = jdbcTemplate.query(sql, new AllDeptMapper());
		return allDept;
	}

	private class AllDeptMapper implements RowMapper<Dept> {

		@Override
		public Dept mapRow(ResultSet rs, int arg1) throws SQLException {
			Dept dept = new Dept();
			dept.setDept_id(rs.getInt("dept_id"));
			dept.setDept_name(rs.getString("dept_name"));
			return dept;
		}

	}

	// 删除部门
	@Override
	public boolean deleDept(int dept_id) {
		String sql = "delete  from tbl_dept where dept_id = ?";
		Object[] args = new Object[] { dept_id };
		int temp = jdbcTemplate.update(sql, args);
		return temp == 1;
	}

	// 添加职务
	@Override
	public boolean positAdd(Posit posit) {
		String sql = "insert into tbl_posit values(seq_posit.nextval,?)";
		Object[] datas = new Object[] { posit.getPosit_name() };
		int n = jdbcTemplate.update(sql, datas);
		return n == 1;
	}

	@Override
	public List<Posit> ShowPosit() {
		String sql = "select * from tbl_posit";
		List<Posit> allPosit = jdbcTemplate.query(sql, new AllPositMapper());
		return allPosit;
	}

	private class AllPositMapper implements RowMapper<Posit> {

		@Override
		public Posit mapRow(ResultSet rs, int arg1) throws SQLException {
			Posit posit = new Posit();
			posit.setPosit_id(rs.getInt("posit_id"));
			posit.setPosit_name(rs.getString("posit_name"));
			;
			return posit;
		}

	}
//删除职位
	@Override
	public boolean delePosit(int posit_id) {
		String sql = "delete  from tbl_posit where posit_id = ?";
		Object[] args = new Object[] { posit_id };
		int temp = jdbcTemplate.update(sql, args);
		return temp == 1;
	}

}
