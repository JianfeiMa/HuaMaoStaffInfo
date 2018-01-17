package com.mjf.hmsi.dao;

import com.mjf.hmsi.bean.ITManager;

public interface ITManagerDAO {
	void itManagerRegist(ITManager itManager) throws Exception;
	
	ITManager itManagerLogin(ITManager itManager) throws Exception;
	
	ITManager queryUserForName(String itManagerName) throws Exception;
}
