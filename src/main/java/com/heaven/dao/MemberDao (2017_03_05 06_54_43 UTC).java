package com.heaven.dao;

import java.util.HashMap;

import com.heaven.dto.MemberBean;

public interface MemberDao {
	
	//로그인시 회원체크 1)회원x 2)회원o+비번x 3)회원o+비번o
	public int memberChk(String email, String inputPw);	
	
	//아이디 중복 체크
	public String overlapTest(String u_email);

	//회원가입
	public void join(MemberBean bean);

	//비번찾기
	public String getPw(String email); 
	
	//나의 잔액 가져오기
	public int getMyAccount(String email);
	
	//나의 잔액 충전하기
	public void updateMyAccount(HashMap<String, Object> params);
}
