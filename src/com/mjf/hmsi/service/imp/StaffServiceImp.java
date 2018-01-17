package com.mjf.hmsi.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjf.hmsi.bean.Staff;
import com.mjf.hmsi.bean.StaffUpdate;
import com.mjf.hmsi.dao.StaffDAO;
import com.mjf.hmsi.service.StaffService;

@Service
public class StaffServiceImp implements StaffService {
	
	@Autowired
	private StaffDAO staffDAO;

	@Override
	public void staffRegist(Staff staff) throws Exception {
		// TODO Auto-generated method stub
		staffDAO.staffRegist(staff);
		System.out.println("StaffServiceImp输出"+staffDAO.toString());
	}

	@Override
	public List<Staff> staffSelect(String keyword) {
		// TODO Auto-generated method stub
		return staffDAO.staffSelect(keyword);
	}

	@Override
	public List<Staff> staffSelectBy3IP(String thirdIP) {
		// TODO Auto-generated method stub
		return staffDAO.staffSelectBy3IP(thirdIP);
	}

	@Override
	public List<Staff> staffSelectByName(String name) {
		// TODO Auto-generated method stub
		return staffDAO.staffSelectByName(name);
	}

	@Override
	public List<Staff> staffSelectByTwo49(String two49) {
		// TODO Auto-generated method stub
		return staffDAO.staffSelectByTwo49(two49);
	}

	@Override
	public List<Staff> staffSelectByIP(String ip) {
		// TODO Auto-generated method stub
		return staffDAO.staffSelectByIP(ip);
	}

	@Override
	public List<Staff> staffSelectByMail(String mail) {
		// TODO Auto-generated method stub
		return staffDAO.staffSelectByMail(mail);
	}

	@Override
	public void staffInfoUpdate(StaffUpdate staffUpdate) {
		// TODO Auto-generated method stub
		staffDAO.staffUpate(staffUpdate);
	}

	@Override
	public void staffDelete(int id) {
		// TODO Auto-generated method stub
		staffDAO.staffDelete(id);
	}

}
