package com.heaven.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heaven.dto.ProjectBean;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ;

@Repository
public class ProjectDaoImpl implements ProjectDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/* 수정 by J.K. 내용 => d-day 부분이 필요하여 메소드 추가.
	 * public List<ProjectBean> getProjectList() {
		System.out.println("project dao 진입");
		return sqlSession.selectList("selectProjectAll");
	}*/
	public List<ProjectBean> getProjectList() {
		System.out.println("project dao 진입");
		List<ProjectBean> proList = sqlSession.selectList("selectProjectAll");
		proList = countD_DayList(proList);
		return proList;
	}

	@Override
	public void addProject(ProjectBean dto) {
		System.out.println("projectDaoImpl-addProject메서드진입");
		sqlSession.insert("insertProject", dto);
	}
	
	@Override
	public int getProCount(String email) {		
		return sqlSession.selectOne("getListCount", email);
	}
	
	@Override
	public List<ProjectBean> getMyProject(HashMap<String, Object> params) {
		List<ProjectBean> prolist = sqlSession.selectList("selectMyProject", params);
		return prolist;
	}

//by J.K. Jin
	// d_day List 설정
	private List<ProjectBean> countD_DayList(List<ProjectBean> proList) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy,MM,dd hh:mm");
		Date cDate = new Date();
		String currentDate = dateFormat.format(cDate); // 현재 날짜 구하기
		for (int i = 0; i < proList.size(); i++) {
			ProjectBean bean = proList.get(i);
			Date pDate = bean.getPROJECT_DATE();
			String StringProjectDate = dateFormat.format(pDate);
			int day = bean.getPROJECT_D_DAY();
			try {
				cDate = dateFormat.parse(currentDate);
				pDate = dateFormat.parse(StringProjectDate);
				long start = pDate.getTime();
				long end = cDate.getTime();
				int d_day = day - (int) ((end - start) / (24 * 60 * 60 * 1000));
				bean.setPROJECT_D_DAY(d_day);
				proList.set(i, bean);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return proList;
	}

	public ProjectBean getProjectBean(int num) {
		ProjectBean bean = sqlSession.selectOne("selectOneProject", num);
		bean = countD_Day(bean);
		return bean;
	}

	// d_day 하나만 설정
	private ProjectBean countD_Day(ProjectBean bean) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy,MM,dd hh:mm");
		Date cDate = new Date();
		String currentDate = dateFormat.format(cDate); // 현재 날짜 구하기
		Date pDate = bean.getPROJECT_DATE();
		String StringProjectDate = dateFormat.format(pDate);// 입력날짜 구하기
		try {
			cDate = dateFormat.parse(currentDate);
			pDate = dateFormat.parse(StringProjectDate);
			long start = pDate.getTime();
			long end = cDate.getTime();
			int d_day = bean.getPROJECT_D_DAY() - (int) ((end - start) / (24 * 60 * 60 * 1000));
			bean.setPROJECT_D_DAY(d_day);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return bean;
	}

	public void updateFund(ProjectBean projectBean) {
		if (sqlSession.update("updateProject", projectBean) == 1) {
			System.out.println("updateFund done");
		} else {
			System.out.println("try it again");
		}
	}

}
