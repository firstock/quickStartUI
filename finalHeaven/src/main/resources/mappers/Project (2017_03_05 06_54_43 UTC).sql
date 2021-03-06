drop table PROJECT;
CREATE TABLE PROJECT(
   PROJECT_NUM        	NUMBER,				
   PROJECT_TITLE      	VARCHAR2(100),
   PROJECT_TEAMNAME	    VARCHAR2(50),
   USER_EMAIL			VARCHAR2(20),
   PROJECT_IMG         	VARCHAR2(50),
   PROJECT_BRIEFING		VARCHAR2(200),
   PROJECT_CONTENT      VARCHAR2(2000),
   PROJECT_GMONEY       NUMBER,
   PROJECT_CMONEY       NUMBER,   
   PROJECT_SUPPORTERS	NUMBER,
   PROJECT_REPLY		NUMBER,
   PROJECT_D_DAY		NUMBER,
   PROJECT_STATE		VARCHAR2(20),
   PROJECT_DATE     	DATE,
   PRIMARY KEY(PROJECT_NUM)
);
drop sequence PRO_SEQ;
create sequence PRO_SEQ
	start with 1
	increment by 1
	maxvalue 10000;
	
select * from tab;	
delete from project where project_num=24;
insert into PROJECT values(PRO_SEQ.NEXTVAL,'p_title','p_teamname','p_umail','p_img','p_brie','p_content',1,2,3,4,5,'p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'2p_title','2p_teamname','2p_umail','2p_img','2p_brie','2p_content',1,2,3,4,5,'2p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'3p_title','3p_teamname','3p_umail','3p_img','3p_brie','3p_content',1,2,3,4,5,'3p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'4p_title','4p_teamname','4p_umail','4p_img','4p_brie','4p_content',1,2,3,4,5,'4p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'5p_title','5p_teamname','5p_umail','p5_img','5p_brie','5p_content',1,2,3,4,5,'5p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'6p_title','6p_teamname','6p_umail','p6_img','6p_brie','6p_content',1,2,3,4,5,'6p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'7p_title','7p_teamname','7p_umail','p7_img','7p_brie','7p_content',1,2,3,4,5,'7p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'8p_title','8p_teamname','8p_umail','p8_img','8p_brie','8p_content',1,2,3,4,5,'8p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'9p_title','9p_teamname','9p_umail','p9_img','9p_brie','9p_content',1,2,3,4,5,'9p_state',sysdate);
insert into PROJECT values(PRO_SEQ.NEXTVAL,'0p_title','0p_teamname','0p_umail','p0_img','0p_brie','0p_content',1,2,3,4,5,'0p_state',sysdate);

update PROJECT set PROJECT_CMONEY=300, PROJECT_SUPPORTERS=100 where PROJECT_TITLE = '8p_title';
update PROJECT set PROJECT_CMONEY=100 where PROJECT_NUM = 21;

select*from PROJECT;

select count(*) from PROJECT;
select count(*) from user_tab_columns where table_name='PROJECT';
// 프로젝트 리스트
select*from PROJECT order by PROJECT_NUM desc;
//프로젝트 디테일
select*from PROJECT where PROJECT_TITLE = '8p_title';

select*from PROJECT;
CREATE TABLE REPLY(
	REPLY_NUM			NUMBER,
	USER_EMAIL			VARCHAR2(20),
	PROJECT_TITLE		VARCHAR2(100),
	REPLY_TEXT			VARCHAR2(500),
	REPLY_DATE			DATE
);
create sequence RE_SEQ
	start with 1
	increment by 1
	maxvalue 10000;
select*from REPLY;
select count(*) from REPLY;
insert into REPLY values(RE_SEQ.NEXTVAL,'email','p_title','p_text',sysdate);
insert into REPLY values(RE_SEQ.NEXTVAL,'2email','2p_title','2p_text',sysdate);
insert into REPLY values(RE_SEQ.NEXTVAL,'3email','3p_title','3p_text',sysdate);
insert into REPLY values(RE_SEQ.NEXTVAL,'4email','4p_title','4p_text',sysdate);

CREATE TABLE FUND(
	FUND_NUM			NUMBER,
	USER_EMAIL			VARCHAR2(20),
	PROJECT_TITLE		VARCHAR2(100),
	FUND_DONATION		NUMBER,
	FUND_DATE			DATE
);
create sequence FU_SEQ
	start with 1
	increment by 1
	maxvalue 10000;
select*from FUND;
select*from FUND where PROJECT_TITLE = 'ex2';
select count(*), sum(FUND_DONATION) from FUND where PROJECT_TITLE = '9p_title';
select count(*) from FUND where PROJECT_TITLE = '9p_title';

select*from FUND where USER_EMAIL = 'kanada@email.com';
insert into FUND values(FU_SEQ.NEXTVAL,?,?,?,sysdate)
insert into FUND values(FU_SEQ.NEXTVAL,'1email','1p_title',1,sysdate);
insert into FUND values(FU_SEQ.NEXTVAL,'2email','2p_title',2,sysdate);
insert into FUND values(FU_SEQ.NEXTVAL,'3email','3p_title',3,sysdate);
insert into FUND values(FU_SEQ.NEXTVAL,'4email','4p_title',4,sysdate);
insert into FUND values(FU_SEQ.NEXTVAL,'5email','5p_title',5,sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝5', 5, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝6', 6, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝7', 7, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝8', 8, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝9', 9, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝10', 10, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝11', 11, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝5', 5, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝6', 6, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝7', 7, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝8', 8, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝9', 9, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝10', 10, sysdate);
insert into FUND values(FU_SEQ.NEXTVAL, 'lsm6127@naver.com', '플젝11', 11, sysdate);


===================== 역할 ========================

CREATE TABLE PROJECT(
   PROJECT_NUM        	NUMBER,				
   PROJECT_TITLE      	VARCHAR2(100),		
   PROJECT_TEAMNAME	    VARCHAR2(50),		//프로젝트 팀명
   USER_EMAIL 			VARCHAR2(20),		//프로젝트 작성자명
   PROJECT_IMG         	VARCHAR2(50),		//그림파일
   PROJECT_BRIEFING		VARCHAR2(200),		//프로젝트 짧은 설명
   PROJECT_CONTENT      VARCHAR2(2000),		//프로젝트 긴 설명
   PROJECT_GMONEY       NUMBER,				//프로젝트 목표금
   PROJECT_CMONEY       NUMBER,   			//프로젝트 현재기부금
   PROJECT_SUPPORTERS	NUMBER,				//프로젝트 지원자 명수
   PROJECT_REPLY		NUMBER,				//프로젝트 댓글 갯수
   PROJECT_D_DAY		NUMBER,				//프로젝트 목표 남은 일수
   PROJECT_STATE		VARCHAR2(20),		//프로젝트 승인 단계
   PROJECT_DATE     	DATE,
   PRIMARY KEY(PROJECT_NUM)
);

CREATE TABLE REPLY(
	REPLY_NUM			NUMBER,
	USER_EMAIL			VARCHAR2(20),		//댓글자
	PROJECT_TITLE		VARCHAR2(100),		//해당 프로젝트
	REPLY_TEXT			VARCHAR2(500),		
	REPLY_DATE			DATE
);

CREATE TABLE FUND(
	FUND_NUM			NUMBER,
	USER_EMAIL			VARCHAR2(20),		//프로젝트 지원자
	PROJECT_TITLE		VARCHAR2(100),		//프로젝트 이름
	FUND_DONATION		NUMBER,				//프로젝트 기부금
	FUND_DATE			DATE
);

