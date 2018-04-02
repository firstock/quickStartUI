package com.heaven.dao;

import java.util.HashMap;
import java.util.List;

import com.heaven.dto.FundBean;

public interface FundDao {

	public int getFundCount(String email);
	
	public List<FundBean> getMyFundList(HashMap<String, Object> params);
}
