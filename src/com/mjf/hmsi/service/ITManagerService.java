package com.mjf.hmsi.service;

import java.util.Map;

import com.mjf.hmsi.bean.ITManager;

public interface ITManagerService {
	
	public void itManagerRegist(ITManager itManager) throws Exception;
	
	public ITManager itManagerLogin(ITManager itManager) throws Exception;
	
	public ITManager queryUserforName(String itManagerName) throws Exception;
}
