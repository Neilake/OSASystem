package com.stx.spring.service.imp;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.spring.dao.OSApplicationDao;
import com.stx.spring.entity.Goods;
import com.stx.spring.entity.OSApplication;
import com.stx.spring.entity.TUser;
import com.stx.spring.service.OSApplicationService;

@Service
@Transactional
public class OSApplicationServiceImp implements OSApplicationService {
	@Autowired
	private OSApplicationDao oSApplicationDaoimp;
	
	//添加物品申请表
	public boolean addOSApplication(OSApplication oSApplication) {
		if(oSApplicationDaoimp.addOSApplication(oSApplication)&&oSApplicationDaoimp.addGoods(oSApplication)) {
			System.out.println("加入成功");
			return true;
		}
		return false;
	}
	//遍历查询，获取所有申请表
	public List<OSApplication> queryOSApplication() {
		List<OSApplication> osa ;
		if((osa = oSApplicationDaoimp.queryOSApplication())!=null) {
			Iterator<OSApplication> iter=  osa.iterator();
			while(iter.hasNext()) {
				OSApplication oSApplication =iter.next();
				List<Goods> goods =  oSApplicationDaoimp.queryGoods(oSApplication);
				oSApplication.setGoods(goods);
			}
			return osa;
		}
			return null;
	}
	//查询等待主管经理审批的表
	public List<OSApplication> waitForDealOpnion() {
		List<OSApplication> osa ;
		if((osa = oSApplicationDaoimp.waitForDealOpnion())!=null) {
			Iterator<OSApplication> iter=  osa.iterator();
			while(iter.hasNext()) {
				OSApplication oSApplication =iter.next();
				List<Goods> goods =  oSApplicationDaoimp.queryGoods(oSApplication);
				oSApplication.setGoods(goods);
			}
			return osa;
		}
		return null;
		}
	//主管或者经理对当前申请表审批
	public boolean updateOSApplication(OSApplication oSApplication,TUser user) {
		if(user.getPermission()==2) {
			
			boolean isupdate0 = oSApplicationDaoimp.directorUpdateOpnion(oSApplication);
			return isupdate0;
		}
		if(user.getPermission()==3) {
			boolean isupdate1 = oSApplicationDaoimp.managerUpdateOpnion(oSApplication);
			return isupdate1;
		}
		return false;
	}
	
	//获取当前时间
	public String applicationTime() {
		Date date = new java.util.Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formatdate = sdf.format(date);
		return formatdate;
	}
	



}
