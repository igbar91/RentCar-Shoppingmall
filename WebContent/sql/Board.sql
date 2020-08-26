---------------noticeboard table---------------------
create sequence board_seq
    start with 1
        increment by 1
        minvalue 1
        maxvalue 10000;
        
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