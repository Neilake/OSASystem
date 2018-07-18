package com.stx.spring.dao;

import java.util.List;

import com.stx.spring.entity.Goods;
import com.stx.spring.entity.OSApplication;

public interface OSApplicationDao {
	public boolean addOSApplication(OSApplication oSApplication);//添加办公用品申请表
	public boolean addGoods(OSApplication oSApplication);//添加物品请求表
	public List<OSApplication> queryOSApplication();//领导推送表
	public List<Goods> queryGoods(OSApplication oSApplication);
	public List<OSApplication> waitForDealOpnion();
	public boolean directorUpdateOpnion(OSApplication oSApplication);
	public boolean managerUpdateOpnion(OSApplication oSApplication);
}
