drop table member;

create table member(
user_name varchar2(50),
user_email varchar2(100),
user_pw varchar2(50),
user_account number
);

delete from member;
select * from member;
select * from MEMBER where USER_EMAIL='abc';

insert into member values ('a','abc','1234',0);
insert into member values ('zico','zico@block.com','0914',0);
insert into member values ('zico','zico@block.com','0914',10000);
update member set user_account=100000 where user_email='zico@block.com';
delete from member where user_pw='33';

select count(user_email) from member where user_email = 'zico@block.com';
