package com.stx.spring.dao;

import java.util.List;

import com.stx.spring.entity.TUser;

public interface UserDao {

	boolean isUserNameExist(TUser user);

	boolean addUser(TUser user);

	List<TUser> queryUserList();
	
	boolean singIn(TUser user);

	boolean loginSuccess(TUser user);

	boolean delete(int userid);

}
