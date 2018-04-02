drop table adminMember;
create table adminMember(
	adminName varchar2(30),
	adminPw varchar2(30)
); 


select adminName from ADMINMEMBER;
select * from ADMINMEMBER;
select * from ADMINMEMBER where 'true'='true';

insert into ADMINMEMBER
	values('admi','nistrator');
	
	