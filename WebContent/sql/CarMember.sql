

create table carMember(
   id varchar2(20) primary key,
   pass varchar2(20) not null,
   email varchar2(50) not null,
   tel varchar2(20) not null,
   age varchar2(10) not null
)

insert into carMember values('mixednuts', '1234', 'nuts@mix.com', '010-1004-1005', '25'); 
insert into carMember values('nuts', '1234', 'nuts2@mix.com', '010-2132-1005', '27'); 
insert into carMember values('berry', '1234', 'nuts3@mix.com', '010-2873-1005', '29'); 


 select * from carMember;--회원
 
