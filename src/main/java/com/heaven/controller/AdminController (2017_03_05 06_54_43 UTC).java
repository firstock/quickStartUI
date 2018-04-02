package com.heaven.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
//	왜인지 POST는 안되더라. 
//	@RequestMapping(value="/adminLoginView.ad", method=RequestMethod.POST)		
//	public ModelAndView goLoginPost(){
//		System.out.println("AdminController goLoginPost");
//		return new ModelAndView("admin/adminLogin");
//	}
	
	@RequestMapping(value="/adminLogin.ad", method=RequestMethod.POST)
	public ModelAndView goLoginPost(){
		System.out.println("AdminController goLogin POST");
		return new ModelAndView("admin/adminLogin");		// <-- setRedirect, setPath
	}
	@RequestMapping(value="/adminLogin.ad", method=RequestMethod.GET)
	public ModelAndView goLoginGet(){
		System.out.println("AdminController goLogin GET");
		return new ModelAndView("admin/adminLogin");
	}
	
	
	@RequestMapping(value="/adminManage.ad", method= RequestMethod.GET)
	public ModelAndView goManage(){
		System.out.println("AdminController goManage");
		return new ModelAndView("admin/adminManage");
	}
	
	@RequestMapping(value="/adminQna.ad", method=RequestMethod.GET)
	public ModelAndView goQna(){
		System.out.println("AdminController goQna");
		return new ModelAndView("admin/adminQna");
	}
	
	@RequestMapping(value="/adminPermission.ad", method=RequestMethod.GET)
	public ModelAndView goPermission(){
		System.out.println("AdminController goPermission");
		return new ModelAndView("admin/adminPermission");
	}
	/*protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI= request.getRequestURI();
		String contextPath= request.getContextPath();
		String command= requestURI.substring(contextPath.length());
		
		ActionForward forward= null;
		Action action= null;
		
		if(command.equals("/adminLogin.ao")){				//->로그인 페이지
			forward= new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./admin/adminLogin.jsp");
		}else if(command.equals("/adminManage.ao")){		//->관리자 메뉴
			System.out.println("contextPath_adminManage: "+contextPath);
			System.out.println("command_adminManage: "+command);
			forward= new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./admin/adminManage.jsp");
		}else if(command.equals("/AdminQnaAnswer.ao")){		//QnA_답해주기
			System.out.println("contextPath_AdminQnaAnswer: "+contextPath);
			action= new AdminQnaAnswerAction();
			try{
				forward= action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if(command.equals("/AdminPermission.ao")){	//게시글 승인
			System.out.println("contextPath_AdminPermission: "+contextPath);
			action= new AdminPermissionAction();
			try{
				forward= action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		if(forward != null){
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher= request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}*/
}
