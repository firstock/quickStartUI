package com.heaven.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.heaven.dto.FundBean;

@Component
public class FundDaoImpl implements FundDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getFundCount(String email) {
		return sqlSession.selectOne("getMyFundCount", email);
	}

	@Override
	public List<FundBean> getMyFundList(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectMyFund", params);
	};
	
	//by J.K.
	//후원 추가.
	public int insertFund(FundBean fundBean) {
		System.out.println("sql insertfund");
		int supporters = 0;
		if(sqlSession.insert("insertFund", fundBean)==1){
			supporters = (int) sqlSession.selectOne("getOnlySupporter", fundBean);//후원자 수 찾기.
			System.out.println("done");
		}else{
			System.out.println("fail");
		}
		return supporters;
	}
	
}
