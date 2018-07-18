package com.stx.spring.dao;

import java.util.List;

import com.stx.spring.entity.Dept;
import com.stx.spring.entity.Posit;
import com.stx.spring.entity.TAdmin;
import com.stx.spring.entity.TUser;

public interface AdminDao {

	boolean loginSuccess(TAdmin tAdmin);

	boolean dept_add(Dept dept);

	List<Dept> ShowDept();

	boolean deleDept(int dept_id);

	boolean positAdd(Posit posit);

	List<Posit> ShowPosit();

	boolean delePosit(int posit_id);

}
