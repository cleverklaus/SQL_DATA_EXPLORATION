CREATE table author (
			author_id CHAR(2) PRIMARY KEY NOT NULL,
			lastname VARCHAR(15) NOT NULL,
			firstname VARCHAR(15) NOT NULL,
			email VARCHAR(40),
			city VARCHAR(15),
			country CHAR(2));
				     
--Primary key avoid duplication of values, in this case ID--
				     
CREATE table COUNTRY(
		ID integer PRIMARY KEY NOT NULL,
		CCODE char(2),
		NAME varchar(60)
		);	
				     
--SELECT STATEMENT--

	select book_id, title from Book
	where book_id= 'B1';
				     
	select * from COUNTRY ;
	select * from COUNTRY where ID < 5 ;
	select * from COUNTRY where CCODE = 'CA';				     
				     
				     
--COUNT, DISTINCT, LIMIT Known as "Built in functions"--
--Distinct avoid duplicate retrievals--
--limit, limits the outcome to the number of rows you specify--
				     
	select count(country) from MEDALS
	where COUNTRY = 'CA';
				     
	select distinct country from MEDALS
	where MEDALTYPE = 'GOLD';
	
	select * from MEDALS
	where YEAR = 2018 limit 5;	
				     
--INSERT STMT--
				     
insert into INSTRUCTOR (
			ins_id, lastname, firstname, city, country)
			values(1, 'Ahuja', 'Rav', 'Toronto', 'CA');				     
				     
				     
--UPDATE STMT, DATA into the table can be AlTERED with UPDATE STMT--
--Without specifying the where clause, all rows in table will be change--
				     
UPDATE INSTRUCTOR SET city = 'Markham' where  ins_id = 1; 	
				     
--DELETE STMT--
DELETE from INSTRUCTOR where ins_id=2;				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
