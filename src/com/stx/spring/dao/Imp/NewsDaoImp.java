package com.stx.spring.dao.Imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.dao.NewsDao;
import com.stx.spring.dao.UserDao;
import com.stx.spring.utils.JdbcUtil;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Repository
public class NewsDaoImp implements NewsDao {
   
	@Autowired 
	private JdbcTemplate jdbcTemplate;
	 
	
	@Override
	public boolean addLeave(String user,String thing,String uname,String name){
		String sql="insert into tbl_news values(seq_user.nextval,?,?,?,?,sysdate,?)";
		Object[] datas=new Object[]{user,thing,uname,name,2};
		int n=jdbcTemplate.update(sql,datas);
		return n==1;
	}
	
	
	
	@Override
	public String selectNew(int id){
	/*	String element="";
		String sql="select leave from jsp where=?";
		Object[] datas=new Object[]{id};
		List<String> thing=jdbcTemplate.query(sql, datas, new UserBeanMappertwo());
		Iterator<String> ss=thing.iterator();
		while(ss.hasNext()){
		 element=ss.next()	;
			System.out.println(element);
		}
		return element;*/
		
		
		
		String element1=null;
		Connection con = null;
		Statement st = null;

		try {
			con = JdbcUtil.getCon();
			st = con.createStatement();
			 	ResultSet rs = st.executeQuery("select news_title from tbl_news where news_id='"+id+"'");
			 	while(rs.next()) {
			 		 element1=rs.getString("news_title");
			 		
			 	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.closeCon(st, con);
		}
		return element1;
	}
	
	
	
	@Override
	public String selecttwo(int id){
		String uname=null;
		Connection con = null;
		Statement st = null;

		try {
			con = JdbcUtil.getCon();
			st = con.createStatement();
			 	ResultSet rs = st.executeQuery("select news_name from tbl_news where news_id='"+id+"'");
			 	while(rs.next()) {
			 		 uname=rs.getString("news_name");
			 	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.closeCon(st, con);
		}
		return uname;
	}
	
	
	@Override
	public String selectThing(int id){
		String uname=null;
		Connection con = null;
		Statement st = null;

		try {
			con = JdbcUtil.getCon();
			st = con.createStatement();
			 	ResultSet rs = st.executeQuery("select news_content from tbl_news where news_id='"+id+"'");
			 	while(rs.next()) {
			 		 uname=rs.getString("news_content");
			 	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.closeCon(st, con);
		}
		return uname;
	}
	
	@Override
	public String selectPerson(int id){
		String hh=null;
		Connection con = null;
		Statement st = null;

		try {
			con = JdbcUtil.getCon();
			st = con.createStatement();
			 	ResultSet rs = st.executeQuery("select news_person from tbl_news where news_id='"+id+"'");
			 	while(rs.next()) {
			 		 hh=rs.getString("news_person");
			 	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.closeCon(st, con);
		}
		return hh;
	}
	
	
	
	
	@Override
	public String selectTime(int id){
		String time=null;
		Connection con = null;
		Statement st = null;

		try {
			con = JdbcUtil.getCon();
			st = con.createStatement();
			 	ResultSet rs = st.executeQuery("select news_time from tbl_news where news_id='"+id+"'");
			 	while(rs.next()) {
			 		time=rs.getString("news_time");
			 	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.closeCon(st, con);
		}
		return time;
	}
	
	
	@Override
	public ArrayList selectAll(){
		ArrayList a1=new ArrayList();
		Connection con = null;
		Statement st = null;

		try {
			con = JdbcUtil.getCon();
			st = con.createStatement();
			 	ResultSet rs = st.executeQuery("select news_title from tbl_news ");
			 	while(rs.next()) {
			 		a1.add(rs.getString("news_title"));
			 	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.closeCon(st, con);
		}
		return a1;
	}
	
	
	
	
	@Override
	public String selectnumber(String titlee){
		String number=null;
		Connection con = null;
		Statement st = null;

		try {
			con = JdbcUtil.getCon();
			st = con.createStatement();
			 	ResultSet rs = st.executeQuery("select news_id from tbl_news where news_title='"+titlee+"'");
			 	while(rs.next()) {
			 		number=rs.getString("news_id");
			 	}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.closeCon(st, con);
		}
		return number;
	}
	
	}
	
	

