CREATE database Restaurant

CREATE TABLE restaurant(
R_ID      INT              PRIMARY KEY,
R_Name    VARCHAR(50)      NOT NULL,
ADDRESS   VARCHAR(200)     NOT NULL,
contact   VARCHAR(15)      UNIQUE NOT NULL,
Type      VARCHAR(15)      NOT NULL,
Rating    DECIMAL(6,1)     CHECK(Rating<=5)
)

DROP TABLE restaurant

SELECT * FROM restaurant

INSERT INTO restaurant VALUES(5, 'Bilal', 'Rangampeta', '9878959540','Veg', 4.5)
INSERT INTO restaurant VALUES(4, 'Ismali', 'TPT', '9878959785','Non - Veg', 3.3)
INSERT INTO restaurant VALUES(3, 'Minerva', 'Hyd', '9878959542','Both', 4.5)
INSERT INTO restaurant VALUES(101, 'Miado', 'Peru', '9878959541','veg', 5)
INSERT INTO restaurant VALUES(107, 'Taj', 'Guntur', '9878959549','Non-Veg', 4.5)

UPDATE Restaurant SET ADDRESS = 'HYD' WHERE R_ID = 101
--101 Miado HYD 9878959541 NON-Veg 4.5

Update Restaurant set Rating = 4.6 where R_ID = 107
-- 107 Taj Guntur 9878959549 Non-Veg 4.6

update Restaurant set Type = 'Veg' where R_ID = 107
-- 107 Taj Guntur 9878959549 Non-Veg 4.6

SELECT Restaurant from type = 'Veg' 


CREATE TABLE customer(
U_ID           INT             PRIMARY KEY,
Name           VARCHAR(50)     NOT NULL,
Phone_Number   VARCHAR(15)     UNIQUE NOT NULL,
Email          VARCHAR(100)    UNIQUE null,
ADDRESS        VARCHAR(100)    NOT NULL
)

DROP TABLE customer

SELECT * FROM customer

INSERT INTO customer VALUES(101, 'Ballu', '9874561230', 'ballu.659@gamil.com', 'Ongole')
INSERT INTO customer VALUES(102, 'Vivek', '9874561231', 'vivek.659@gamil.com', 'Banglore')
INSERT INTO customer VALUES(103, 'Sanu', '9874561232', 'sanu.659@gamil.com', 'Prakasam')
INSERT INTO customer VALUES(104, 'Roja', '9874561233', 'roja.659@gamil.com', 'Bombay')
INSERT INTO customer VALUES(210, 'Sita', '9874561234', 'sita.659@gamil.com', 'Varanasi')
INSERT INTO customer VALUES(106, 'lallu', '9874561235', 'lallu.659@gamil.com', 'TPT')
INSERT INTO customer VALUES(107, 'veera', '9874561236', 'veera.659@gamil.com', 'Vijayawada')
INSERT INTO customer VALUES(108, 'praveen', '9874561237', 'praveen.659@gamil.com', 'Eluru')
INSERT INTO customer VALUES(109, 'srihari', '9874561238', 'srihari.659@gamil.com', 'Chennai')
INSERT INTO customer VALUES(100, 'Harshith', '9874561220', 'harshith.659@gamil.com', 'Madars')

UPDATE customer
SET Email = 'vivek.kumarch@gmail.com',
    Address = 'Ongole'
WHERE Name = 'Vivek';

--102 vivek 98975842888 vivek.kumarch@gmail.com  Ongole



CREATE TABLE Food(
F_ID       INT           PRIMARY KEY,
F_Name     VARCHAR(100)  NOT NULL,
Type       VARCHAR(15)   NOT NULL,
Quantity   INT   null,
Price      INT           CHECK(price>0) NOT NULL,
R_ID       INT,          foreign key(R_ID) references restaurant(R_ID)
)

DROP TABLE Food

SELECT * FROM Food

INSERT INTO food VALUES(20, 'Biriyani', 'Non-Veg', 1, 550, 3)
INSERT INTO food VALUES(21, 'Curd Rice', 'Veg', 1, 120, 101)
INSERT INTO food VALUES(22, 'Burger', 'veg', 2, 2550, 107)
INSERT INTO food VALUES(305, 'South Indian Meals', 'Veg', null, 399, 107)
INSERT INTO food VALUES(23, 'Chicken Thali', 'Fast Food', 2, 350, 4)
INSERT INTO food VALUES(24, 'Butter Chicken', 'Non-Veg', 3, 550, 101)
INSERT INTO food VALUES(25, 'Pizza', 'Non-Veg', 2, 250, 5)
INSERT INTO food VALUES(26, 'Paneer Tikka Masala', 'Fast Food', 2, 399, 5)
INSERT INTO food VALUES(27, 'Nellore Chepalu Pulusu', 'Non-Veg', 3, 600, 3)
INSERT INTO food VALUES(28, 'Bisi Bele Bhath', 'Veg', null, 420, 107)
INSERT INTO food VALUES(29, 'Ragi Mudde with Soppu Saaru', 'Veg', null, 300, 3)

update food set quantity = 10 where F_ID = 305 or price = 399
-- 305 southindia meals veg 10 399 107

update food set Type = 'Fast Food' where type = 'pizza'

Delete food where F_Name = 'Burger'
-- 22, 'Burger', 'veg', 2, 2550, 107


CREATE TABLE Staff(
Staff_ID       INT           PRIMARY KEY,
Name           VARCHAR(100)  NOT NULL,
Orders         INT,
Position       VARCHAR(50)   NOT NULL,
Rating         INT,
salary         VARCHAR(10),
R_ID           INT           foreign key (R_ID) references restaurant (R_ID)
)

DROP TABLE Staff

SELECT * FROM Staff

INSERT INTO Staff VALUES(99, 'Raju', 201, 'Waiter', 4.6, '15000', 101)
INSERT INTO Staff VALUES(100, 'sreenu', 5, 'Cheif',5, '20000', 5)
INSERT INTO Staff VALUES(101, 'Rajesh', 255, 'Cashier',2, '15000', 107)
INSERT INTO Staff VALUES(102, 'Suresh', 30, 'Cleaner', 1, '10000', 3)
INSERT INTO Staff VALUES(103, 'Peeru', 22, 'Waiter',1, '15000', 101)
INSERT INTO Staff VALUES(104, 'Hemanth', 223, 'Delivery Executive',4.6, '20000', 101)
INSERT INTO Staff VALUES(105, 'Ramesh', 5, 'Receptionist',3, '20000', 4)
INSERT INTO Staff VALUES(106, 'Ramana', 5, 'Manager',2, '35000', 101)
INSERT INTO Staff VALUES(107, 'Venkat', 5, 'Waiter',4, '15000', 3)
INSERT INTO Staff VALUES(108, 'Ramu', 222, 'Manager',4.5, '35000', 101)

delete staff where Name = 'Suresh' AND Rating<2
-- Delete 102, 'Suresh', 30, 'Cleaner', 1, '10k', 3


CREATE TABLE Payment(
Payment_ID       INT    PRIMARY KEY,
Amount           INT    NOT NULL,
Payment_type     VARCHAR(50) NOT NULL CHECK(Payment_type In('UPI', 'Cash', 'Card')),
Payment_Date     date,
Discount         INT,
U_ID             INT,   foreign key(U_ID) references customer(U_ID)
)

DROP TABLE Payment

SELECT * FROM Payment

INSERT INTO Payment VALUES(505, 1500, 'Cash', '2026-09-12', 10, 101)
INSERT INTO Payment VALUES(12, 1000, 'UPI', '2026-08-12', 10, 102)
INSERT INTO Payment VALUES(13, 500, 'Card', '2027-08-12', 10, 103)
INSERT INTO Payment VALUES(14, 2000, 'UPI', '2026-08-12', 10, 104)
INSERT INTO Payment VALUES(15, 1550, 'Cash', '2026-08-30', 10, 210)
INSERT INTO Payment VALUES(16, 2200, 'UPI', '2027-06-12', 10, 106)
INSERT INTO Payment VALUES(501, 2256, 'Cash', '2026-08-12', 10, 107)
INSERT INTO Payment VALUES(18, 3694, 'Card', '2026-09-12', 10, 108)
INSERT INTO Payment VALUES(309, 999, 'UPI', '2026-07-13', 10, 109)
INSERT INTO Payment VALUES(20, 1500, 'Cash', '2026-08-12', 10, 100)

update payment set Discount = 15 where Payment_ID = 501
-- 501	2256	Cash	2026-08-12	15	107

Delete payment where Payment_ID = 505 AND Payment_type = 'cash'
-- delete 501, 2256, 'Cash', '2026-08-12', 10, 107



SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

SELECT * FROM restaurant
SELECT * FROM customer
SELECT * FROM Food
SELECT * FROM Staff
SELECT * FROM Payment

update restaurant set R_Name = 'Chitti Babu Biriyani' where R_ID = 2
update restaurant set address = 'Nellore' where R_ID = 2
update restaurant set rating = 4.5 where R_ID = 3
update staff set staff_ID = 9 where staff_ID = 99

update restaurant set address = 'Nellore' where R_ID = 2

select * from restaurant


0. UPDATE Restaurant SET ADDRESS = 'HYD' WHERE R_ID = 101
--101 Miado HYD 9878959541 NON-Veg 4.5

1. Update Restaurant set Rating = 4.6 where R_ID = 107
-- 107 Taj Guntur 9878959549 Non-Veg 4.6

2. update Restaurant set Type = 'Veg' where R_ID = 107
-- 107 Taj Guntur 9878959549 Non-Veg 4.6


3. UPDATE customer
     SET Email = 'bbrahmaiah99.t@gmail.com',
     ADDRESS = 'Kedarnath'
   WHERE Name = 'Ballu';

--101	Ballu	9874561230	bbrahmaiah99.t@gmail.com	Kedarnath

4. UPDATE Food
   SET Quantity = '10'
   WHERE F_ID = 305 OR Price = 399;

--305	South Indian Meals	Veg	10	399	107
--Paneer Tikka Masala	Fast Food	10	399	5
 
select * from Payment

5. UPDATE Payment
   SET Discount = 15
   WHERE Payment_ID = 501

--501	2256	Cash	2026-08-12	15	107

select * from Food

6. UPDATE Food
   SET Type = 'Fast Food'
   WHERE F_Name = 'Pizza'

--25	Pizza	Fast Food	2	250	5


7. UPDATE restaurant
   SET R_Name = 'Taj'
   WHERE R_ID = 107

--107	Taj	Guntur	9878959549	Veg	4.6


8. UPDATE Staff
   SET salary = 29000
     WHERE R_ID IN (
    SELECT R_ID FROM restaurant WHERE Rating > 4.6
    ) AND Orders > 200

--99	Raju	201	Waiter	4	29000	101
--104	Hemanth	223	Delivery Executive	4	29000	101
--104	Hemanth	223	Delivery Executive	4	29000	101


9. UPDATE Payment
   SET Amount = 1100,
       Discount = 20
   WHERE Payment_ID = 309

--309	1100	UPI	2026-07-13	20	109

10. DELETE FROM Payment
    WHERE Payment_ID = 505 AND Payment_type = 'Cash'

--505 225 Cash 2026-12-06 10 107

11. DELETE FROM Food
    WHERE F_Name = 'Burger'

--22 Burger Fast Food 1 250 3


12. DELETE FROM Staff
    WHERE Name = 'Suresh'

--102, 'Suresh', 30, 'Cleaner', 1, '10000', 3


13. DELETE FROM Staff
    WHERE Orders < 15 OR R_ID IN (
    SELECT R_ID FROM restaurant WHERE Rating < 2
    )

-- 100	sreenu	5	Cheif	5	20000	5
--105	Ramesh	5	Receptionist	3	20000	4
--106	Ramana	5	Manager	2	35000	101
--107	Venkat	5	Waiter	4	15000	3


14. SELECT * FROM restaurant
    WHERE R_Name = 'Veg'

--107	Veg	Guntur	9878959549	Veg	4.5


15. SELECT contact FROM restaurant
    WHERE ADDRESS = 'Rangampeta'

--9878959540


16. SELECT * FROM restaurant
    WHERE Rating = 4.5

--3	Minerva	Hyd	9878959542	Both	4.5
--5	Bilal	Rangampeta	9878959540	Veg	4.5
--107	Veg	Guntur	9878959549	Veg	4.5


17. SELECT Email FROM customer
    WHERE U_ID = 210

--sita.659@gamil.com


18. SELECT F_Name, Price, Quantity FROM Food

--Biriyani	550	1
--Curd Rice	120	1
--Chicken Thali	250	2
--Butter Chicken	550	3
--Pizza	250	2
--Paneer Tikka Masala	250	2
--Nellore Chepalu Pulusu	600	3
--Bisi Bele Bhath	420	NULL
--Ragi Mudde with Soppu Saaru	300	NULL
--South Indian Meals	399	10

19. SELECT * FROM Food
    WHERE Type = 'Fast Food' AND Price > 299

--23	Chicken Thali	Fast Food	2	350	4
--26	Paneer Tikka Masala	Fast Food	2	399	5


20. SELECT Payment_type FROM Payment
    WHERE Payment_ID = 16

--UPI