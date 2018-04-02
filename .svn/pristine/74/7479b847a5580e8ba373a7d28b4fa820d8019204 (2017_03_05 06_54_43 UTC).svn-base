package com.heaven.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.heaven.dto.ProjectBean;

public interface ProjectSer {
	
	//프로젝트 전체 list 가져오기
	public List<ProjectBean> getProjectList();
	public void addProject(ProjectBean dto);
	
	//나의 프로젝트 보기
	public ModelAndView getMyProject(HttpServletRequest request);
}
