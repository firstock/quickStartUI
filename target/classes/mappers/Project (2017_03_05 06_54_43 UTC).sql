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

SELECT convert( MONEY, PROJECT_GMONEY ) FROM PROJECT;
SELECT PROJECT_NUM, REGEXP_REPLACE(REVERSE(REGEXP_REPLACE( REVERSE(TO_CHAR(PROJECT_GMONEY)), '([0-9]{3})','\1,')), '^,','') AS PROJECT_GMONEY, PROJECT_CMONEY FROM PROJECT;
select*from PROJECT order by PROJECT_NUM;
          61 창작 뮤지컬 <Anne the musical>  ADProject의 뮤지컬 프로젝트               jjk@jjk.com          anne the musical.jpg_1464327229772 부산에서 진행되는 첫 뮤지컬 프로젝트입니다.            저희는 경성대학교 연극영화학부 학생 스터디에서 출발하여, 올해 1월 프로젝트 팀으로 뭉친, A.D.Project입니다. 학교에서 기회가 없었던, 혹은 흔히 말하는 ‘Outsider’ 였던 학생들이, 우리가 하고 싶었던, 우리가 원했던 작업들을 하기 위해 ‘저녁식사 스터디’라는 명칭 아래 처음 뭉쳤었습니다.    - 제 1회 저녁식사 스터디 정기공연 ‘첫사랑 찾기 주식회사’ (원작 ; 김종욱찾기)  - 제 2회 저녁식사 스터디 정기공연 ‘Totally Fxxked’ (원작 ; 스프링어웨이크닝)    이 두 번의 공연으로 저희의 가능성을 보았고, 이제는 학교를 벗어나 많은 관객들과 다양한 소통을 하기 위해 이번 프로젝트를 기획하게 되었습니다. 또다시 처음 이라는 생각으로 그리고 첫 창작이라는 많은 부담감과 함께 시작을 했지만,이제는 더 멀리 날아가기 위해 열심히 준비중에 있습니다.    그 첫발을 여러분들과 함께 하고 싶습니다. ‘Anne the musical’이 공연되기 위해서는 여러분들의 도움이 절실합니다. 무대제작, 의상, 소품, 극장 대관료, 포스터 및 팜플렛 제작 등 진행 비용이 저희들만의 노력으론 많이 부족합니다.    우리 A.D.P.는 여러분들이 관극 하시는 동안 이 작품의 세계속으로 빠져들 수 있도록 더 좋은 공연을, 더 잘 만들어진 공연을 보여드리고 싶습니다. 비판은 겸허히 받아들이고, 조언은 귀담아 듣겠습니다. 많은 관심 부탁드립니다.    여러분께서 함께 해주신 후원금은 ‘Anne the musical’의 제작비로 사용됩니다.  (극장대관료 / 의상&소품 구입비 / 무대 제작비 / 홍보물 인쇄비)        2500000              0                  0             0            30 state         2016-05-27 14:33:49.0
update project set project_img = 'anne the musical.jpg' where project_num=61;
update project set project_state ='state' where PROJECT_NUM=61;
update project set project_img ='yosu.jpg' where project_num=142;
update project set PROJECT_TITLE ='여수 아' where project_num=142;
update project set PROJECT_CMONEY = 1600000 where project_num=61;
update project set PROJECT_CMONEY = 6000000 where project_num=129;
update project set PROJECT_CMONEY = 15890000 where project_num=130;
update project set PROJECT_CMONEY = 890000 where project_num=131;
update project set PROJECT_CMONEY =2450000 where project_num=122;

update project set PROJECT_CMONEY =3240000 where project_num=133;
update project set PROJECT_CMONEY =5550000 where project_num=138;
update project set PROJECT_CMONEY =72340000 where project_num=139;
update project set PROJECT_CMONEY =15230000 where project_num=140;
update project set PROJECT_CMONEY =970000 where project_num=141;
update project set PROJECT_CMONEY =6840000 where project_num=142;
update project set PROJECT_CMONEY =1670000 where project_num=134;

update project set PROJECT_TITLE ='길고양이 앱 "네코링크"' where project_num=135;
update project set PROJECT_TITLE ='꿈의 해석으로 디자인한 게임 ' where project_num=143;

delete from PROJECT where PROJECT_TITLE like '%title%';
delete from PROJECT where PROJECT_NUM = 82;

select count(*) from PROJECT;
select count(*) from user_tab_columns where table_name='PROJECT';
<!-- 프로젝트 리스트 -->
select*from PROJECT order by PROJECT_NUM;
<!-- 프로젝트 디테일 -->
select*from PROJECT where PROJECT_TITLE = '8p_title';
delete from PROJECT where PROJECT_NUM=161;

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
  62 Musical <Miss Saigon>      MissSaigon의 연극 프로젝트               jjk@jjk.com          미션새이건.jpg               서울예술대학교 뮤지컬 <미스사이공> 입니다.                                                    지난 2월 배우 오디션을 시작으로 다양한 전공의 스탭들과 연기/뮤지컬 전공 학생들이 모두 한자리에 모였습니다.     그때부터 세계 4대 뮤지컬로 불릴만큼 대작인 '미스사이공'을 우리만의 색깔로 어떻게 그려낼 수 있을까에 대한 즐겁고도 심도 깊은 고민이 시작되었습니다. 서울예술대학교 학생들은 직접 부딪히며 보다 완성도 높은 공연을 위해 노력했고, 조금씩 우리만의 미스사이공을 만들어 가고 있습니다.    '미스사이공'은 사실 한편으로 철저히 서양인의 시각에서 그려진 작품입니다. 때문에 동양인의 관객이 보기에는 마냥 유쾌하지 않은 모습들을 가지고 있습니다. 하지만 이렇게 백인우월주의적인 시각을 담은 작품임에도 '세계 4대 뮤지컬'의 반열에 오를 수 있던 이유는 무엇일까요?    그것은 바로 드라마의 구조를 완벽하게 재현하고 있는 미셀 쇤베르크만의 음악의 영향이 큽니다. 다양한 극적 요소를 음악속에 숨겨두고, 확장시키는 과정을 반복하며 드라마적인 통일감을 부여한 음악만으로도 '미스사이공'은 하나의 훌륭한 작품입니다.                                                                                                                                                                                                                                                                                                        500000         170000                  6             0            24 unApproved    2016-05-27 14:46:48.0

insert into REPLY values(RE_SEQ.NEXTVAL,'jjk@jjk.com','Musical <Miss Saigon>','꼭 뮤지컬 할 수 있기를 바래요!!^^',sysdate);
insert into REPLY values(RE_SEQ.NEXTVAL,'jjk@jjk.com','Musical <Miss Saigon>','저 후원도 했습니다!!ㅋㅋ',sysdate);
insert into REPLY values(RE_SEQ.NEXTVAL,'zico@block.com','Musical <Miss Saigon>','가서 꼭 볼래요!!ㅎㅎ',sysdate);
insert into REPLY values(RE_SEQ.NEXTVAL,'zico@block.com','Musical <Miss Saigon>','저도 했어요!!',sysdate);
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
create table member(
user_name varchar2(50),
user_email varchar2(100),
user_pw varchar2(50),
user_account number
);
select*from FUND where user_email ='jjk@jjk.com' order by project_title;
select*from FUND;
select*from FUND where PROJECT_TITLE = 'ex2';
select count(*), sum(FUND_DONATION) from FUND where PROJECT_TITLE = '9p_title';
select count(*) from FUND where PROJECT_TITLE = '9p_title';
select distinct user_name, m.user_email from member m, fund f where m.user_email = f.user_email and m.user_email = 'jjk@jjk.com';
select*from member;

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


<!-- ===================== 역할 ======================== -->

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

