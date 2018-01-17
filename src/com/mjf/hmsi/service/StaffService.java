package com.mjf.hmsi.service;

import java.util.List;
import java.util.Map;

import com.mjf.hmsi.bean.Staff;
import com.mjf.hmsi.bean.StaffUpdate;

public interface StaffService {
	void staffRegist(Staff staff) throws Exception;
	
	List<Staff> staffSelect(String keyword);
	
	List<Staff> staffSelectBy3IP(String thirdIP);
	
	public List<Staff> staffSelectByName(String name);
	
	public List<Staff> staffSelectByTwo49(String two49);
	
	public List<Staff> staffSelectByIP(String ip);
	
	public List<Staff> staffSelectByMail(String mail);
	
	public void staffInfoUpdate(StaffUpdate staffUpdate);
	
	public void staffDelete(int id);
}
