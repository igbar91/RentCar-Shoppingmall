
create sequence reserve_seq
 start with 1
  increment by 1
  minvalue 1
  maxvalue 10000;

create table carreserve (
    reserveno number primary key,
    id  varchar2(50) not null,
    no  number  not null,    
    qty number    not null,
    dday number     not null,
    rday varchar2(50) not null,
    usein   number  not null,
    usewifi number  not null,
    useseat number  not null,
    usenavi number  not null
);
drop table carreserve;

select * from CarRent;
select * from  carreserve;

select * from CarRent natural join carreserve 
    where sysdate <= to_date(rday, 'YYYY-MM-DD') 
    AND id = 'nuts';
