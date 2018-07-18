package com.stx.spring.entity;

import java.util.List;

public class OSApplication { // Office supplies Application 缩写
	private String oSApplicationId;
	private String departmentName;
	private String userName;
	private String applicationTime;
	private String reason;
	private String directorOpnion;
	private String managerOpnion;
	private double totalmoney;
	private List<Goods> goods;
	
	
	public OSApplication() {};
	public OSApplication(String oSApplicationId, String departmentName, String applicationTime, String userName,
			String reason, String directorOpnion, String managerOpnion, double totalmoney, List<Goods> goods) {
		this.oSApplicationId = oSApplicationId;
		this.departmentName = departmentName;
		this.applicationTime = applicationTime;
		this.reason = reason;
		this.directorOpnion = directorOpnion;
		this.managerOpnion = managerOpnion;
		this.goods = goods;
		this.userName = userName;
		this.totalmoney = totalmoney;
	}
	
	
	public double getTotalmoney() {
		return totalmoney;
	}

	public void setTotalmoney(double totalmoney) {
		this.totalmoney = totalmoney;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getOSApplicationId() {
		return oSApplicationId;
	}

	public void setOSApplicationId(String oSApplicationId) {
		this.oSApplicationId = oSApplicationId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getApplicationTime() {
		return applicationTime;
	}

	public void setApplicationTime(String applicationTime) {
		this.applicationTime = applicationTime;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDirectorOpnion() {
		return directorOpnion;
	}

	public void setDirectorOpnion(String directorOpnion) {
		this.directorOpnion = directorOpnion;
	}

	public String getManagerOpnion() {
		return managerOpnion;
	}

	public void setManagerOpnion(String managerOpnion) {
		this.managerOpnion = managerOpnion;
	}

	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

}