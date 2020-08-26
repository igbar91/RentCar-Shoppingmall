---------------noticeboard table---------------------
create sequence carBoard_seq
    start with 1
        increment by 1
        minvalue 1
        maxvalue 10000;
        
 /*  create table carBoard ( 
  num number primary key,
  subject varchar(40) not null,
  title varchar(40) not null,
  reg_date Date,
  ref     number,
  re_step number,
  re_level    number,
  readCount number,
  content varchar2(500) not null
  ); */ 
  
 select * from carBoard;

 create table carBoard as select * from board;
 select * from board;
 
 insert into carBoard values(43, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
 
 
    create table board ( 
  Num number primary key,
  Writer varchar2(30) not null,
  Email varchar2(40) not null,  
  Subject varchar(40) not null,
  Password varchar2(15) not null,
  Reg_date Date,
  Ref     number,
  Re_step number,
  Re_level    number,
  ReadCount number,
  Content varchar2(500) not null
  );  
