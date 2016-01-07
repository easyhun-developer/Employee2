

select * from member;

select * from country;

select count(*) from city;
select count(*) from country;


INSERT INTO `City` VALUES (1,'Kabul','AFG','Kabol',1780000);
INSERT INTO `City` VALUES (2,'Qandahar','AFG','Qandahar',237500);
INSERT INTO `City` VALUES (3,'Herat','AFG','Herat',186800);
INSERT INTO `City` VALUES (4,'Mazar-e-Sharif','AFG','Balkh',127800);
INSERT INTO `City` VALUES (5,'Amsterdam','NLD','Noord-Holland',731200);

--
-- Member Table
-- DDL(Data Definition Language)
drop table member;

create table member (
	id				int auto_increment,
	email			varchar(255) not null,
	name			varchar(255) not null,
	password 		varchar(255) not null,
	register_date	date,
	address			varchar(255) not null,
	phone			varchar(255) not null,
	constraint pk_member_id primary key (id)
)

-- 
-- Member CRUD (Create, Read, Update, Delete)
-- DML(Data Manipulation Language)
-- Create
insert into member
(email, name, password, register_date,address,phone)
values
('xxx@hybrid.com', '홍길동', '1234', '2015/12/21','서울','000-0100-0000')

-- Read
select * from member;

-- Update
update member
   set name = '홍순이2',
       password = '12349876' 
 where id = 5;
 
-- Delete
delete from member
 where id = 5;
 
--
-- City
--

-- selectAll() 
select id,
	   name,
	   countrycode,
	   district,
	   population
  from city;

CREATE TABLE `City` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8;
  
-- selectByCountryCode(String countryCode)  
select id,
	   name,
	   countrycode,
	   district,
	   population
  from city
 where countrycode = 'web' 
 
insert into city
(
	 name,
	 countrycode,
	 district,
	 population
)
values
(
	'java',
	'web',
	'programming',
	1000000
)
 
  
--
-- Country
--

select * from city

select * from country where code = 'KOR'

select ci.id,
	   ci.countrycode,
	   ci.name,
	   co.code,
	   co.name, 
	   co.headofstate
  from city ci inner join country co 
    on ci.countrycode = co.code
 where co.code = 'USA'   

select id,
	   name,
	   countrycode,
	   district,
	   population
  from city
 order by countrycode asc, name asc
 limit 40, 10
 -- start, length
 -- from 0
 
 
 
 
 
 
 
















