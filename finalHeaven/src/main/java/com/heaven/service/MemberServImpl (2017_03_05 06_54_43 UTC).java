package com.heaven.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.dao.MemberDaoImpl;
import com.heaven.dto.MemberBean;

@Service
public class MemberServImpl implements MemberSer {
	private final static int NOT_EXIST_ID=1;
	private final static int WRONG_PW=2;
	private final static int LOGIN_SUCCESS=3;
	
	@Autowired
	private MemberDaoImpl memberDAO;
	
	public ModelAndView memberChk(HttpServletRequest request, HttpServletResponse response,
			String email, String inputPw) {
		

		int res = memberDAO.memberChk(email, inputPw);	
		ModelAndView mav = new ModelAndView();
		
		switch(res) {
		case NOT_EXIST_ID:
			try {
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();			
				out.println("<script>");
				out.println("alert('존재하지 않는 이메일입니다!');");
				out.println("location.href='MemberLoginView.do'");
				out.println("</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			mav.setViewName("redirect:/MemberLoginView.do");
			break;
		case WRONG_PW:
			try {
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();			
				out.println("<script>");
				out.println("alert('잘못된 비밀번호입니다!');");
				out.println("location.href='MemberLoginView.do'");
				out.println("</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			mav.setViewName("redirect:/MemberLoginView.do");
			break;
		case LOGIN_SUCCESS:
			request.getSession().setAttribute("email", email);
			mav.setViewName("redirect:/main.do");
			break;
		}
		return mav;
	}

	@Override
	public String overlapTest(String u_email) {
		String count_email=memberDAO.overlapTest(u_email);
		return count_email;
	}

	@Override
	public void join(MemberBean bean) {
		memberDAO.join(bean);
	}

	@Override
	public void getPw(HttpServletResponse response, String email) {
		String dbPw = memberDAO.getPw(email);
		ModelAndView mav = new ModelAndView();
		PrintWriter out;
		try {
			if(dbPw==null) {				
				System.out.println("존재하지 않는 이메일입니다..");
				response.setContentType("text/html;charset=UTF-8");
				out = response.getWriter();			
				out.println("<script>");
				out.println("alert('존재하지 않는 이메일입니다!');");
				out.println("location.href='MemberFindPwView.do'");
				out.println("</script>");
				out.close();				
			} else {
				System.out.println("비번보여줌");
				String msg = "비밀번호는 " + dbPw + "입니다.";
				response.setContentType("text/html;charset=UTF-8");
				out = response.getWriter();			
				out.println("<script>");
				out.println("alert('"+msg+"');");
				out.println("location.href='MemberLoginView.do'");
				out.println("</script>");
				out.close();
			} 
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int getMyAccount(HttpServletRequest request) {
		String email=(String) request.getSession().getAttribute("email");		
		return memberDAO.getMyAccount(email);
	}

	@Override
	public void updateMyAccount(HttpServletRequest request, int money) {
		String email=(String) request.getSession().getAttribute("email");
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("email", email);
		params.put("money", money);
		memberDAO.updateMyAccount(params);		
	}

//by J.K.
	public void minusFund(String email, int fundMoney) {
		HashMap<String, Object> minusFundMap = new HashMap<>();
		minusFundMap.put("email", email);
		minusFundMap.put("money", fundMoney);
		memberDAO.minusMyAccount(minusFundMap);		
	}
	
	

}
