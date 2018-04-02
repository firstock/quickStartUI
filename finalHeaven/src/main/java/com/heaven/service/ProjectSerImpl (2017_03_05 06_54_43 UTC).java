package com.heaven.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.dao.ProjectDaoImpl;
import com.heaven.dto.ProjectBean;

@Service
public class ProjectSerImpl implements ProjectSer{
	@Autowired
	private ProjectDaoImpl projectDAO;
	
	public List<ProjectBean> getProjectList() {
		System.out.println("project service 진입");
		return projectDAO.getProjectList();
	}

	@Override
	public void addProject(ProjectBean dto) {
		System.out.println("ProjectSerImpl-addProject메서드진입");
		projectDAO.addProject(dto);
		
	}
	
	@Override
	public ModelAndView getMyProject(HttpServletRequest request) {
		List<ProjectBean> prolist;
		ProjectBean bean=new ProjectBean();
		ModelAndView mav=new ModelAndView();
		
		final int ROWSIZE=3;	// 한페이지에 보일 게시물 수
		final int BLOCK=5;		// 아래에 보일 페이지 최대개수 1~5 / 6~10 / 11~15 식으로 5개로 고정
		int page=1;				// 기본 페이지값
		
		if(request.getParameter("page")!=null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		String email = (String) request.getSession().getAttribute("email");
		System.out.println("로그인한 사람="+email);	
		int listcount=projectDAO.getProCount(email);
		System.out.println("나의프로젝트개수=" + listcount);
		
		int start=(page*ROWSIZE)-(ROWSIZE-1);		// 해당페이지에서 시작번호(step2)
			System.out.println("start="+start);
		int end=(page*ROWSIZE);						// 해당페이지에서 끝번호(step2)
			System.out.println("end="+end);			
		int startPage = ((page-1)/BLOCK*BLOCK)+1;	// 시작블럭숫자 (1~5페이지일경우 1, 6~10일경우 6)
			System.out.println("startPage="+startPage);
		int endPage = ((page-1)/BLOCK*BLOCK)+BLOCK; // 끝 블럭 숫자 (1~5일 경우 5, 6~10일경우 10)
			System.out.println("endPage="+endPage);		
		int allPage = (int) Math.ceil((double)listcount/ROWSIZE); // 전체 페이지수
			System.out.println("allPage="+allPage);
		
		if(endPage > allPage) {	endPage = allPage;	}
		System.out.println("after endPage="+endPage);
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		bean.setUSER_EMAIL(email);		
		params.put("bean", bean);
		params.put("start", start);
		params.put("end", end);
		
		prolist=projectDAO.getMyProject(params);				
			System.out.println("=====proList목록=====");
			System.out.println(prolist);
		                                              
		mav.addObject("page", page);
	   	mav.addObject("prolist", prolist);
	   	mav.addObject("allPage", allPage);
	   	mav.addObject("startPage", startPage);
	   	mav.addObject("endPage", endPage);
	   	mav.addObject("start", start);
	   	mav.addObject("end", end);
	   	mav.addObject("listcount", listcount);
	   	mav.addObject("BLOCK", BLOCK);
	   	mav.addObject("ROWSIZE", ROWSIZE);
		
	   	mav.setViewName("project/MyProject");
		return mav;
	}

//by J.K.
	public ProjectBean getDetailProject(int num) {
		System.out.println("getDetailProject 진입");
		ProjectBean projectBean = projectDAO.getProjectBean(num);
		return projectBean;
	}

	public ProjectBean payFund(int num, int money, String email, int supporters) {
		int addMoney = 0;
		ProjectBean projectBean =  getDetailProject(num);
		addMoney = projectBean.getPROJECT_CMONEY()+money;
		projectBean.setPROJECT_CMONEY(addMoney);
		projectBean.setPROJECT_SUPPORTERS(supporters);
		projectDAO.updateFund(projectBean);		
		return getDetailProject(num);
	}

	
}
