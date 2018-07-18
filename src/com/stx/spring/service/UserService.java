package com.stx.spring.service;

import java.util.List;

import com.stx.spring.entity.TUser;

public interface UserService {


	boolean addUser(TUser user);

	List<TUser> queryUserList();
	
	boolean singIn(TUser user);

	boolean loginUser(TUser user);

	boolean deleUser( int userid);
	
}
