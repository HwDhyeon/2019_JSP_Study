create table member (
    name varchar2(10),
    userid varchar2(10),
    pwd varchar2(10),
    email varchar(20),
    phone char(13),
    admin number(1) default 0,
    primary key(userid)
);

insert into member values('ÀÌ¼Ò¹Ì', 'somi', '1234', 'gmd@naver.com', '01023625157', 0);
insert into member values('ÇÏ»ó¿À', 'sang12', '1234', 'ha12@naver.com', '01056298888', 1);
insert into member values('±èÀ±½Â', 'light', '1234', 'youn1004@naver.com', '01099998282', 0);

commit;

select * from member;

update member set phone = '011-765-4321' where userid = 'somi';

select * from member;

delete member where userid='somi';

select * from member;

insert into member values('ÀÌ¼Ò¹Ì', 'somi', '1234', 'gmd@naver.com', '010-2362-5157', 0);

/*
delete member where name='À±º´ÈÆ';

SELECT name, userid, pwd, email, REGEXP_REPLACE(phone,'([[:digit:]]{3})([[:digit:]]{3,4})([[:digit:]]{4})','\1-\2-\3') as phone, admin FROM member;
*/