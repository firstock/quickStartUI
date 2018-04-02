package com.heaven.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.heaven.dto.ProjectBean;

public interface ProjectDao {
	
	//프로젝트 전체 list 가져오기
	public List<ProjectBean> getProjectList();
	
	//프로젝트 insert
	public void addProject(ProjectBean dto);
	
	//나의 프로젝트 가져오기
	public List<ProjectBean> getMyProject(HashMap<String, Object> params);
	
	//프로젝트 전체 개수 구하기
	public int getProCount(String email);
	
}
