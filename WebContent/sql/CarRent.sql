create table CarRent (
    no number primary key,
    name varchar2(30),
    Category number,
    price number,
    usepeople number,
    company varchar2(50),
    img varchar2(50),
    info varchar2(300)
    );
    
    select * from CarRent;
    
    Commit;
    
create sequence Car_seq
	start with 1
	increment by 1
	minvalue 1 
	maxvalue 10000;
	
	
	
insert into CarRent values(1, 'BMW', 2, 7450, 5, 'BMW', 'bmwmodel_200.png',
'독일 바이베른주 뮌헨');

insert into CarRent values(2, 'BMW', 3, 9990, 5, 'BMW', 'bmwmodel_201.png',
'독일 바이에른주 뮌헨');

insert into CarRent values(3, 'BMW', 2, 8360, 5, 'BMW', 'bmwmodel_202.png',
'독일 바이에른주 뮌헨');

insert into CarRent values(4, 'BMW', 3, 15230, 5, 'BMW', 'bmwmodel_203.png',
'독일 바이에른주 뮌헨');

insert into CarRent values(5, 'BMW', 2, 7730, 5, 'BMW', 'bmwmodel_204.png',
'독일 바이에른주 뮌헨');

insert into CarRent values(6, 'BMW', 3, 14750, 5, 'BMW', 'bmwmodel_205.png',
'독일 바이에른주 뮌헨');


insert into CarRent values(7, 'ford', 2, 5920, 5, 'ford', 'fordmodel_200.png',
'미국 미시간주 디어본');

insert into CarRent values(8, 'ford', 3, 6850, 5, 'ford', 'bmwmodel_201.png',
'미국 미시간주 디어본');



insert into CarRent values(9, 'hyun', 3, 2392, 5, 'hyun', 'hyundaemodel_200.png',
'서울시 서초구 헌릉로 12');

insert into CarRent values(10, 'hyun', 2, 5522, 5, 'hyun', 'hyundaemodel_201.png',
'서울시 서초구 헌릉로 12');

insert into CarRent values(11, 'hyun', 3, 3579, 5, 'hyun', 'hyundaemodel_202.png',
'서울시 서초구 헌릉로 12');


insert into CarRent values(12, 'hyun', 2, 4890, 5, 'hyun', 'hyundaemodel_203.png',
'서울시 서초구 헌릉로 12');

insert into CarRent values(13, 'hyun', 2, 2568, 5, 'hyun', 'hyundaemodel_204.png',
'서울시 서초구 헌릉로 12');





insert into CarRent values(14, 'jeep', 3, 6340, 5, 'jeep', 'jeepmodel_200.png',
'미국 미시간주 오번 힐스');


insert into CarRent values(15, 'jeep', 3, 8340, 5, 'jeep', 'jeepmodel_201.png',
'미국 미시간주 오번 힐스');

insert into CarRent values(16, 'jeep', 2, 4540, 5, 'jeep', 'jeepmodel_202.png',
'미국 미시간주 오번 힐스');




insert into CarRent values(17, 'kia', 2, 4410, 5, 'kia', 'kiamodel_200.png',
'서울시 서초구 헌릉로 12');

insert into CarRent values(18, 'kia', 3, 5976, 5, 'kia', 'kiamodel_201.png',
'서울시 서초구 헌릉로 12');

insert into CarRent values(19, 'kia', 2, 2144, 5, 'kia', 'kiamodel_202.png',
'서울시 서초구 헌릉로 12');


insert into CarRent values(20, 'kia', 2, 1570, 5, 'kia', 'kiamodel_203.png',
'서울시 서초구 헌릉로 12');

insert into CarRent values(21, 'kia', 2, 2111, 5, 'kia', 'kiamodel_204.png',
'서울시 서초구 헌릉로 12');

select * from CarRent;

   no number primary key,
    name varchar2(30),
    Category number,
    price number,
    usepeople number,
    company varchar2(50),
    img varchar2(50),
    info varchar2(300)
    
    --*************************************************************************
    
update CarRent set name = '테슬라 Model 3', Category = 1, price = 5369,
usePeople = 5,  company = 'TESLA', img = 'teslaImage1.png', info= '
캘리포니아 주 팰토앨토' where no = 1;

update CarRent set name = '테슬라 Model X', Category = 1, price = 11599,
usePeople = 5,  company = 'TESLA', img = 'teslaImage2.png', info= '
캘리포니아 주 팰토앨토' where no = 2;

update CarRent set name = '테슬라 Model S', Category  = 1, price = 10799,
usePeople = 5,  company = 'TESLA', img = 'teslaImage3.png', info= '
캘리포니아 주 팰토앨토' where no = 3;

update CarRent set name = '테슬라 Cybertruck', Category  = 1, price = 13000,
usePeople = 5,  company = 'TESLA', img = 'teslaImage4.png', info= '
캘리포니아 주 팰토앨토' where no = 4;

update CarRent set name = '테슬라 Model Y', Category = 1, price = 14891,
usePeople = 5,  company = 'TESLA', img = 'teslaImage5.png', info= '
캘리포니아 주 팰토앨토' where no = 5;

--*****************************************************************************
--*****************************************************************************
update CarRent set name = '벤츠 E-Class', Category = 2, price = 6360,
usePeople = 5,  company = 'BENZ', img = 'benzImage1.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 6;

update CarRent set name = '벤츠 GLC-Class', Category = 2, price = 7110,
usePeople = 5,  company = 'BENZ', img = 'benzImage2.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 7;

update CarRent set name = '벤츠 C-Class', Category = 2, price = 5080,
usePeople = 5,  company = 'BENZ', img = 'benzImage3.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 8;

update CarRent set name = '벤츠 CLA-Class', Category = 2, price = 5450,
usePeople = 5,  company = 'BENZ', img = 'benzImage4.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 9;

update CarRent set name = '벤츠 A-Class', Category = 2, price = 3850,
usePeople = 5,  company = 'BENZ', img = 'benzImage5.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 10;

update CarRent set name = '벤츠 The New GLE-Class', Category = 2, price = 9030,
usePeople = 5,  company = 'BENZ', img = 'benzImage6.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 11;

update CarRent set name = '벤츠 S-Class', Category = 2, price = 13420,
usePeople = 5,  company = 'BENZ', img = 'benzImage7.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 12;

update CarRent set name = '벤츠 CLS-Class', Category = 2, price = 8770,
usePeople = 5,  company = 'BENZ', img = 'benzImage8.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 13;

update CarRent set name = '벤츠 The New E-Class', Category = 2, price = 6874,
usePeople = 5,  company = 'BENZ', img = 'benzImage9.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 14;

update CarRent set name = '벤츠 The New GLS-Class', Category = 2, price = 13810,
usePeople = 5,  company = 'BENZ', img = 'benzImage10.png', info= '
독일 바덴뷔르템베르크주 슈투트가르트' where no = 15;


--********************************************************************************
--********************************************************************************
--********************************************************************************
insert into CarRent values(21, 'kia', 2, 2111, 5, 'kia', 'kiamodel_204.png',
'서울시 서초구 헌릉로 12');
update CarRent set name = '페라리 Portofino', Category = 3, price = 28000,
usePeople = 5,  company = 'FERRARI', img = 'ferrariImage1.png', info= '
이탈리아 마라넬로' where no = 16;

update CarRent set name = '페라리 812 GTS', Category = 3, price = 51500,
usePeople = 5,  company = 'FERRARI', img = 'ferrariImage2.png', info= '
이탈리아 마라넬로' where no = 17;

update CarRent set name = '페라리 Roma', Category = 3, price = 17157,
usePeople = 5,  company = 'FERRARI', img = 'ferrariImage3.png', info= '
이탈리아 마라넬로' where no = 18;

update CarRent set name = '페라리 F8 Spider', Category = 3, price = 39700,
usePeople = 5,  company = 'FERRARI', img = 'ferrariImage4.png', info= '
이탈리아 마라넬로' where no = 19;

update CarRent set name = '페라리 F8 Tributo', Category = 3, price = 36000,
usePeople = 5,  company = 'FERRARI', img = 'ferrariImage5.png', info= '
이탈리아 마라넬로' where no = 20;

update CarRent set name = '페라리 812 Superfast', Category = 3, price = 46900,
usePeople = 5,  company = 'FERRARI', img = 'ferrariImage6.png', info= '
이탈리아 마라넬로' where no = 21;

--****************************************************************************
insert into CarRent values(22, '페라리 SF90 Stradale', 3, 34872, 5, 'FERRARI', 'ferrariImage7.png',
'이탈리아 마라넬로');

insert into CarRent values(23, '페라리 488 Pista', 3, 47000, 5, 'FERRARI', 'ferrariImage8.png',
'이탈리아 마라넬로');

insert into CarRent values(24, '페라리 GTC4 Lusso T', 3, 34800, 5, 'FERRARI', 'ferrariImage9.png',
'이탈리아 마라넬로');

insert into CarRent values(25, '페라리 GTC4 Lusso', 3, 45000, 5, 'FERRARI', 'ferrariImage10.png',
'이탈리아 마라넬로');

insert into CarRent values(26, '페라리 488 Pista Spider', 3, 47800, 5, 'FERRARI', 'ferrariImage11.png',
'이탈리아 마라넬로');

