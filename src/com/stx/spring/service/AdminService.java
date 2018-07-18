package com.stx.spring.service;

import java.util.List;

import com.stx.spring.entity.Dept;
import com.stx.spring.entity.Posit;
import com.stx.spring.entity.TAdmin;
import com.stx.spring.entity.TUser;



public interface AdminService {

	boolean loginAdmin(TAdmin admin);

	boolean dept_add(Dept dept);

	List<Dept> queryDeptList();

	boolean deleDept(int dept_id);

	boolean posit_add(Posit posit);

	List<Posit> queryPositList();

	boolean delePosit(int posit_id);
	

}
