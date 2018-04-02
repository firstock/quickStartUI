package com.heaven.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.service.FundSerImpl;

@Controller
public class FundController {
	@Autowired
	private FundSerImpl fundService;
	
	
	@RequestMapping(value="/MyDonationView.do", method=RequestMethod.GET)
	public ModelAndView goMyFund(HttpServletRequest request) {
		ModelAndView mav = fundService.getMyFund(request);
		return mav;
	}
}
