package com.stx.spring.service;

import java.util.ArrayList;
import java.util.List;

import com.stx.spring.entity.UploadEntity;

public interface NewsService {
	
	
	public String selectNew(int id);
	public void addLeav(String user,String thing,String uname,String name);
    public String selecttwo(int id);
    public String selectThing(int id);
    public String selectPerson(int id);
    public String selectTime(int id);
    public ArrayList selectAll();
    public String selectnumber(String titlee);
	public List<UploadEntity> showNewsTitle();
}