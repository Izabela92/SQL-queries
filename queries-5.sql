
-- create
CREATE TABLE LIBRARY(
  book_number INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR (50) NOT NULL,
  author VARCHAR (50) NOT NULL,
  year INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  price INTEGER NOT NULL
);

-- insert
INSERT INTO LIBRARY VALUES (1, 'Prisoners of geography', 'Tim Marshall', '2015', '1', '13');
INSERT INTO LIBRARY VALUES (2, '48 laws of power', 'Robert Greene', '2002', '5', '9');
INSERT INTO LIBRARY VALUES (3, 'The art of thinking clearly', 'Rolf Dobelli', '2013', '10', '7');
INSERT INTO LIBRARY VALUES (4, '12 rules for life', 'Jordan B. Peterson', '2018', '3', '15');
INSERT INTO LIBRARY VALUES (5, 'Certified Tester ISTQB',  'Adam Roman', '2022', '5', '20');
INSERT INTO LIBRARY VALUES (6, 'The richest man in Babylon', 'George S. Clason', '1926', '3', '13');
INSERT INTO LIBRARY VALUES (7, 'The art of software testing', 'Glenford J. Myers', '1979', '5', '80');
INSERT INTO LIBRARY VALUES (8, 'Software Testing', 'Ron Patton', '2005', '7', '30');

-- select 
SELECT * FROM LIBRARY;
SELECT author FROM LIBRARY;
SELECT DISTINCT quantity FROM LIBRARY;

-- where
SELECT * FROM LIBRARY WHERE year = '2002'; 
SELECT * FROM LIBRARY WHERE  NOT year = '2022'; 
SELECT * FROM LIBRARY WHERE price = '15' and  year ='2018';
SELECT * FROM LIBRARY WHERE quantity = '5' or price = '7';

-- order by
SELECT * FROM LIBRARY order by price;
SELECT * FROM LIBRARY order by author desc;
SELECT * FROM LIBRARY order by author, title;

-- null
SELECT * FROM LIBRARY WHERE price  is NOT NULL;

-- update
UPDATE LIBRARY SET quantity = '3';
UPDATE LIBRARY SET quantity = '3' WHERE price = '30';
UPDATE LIBRARY SET quantity = '3', price = '30' WHERE year = '2005';

-- functions
SELECT min(price) FROM LIBRARY;
SELECT count(*) FROM LIBRARY WHERE price = '30';
SELECT avg(price) FROM LIBRARY;
SELECT sum(price) FROM LIBRARY;

-- like
SELECT * FROM LIBRARY WHERE author like 'a%';
SELECT * FROM LIBRARY WHERE author like '%a';
SELECT * FROM LIBRARY WHERE author like '%a%';
SELECT * FROM LIBRARY WHERE author like 'r%n';
SELECT * FROM LIBRARY WHERE author  NOT like 'a%';

-- wildcards
SELECT * FROM LIBRARY WHERE author like '_o%';
SELECT * FROM LIBRARY WHERE author like '[arj]%';
SELECT * FROM LIBRARY WHERE author like '[a-j]%';
SELECT * FROM LIBRARY WHERE author like '[!arj]%';

-- in
SELECT * FROM LIBRARY WHERE year in ('2005', '2018');
SELECT * FROM LIBRARY WHERE year  NOT in ('2005', '2018');

-- between
SELECT * FROM LIBRARY WHERE price between 2 and 30;
SELECT * FROM LIBRARY WHERE price  NOT between 2 and 30;
SELECT * FROM LIBRARY WHERE year between '1926 ' and  '2002';

-- group by 
SELECT count(author), quantity FROM LIBRARY group by quantity;
SELECT count(author), quantity FROM LIBRARY group by quantity order by count(author) desc;






-- create second table
CREATE TABLE LIBRARY2(
  book_number INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR (50) NOT NULL,
  author VARCHAR (50) NOT NULL,
  year INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  price INTEGER NOT NULL
);

-- insert
INSERT INTO LIBRARY2 VALUES (1, 'Software Testing: A Craftsman’s Approach', 'Paul C. Jorgensen', '1995', '1', '13');
INSERT INTO LIBRARY2 VALUES (2, 'How to break software', 'James Whittaker', '2002', '5', '9');
INSERT INTO LIBRARY2 VALUES (3, 'Software testing techniques', 'Boris Beizer', '1982', '10', '7');
INSERT INTO LIBRARY2 VALUES (4, 'Agile testing', 'Lisa Crispin', '2008', '3', '15');

-- select
SELECT * FROM LIBRARY2;


-- join
SELECT * FROM LIBRARY left join LIBRARY2 on LIBRARY.price=LIBRARY2.price;
SELECT * FROM LIBRARY inner join LIBRARY2 on LIBRARY.price=LIBRARY2.price;
SELECT * FROM LIBRARY right join LIBRARY2 on LIBRARY.price=LIBRARY2.price;