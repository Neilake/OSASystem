package com.stx.spring.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stx.spring.dao.AdminDao;
import com.stx.spring.entity.Dept;
import com.stx.spring.entity.Posit;
import com.stx.spring.entity.TAdmin;
import com.stx.spring.entity.TUser;
import com.stx.spring.service.AdminService;

@Service
@Transactional
public class AdminServiceImp implements AdminService {
	@Autowired
	private AdminDao adminDao;

	@Override
	public boolean loginAdmin(TAdmin tAdmin) {
		if (adminDao.loginSuccess(tAdmin)) {
			return adminDao.loginSuccess(tAdmin);
		} else {
			return false;
		}
	}
	

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

//添加部门
	@Override
	public boolean dept_add(Dept dept) {
		return adminDao.dept_add(dept);
	}

//查询所有部门
	@Override
	public List<Dept> queryDeptList() {
		return adminDao.ShowDept();
	}


	@Override
	public boolean deleDept(int dept_id) {
		return adminDao.deleDept(dept_id);
	}


	@Override
	public boolean posit_add(Posit posit) {
		return adminDao.positAdd(posit);
	}


	@Override
	public List<Posit> queryPositList() {
		return adminDao.ShowPosit();
	}


	@Override
	public boolean delePosit(int posit_id) {
		return adminDao.delePosit(posit_id);
	}


	}
