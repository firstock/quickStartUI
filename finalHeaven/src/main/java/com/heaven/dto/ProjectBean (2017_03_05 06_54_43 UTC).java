package com.heaven.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class ProjectBean {
	private int PROJECT_NUM;        	//게시글 일련번호
	private String PROJECT_TITLE;     
	private String PROJECT_TEAMNAME;	//팀 이름(user_email과 다른 것) 
	private String USER_EMAIL;			//이메일. 타 사이트의 id같은거
	private String PROJECT_IMG;       
	private String PROJECT_BRIEFING;
	private String PROJECT_CONTENT;   
	private int	PROJECT_GMONEY;    		//해당 프로젝트(게시글) 목표금액
	private int	PROJECT_CMONEY;    		//해당 프로젝트 현재 금액
	private int	PROJECT_SUPPORTERS;		//공헌자 수
	private int	PROJECT_REPLY;			//댓글 수
	private int	PROJECT_D_DAY;			//남은 날
	private String PROJECT_STATE;		//상태: 승인 or 미승인
	private Date PROJECT_DATE;			//게시날짜
	
	public int getPROJECT_NUM() {
		return PROJECT_NUM;
	}
	public void setPROJECT_NUM(int pROJECT_NUM) {
		PROJECT_NUM = pROJECT_NUM;
	}
	public String getPROJECT_TITLE() {
		return PROJECT_TITLE;
	}
	public void setPROJECT_TITLE(String pROJECT_TITLE) {
		PROJECT_TITLE = pROJECT_TITLE;
	}
	public String getPROJECT_TEAMNAME() {
		return PROJECT_TEAMNAME;
	}
	public void setPROJECT_TEAMNAME(String pROJECT_TEAMNAME) {
		PROJECT_TEAMNAME = pROJECT_TEAMNAME;
	}
	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public String getPROJECT_IMG() {
		return PROJECT_IMG;
	}
	public void setPROJECT_IMG(String pROJECT_IMG) {
		PROJECT_IMG = pROJECT_IMG;
	}
	public String getPROJECT_BRIEFING() {
		return PROJECT_BRIEFING;
	}
	public void setPROJECT_BRIEFING(String pROJECT_BRIEFING) {
		PROJECT_BRIEFING = pROJECT_BRIEFING;
	}
	public String getPROJECT_CONTENT() {
		return PROJECT_CONTENT;
	}
	public void setPROJECT_CONTENT(String pROJECT_CONTENT) {
		PROJECT_CONTENT = pROJECT_CONTENT;
	}
	public int getPROJECT_GMONEY() {
		return PROJECT_GMONEY;
	}
	public void setPROJECT_GMONEY(int pROJECT_GMONEY) {
		PROJECT_GMONEY = pROJECT_GMONEY;
	}
	public int getPROJECT_CMONEY() {
		return PROJECT_CMONEY;
	}
	public void setPROJECT_CMONEY(int pROJECT_CMONEY) {
		PROJECT_CMONEY = pROJECT_CMONEY;
	}
	public int getPROJECT_SUPPORTERS() {
		return PROJECT_SUPPORTERS;
	}
	public void setPROJECT_SUPPORTERS(int pROJECT_SUPPORTERS) {
		PROJECT_SUPPORTERS = pROJECT_SUPPORTERS;
	}
	public int getPROJECT_REPLY() {
		return PROJECT_REPLY;
	}
	public void setPROJECT_REPLY(int pROJECT_REPLY) {
		PROJECT_REPLY = pROJECT_REPLY;
	}
	public int getPROJECT_D_DAY() {
		return PROJECT_D_DAY;
	}
	public void setPROJECT_D_DAY(int pROJECT_D_DAY) {
		PROJECT_D_DAY = pROJECT_D_DAY;
	}
	public String getPROJECT_STATE() {
		return PROJECT_STATE;
	}
	public void setPROJECT_STATE(String pROJECT_STATE) {
		PROJECT_STATE = pROJECT_STATE;
	}
	public Date getPROJECT_DATE() {
		return PROJECT_DATE;
	}
	public void setPROJECT_DATE(Date pROJECT_DATE) {
		PROJECT_DATE = pROJECT_DATE;
	}
	@Override
	public String toString() {
		return "ProjectBean [PROJECT_NUM=" + PROJECT_NUM + ", PROJECT_TITLE=" + PROJECT_TITLE + ", PROJECT_TEAMNAME="
				+ PROJECT_TEAMNAME + ", USER_EMAIL=" + USER_EMAIL + ", PROJECT_IMG=" + PROJECT_IMG
				+ ", PROJECT_BRIEFING=" + PROJECT_BRIEFING + ", PROJECT_CONTENT=" + PROJECT_CONTENT
				+ ", PROJECT_GMONEY=" + PROJECT_GMONEY + ", PROJECT_CMONEY=" + PROJECT_CMONEY + ", PROJECT_SUPPORTERS="
				+ PROJECT_SUPPORTERS + ", PROJECT_REPLY=" + PROJECT_REPLY + ", PROJECT_D_DAY=" + PROJECT_D_DAY
				+ ", PROJECT_STATE=" + PROJECT_STATE + ", PROJECT_DATE=" + PROJECT_DATE + "]\n";
	}
}