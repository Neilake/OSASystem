package com.stx.spring.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stx.spring.dao.UserDao;
import com.stx.spring.entity.TUser;
import com.stx.spring.service.UserService;

@Service
public class UserServiceImp implements UserService {
	@Autowired
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	// 添加用户
	@Override
	public boolean addUser(TUser user) {
		if (userDao.isUserNameExist(user)) {
			return false;
		} else {
			return userDao.addUser(user);
		}
	}

	// 查询所有用户
	@Override
	public List<TUser> queryUserList() {
		return userDao.queryUserList();
	
	}
	
	//用户签到
	public boolean singIn(TUser user) {
		return userDao.singIn(user);
	}

	@Override
	public boolean loginUser(TUser user) {
		return userDao.loginSuccess(user);
	}
//删除用户
	@Override
	public boolean deleUser(int userid) {
		return userDao.delete(userid);
	}

}
