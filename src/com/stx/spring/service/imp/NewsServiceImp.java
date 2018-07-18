package com.stx.spring.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stx.spring.dao.NewsDao;
import com.stx.spring.entity.UploadEntity;
import com.stx.spring.service.NewsService;

@Service
public class NewsServiceImp implements NewsService {
	@Autowired
	private NewsDao newsDao;

	

	@Override
	public String selectNew(int id) {
		String ss=newsDao.selectNew(id);
		return ss;
	}

	@Override
	public void addLeav(String user, String thing, String uname, String name) {
		newsDao.addLeave(user, thing, uname, name);

	}

	@Override
	public String selecttwo(int id) {
		String ss=newsDao.selecttwo(id);
		return ss;
	}

	@Override
	public String selectThing(int id) {
		String ss=newsDao.selectThing(id);
		return ss;
	}

	@Override
	public String selectPerson(int id) {
		String ss=newsDao.selectPerson(id);
		return ss;
	}

	@Override
	public String selectTime(int id) {
		String ss=newsDao.selectTime(id);
		return ss;
	}

	@Override
	public ArrayList selectAll() {
		ArrayList ss=newsDao.selectAll();
		return ss;
	}

	@Override
	public String selectnumber(String titlee) {
		String ss=newsDao.selectnumber(titlee);
		return ss;
	}

	@Override
	public List<UploadEntity> showNewsTitle() {
		return null;
	}


	
	

}

