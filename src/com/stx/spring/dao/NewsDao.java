package com.stx.spring.dao;

import java.util.ArrayList;


public interface NewsDao {
	
	public boolean addLeave(String user,String thing,String uname,String name);
	public String selectNew(int id);
	public String selecttwo(int id);
	public String selectThing(int id);
	public String selectPerson(int id);
	public String selectTime(int id);
	public ArrayList selectAll();
	public String selectnumber(String titlee);
}
