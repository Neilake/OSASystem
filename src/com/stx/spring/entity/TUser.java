package com.stx.spring.entity;

public class TUser {
	private int userid;
	private String username;
	private String password;
	//权限
	private int permission;
	private String emile;
	private String sex;
	private String birth;
	private String tel;
	private String cardid;// 身份证号
	private String address;// 住址
	private int dept_id;// 部门编号
	private int posit_id;// 职位编号

	public TUser() {
	}
	public TUser(int userid,String username,String password){
		this.userid = userid;
		this.username = username;
		this.password = password;
		
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
	}

	public String getEmile() {
		return emile;
	}

	public void setEmile(String emile) {
		this.emile = emile;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCardid() {
		return cardid;
	}

	public void setCardid(String cardid) {
		this.cardid = cardid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getDept_id() {
		return dept_id;
	}

	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}

	public int getPosit_id() {
		return posit_id;
	}

	public void setPosit_id(int posit_id) {
		this.posit_id = posit_id;
	}

}
