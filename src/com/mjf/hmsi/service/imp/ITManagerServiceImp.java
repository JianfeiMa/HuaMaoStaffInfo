package com.mjf.hmsi.service.imp;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mjf.hmsi.bean.ITManager;
import com.mjf.hmsi.dao.ITManagerDAO;
import com.mjf.hmsi.service.ITManagerService;

@Service
public class ITManagerServiceImp implements ITManagerService {
	@Autowired
	private ITManagerDAO itManagerDAO;

	@Override
	public void itManagerRegist(ITManager itManager)
			throws Exception {
		// TODO Auto-generated method stub
		itManagerDAO.itManagerRegist(itManager);
	}

	@Override
	public ITManager itManagerLogin(ITManager itManager)
			throws Exception {
		// TODO Auto-generated method stub
		ITManager itManagerInfo = itManagerDAO.itManagerLogin(itManager);
		return itManagerInfo;
	}

	@Override
	public ITManager queryUserforName(String itManagerName) throws Exception {
		// TODO Auto-generated method stub
		ITManager itManager = itManagerDAO.queryUserForName(itManagerName);
		return itManager;
	}

}
