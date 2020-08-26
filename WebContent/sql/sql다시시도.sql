create sequence board_seq
    start with 1
        increment by 1
        minvalue 1
        maxvalue 10000;
        
        drop table board; 
        
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
  
  
 select * from board;
 
  create table carBoard as select * from board;
  
   insert into carBoard values(1, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(2, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(3, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(4, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(5, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(6, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(7, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(8, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(9, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(10, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(11, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(12, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(13, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(14, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(15, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(16, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(17, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(18, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(19, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );
   insert into carBoard values(20, 'sss', 'sss@naver.com', '아아', '1234', '2020-08-24', 1, 1, 1, 0, 'dkdk' );