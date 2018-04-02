package com.heaven.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.heaven.dto.MemberBean;

public interface MemberSer {
	
	//로그인시 회원체크 1)회원x 2)회원o+비번x 3)회원o+비번o
	public ModelAndView memberChk
		(HttpServletRequest request, HttpServletResponse response,
				String email, String inputPw) throws Exception ;
	
	//아이디 중복 체크
	public String overlapTest(String u_email);
	
	//회원가입
	public void join(MemberBean bean);
	
	//비번찾기
	public void getPw(HttpServletResponse response, String email); 
	
	//나의 잔액 보여주기
	public int getMyAccount(HttpServletRequest request);
	
	//나의 잔액 충전하기
	public void updateMyAccount(HttpServletRequest request, int money);
	
}
