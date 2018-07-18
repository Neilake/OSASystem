package com.stx.spring.dao.Imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.dao.OSApplicationDao;
import com.stx.spring.entity.Goods;
import com.stx.spring.entity.OSApplication;

@Repository
public class OSApplicationDaoImp implements OSApplicationDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	//添加办公用品申请表
	public boolean addOSApplication(OSApplication oSApplication) {
		String sql = "insert into tbl_osapplication (OSApplicationId,departmentName,userName,reason,totalmoney,applicationTime,directorOpnion,managerOpnion) values(seq_osapplication.nextval,?,?,?,?,to_date(?,'yyyy-mm-dd hh24:mi:ss'),2,2) ";
		Object[] dates = new Object[]{oSApplication.getDepartmentName(),oSApplication.getUserName(),oSApplication.getReason(),oSApplication.getTotalmoney(),oSApplication.getApplicationTime() };
		int n = jdbcTemplate.update(sql,dates);
//		String a = jdbcTemplate.queryForObject("select SEQ_OSAPPLICATION.CURRVAL  from dual", String.class);
//		System.out.println("currval值:"+a);	
		return n==1;
	}
	
	//添加物品
	public boolean addGoods(OSApplication oSApplication) {
		int i=0;
		Iterator<Goods> iter = oSApplication.getGoods().iterator();
		while(iter.hasNext()) {
			Goods goods = (Goods) iter.next();
			String sql = "insert into tbl_goods (goodsId,goodsName,goodsSize,goodsNum,fk_OSApplicationId) values(seq_goods.nextval,?,?,?,seq_osapplication.currval) ";
			Object[] dates = new Object[] {goods.getGoodsName(),goods.getGoodsSize(),goods.getGoodsNum()};
			 i = jdbcTemplate.update(sql,dates);
		}
		return i==1;
		}
	
	//查询已有物资申请表
	public List<OSApplication> queryOSApplication() {
		String sql = "select * from tbl_osapplication";
		List<OSApplication> oSApplications = jdbcTemplate.query(sql,new OSApplicationBeanMapper());
		return oSApplications;
	}
	private class OSApplicationBeanMapper implements RowMapper<OSApplication> {
		public OSApplication mapRow(ResultSet rs, int arg1) throws SQLException {
			return new OSApplication(rs.getString("oSApplicationId"),rs.getString("departmentName"), rs.getString("applicationTime"),  rs.getString("userName") ,
					rs.getString("reason") , rs.getString("directorOpnion") , rs.getString("managerOpnion") , rs.getDouble("totalmoney"),null);
		}
	}
	
	//查询货物
	public List<Goods> queryGoods(OSApplication oSApplication) {
		String sql = "select * from tbl_goods where fk_OSApplicationId=?";
		Object[] dates = new Object[] {oSApplication.getOSApplicationId()};
		List<Goods> goodses = jdbcTemplate.query(sql, dates,new GoodsBeanMapper());
		return goodses;
	}
	private class GoodsBeanMapper implements RowMapper<Goods> {

		public Goods mapRow(ResultSet rs, int arg1) throws SQLException {
			
			return new Goods(null,rs.getString("goodsName"),rs.getString("goodsSize"),rs.getString("goodsNum"));
		}
	}
	
	//查询等待审批的主管经理意见
	public List<OSApplication> waitForDealOpnion() {
		String sql = "select * from tbl_osapplication where directorOpnion=2 or managerOpnion=2";
		List<OSApplication> oSApplications = jdbcTemplate.query(sql,new waitForDealOpnionBeanMapper());
		return oSApplications;
	}
	private class waitForDealOpnionBeanMapper implements RowMapper<OSApplication> {
		public OSApplication mapRow(ResultSet rs, int arg1) throws SQLException {
			return new OSApplication(rs.getString("oSApplicationId"),rs.getString("departmentName"), rs.getString("applicationTime"),  rs.getString("userName") ,
					rs.getString("reason") , rs.getString("directorOpnion") , rs.getString("managerOpnion") , rs.getDouble("totalmoney"),null);
		}
	}
	//主管更新数据表是否允许借用物资
	public boolean directorUpdateOpnion(OSApplication oSApplication) {
		String sql = "update tbl_osapplication set directorOpnion=? where OSApplicationId=? ";
		Object[] dates = new Object[]{oSApplication.getDirectorOpnion(),oSApplication.getOSApplicationId()};
		int n = jdbcTemplate.update(sql,dates);
		return n==1;
	}
	//经理更新数据表是否允许借用物资
	public boolean managerUpdateOpnion(OSApplication oSApplication) {
		String sql = "update tbl_osapplication set managerOpnion=? where OSApplicationId=? ";
		Object[] dates = new Object[]{oSApplication.getManagerOpnion(),oSApplication.getOSApplicationId()};
		int n = jdbcTemplate.update(sql,dates);
		return n==1;
	}

}

	
	


