package com.heaven.etc;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//@Component("loginInterceptor")
public class SessionInterceptorAdmin extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler) throws Exception{
		System.out.println("ad1.Interceptor : PreHandle");		
		
		HttpSession session = request.getSession(false);
		if(session==null || session.getAttribute("email")==null) {
			System.out.println("ad3.session null");
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			
			PrintWriter out = response.getWriter();			
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지 입니다!');");
			out.println("location='adminLogin.ad'");
			out.println("</script>");
			out.close();
			
			return false;	
		}
		return super.preHandle(request, response, handler);
	}
		
}
