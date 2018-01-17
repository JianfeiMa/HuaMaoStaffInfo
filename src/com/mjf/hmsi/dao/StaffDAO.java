package com.mjf.hmsi.dao;

import java.util.List;
import java.util.Map;

import com.mjf.hmsi.bean.Staff;
import com.mjf.hmsi.bean.StaffUpdate;

public interface StaffDAO {
	void staffRegist(Staff staff) throws Exception;
	
	public List<Staff> staffSelect(String keyword);
	
	public List<Staff> staffSelectBy3IP(String thirdIP);
	
	public List<Staff> staffSelectByName(String name);
	
	public List<Staff> staffSelectByTwo49(String two49);
	
	public List<Staff> staffSelectByIP(String ip);
	
	public List<Staff> staffSelectByMail(String mail);
	
	public void staffUpate(StaffUpdate staffUpdate);
	
	public void staffDelete(int id);
}
