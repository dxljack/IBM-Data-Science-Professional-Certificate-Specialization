drop table INSTRUCTOR;
create table INSTRUCTOR (
	ins_id int NOT NULL,
	lastname varchar(60) NOT NULL,
	firstname varchar(60) NOT NULL,
	city varchar(60),
	country char(2)
	);
	
INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES (1, 'Ahuja', 'Rav', 'Toronto', 'CA');

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES (2, 'Chong', 'Raul', 'Toronto', 'CA'), (3, 'Vasudevan', 'Hima', 'Chicago', 'US' );

SELECT * FROM INSTRUCTOR;
SELECT firstname, lastname, country FROM INSTRUCTOR WHERE city = 'Toronto';

UPDATE INSTRUCTOR
SET city = 'Markham'
WHERE ins_id = 1;

DELETE FROM INSTRUCTOR WHERE ins_id = 2;

SELECT * FROM INSTRUCTOR;
