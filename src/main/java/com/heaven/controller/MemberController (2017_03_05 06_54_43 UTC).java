package com.heaven.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.dto.MemberBean;
import com.heaven.service.MemberServImpl;



@Controller
public class MemberController {
	@Autowired
	private MemberServImpl memberService;
	
	@RequestMapping(value="/MemberLoginView.do", method=RequestMethod.GET)
	public ModelAndView goLoginView() {
		System.out.println("로그인view나타나랏");
		return new ModelAndView("member/Login");
	}
	
	@RequestMapping(value="/MemberChk.do", method=RequestMethod.POST)
	public ModelAndView memberChk(
			@RequestParam("user_email") String email,
			@RequestParam("user_pw") String pw,
			HttpServletRequest request,
			HttpServletResponse response
			) {
		
		System.out.println("email="+email);
		System.out.println("pw="+pw);
		
		ModelAndView mav=memberService.memberChk(request, response, email.trim(), pw);
		return mav;
	}
	
	@RequestMapping(value="/MemberLogout.do", method=RequestMethod.GET)
	public ModelAndView LogOut(HttpServletRequest request) {
		System.out.println("LogOut메서드 진입");
		request.getSession().invalidate();
		return new ModelAndView("redirect:/main.do");
	}
	
	@RequestMapping(value="/MemberJoinView.do", method=RequestMethod.GET)
	public ModelAndView goJoinView() {
		System.out.println("goJoinView메서드 진입");
		return new ModelAndView("member/Join");
	}
	
	
	@RequestMapping(value="/overlaptest.do", method=RequestMethod.POST)
	@ResponseBody
	public String overlapTest(String u_email) {
		String count_email=memberService.overlapTest(u_email);
		System.out.println("@controller[count_email= " + count_email + " ]");
		return count_email;
	}
	
	@RequestMapping(value="/MemberJoin.do", method=RequestMethod.POST)
	public ModelAndView join(
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("pwd") String pwd
			) {
		MemberBean bean = new MemberBean();
		bean.setUser_name(name);
		bean.setUser_email(email);
		bean.setUser_pw(pwd);
		
		memberService.join(bean);
		return new ModelAndView("redirect:/MemberLoginView.do");
	}
	
	@RequestMapping(value="/MemberFindPwView.do", method=RequestMethod.GET)
	public ModelAndView gofindPwView() {
		return new ModelAndView("member/FindPw");
	}
	
	@RequestMapping(value="/MemberFindPw.do", method=RequestMethod.POST)
	public void findPw(
			HttpServletResponse response,
			@RequestParam("email") String email) {
		System.out.println("email="+email);
		memberService.getPw(response, email);
	}
	
	
	@RequestMapping(value="/MyAccountView.do", method=RequestMethod.GET)
	public ModelAndView goMyAccount(HttpServletRequest request) {
		int money=memberService.getMyAccount(request);
		return new ModelAndView("member/MyAccount","money",money);
	} 
	
	@RequestMapping(value="/MyAccountUpdate.do", method=RequestMethod.POST)
	public ModelAndView updateMyAccount(
			HttpServletRequest request,
			@RequestParam("addMoney") String money) {
		memberService.updateMyAccount(request, Integer.parseInt(money));
		return new ModelAndView("redirect:MyAccountView.do");
	}
	
	
}
