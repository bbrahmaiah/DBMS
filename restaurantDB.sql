CREATE database RestaurantDB

CREATE TABLE restaurant(
R_ID      INT              PRIMARY KEY,
R_Name    VARCHAR(50)      NOT NULL,
ADDRESS   VARCHAR(200)     NOT NULL,
contact   VARCHAR(15)      UNIQUE NOT NULL,
Rating    DECIMAL(6,1)     CHECK(Rating<=5)
)

DROP TABLE restaurant

SELECT * FROM restaurant

SELECT * FROM restaurant WHERE R_ID = 4

SELECT R_ID, R_Name, ADDRESS FROM restaurant WHERE R_ID = 5

INSERT INTO restaurant VALUES(5, 'Bilal', 'Ongole', '9878959540', 4.5)
INSERT INTO restaurant VALUES(4, 'Ismali', 'TPT', '9878959785', 3.3)
INSERT INTO restaurant VALUES(3, 'Minerva', 'Hyd', '9878959542', 4)
INSERT INTO restaurant VALUES(2, 'Miado', 'Peru', '9878959541', 5)
INSERT INTO restaurant VALUES(1, 'VGrand', 'Guntur', '9878959549', 3.2)

update restaurant set Rating = 3.9 WHERE R_ID = 4

CREATE TABLE users(
U_ID           INT             PRIMARY KEY,
Name           VARCHAR(50)     NOT NULL,
Phone_Number   VARCHAR(15)     UNIQUE NOT NULL,
Email          VARCHAR(100)    UNIQUE null,
ADDRESS        VARCHAR(100)    NOT NULL
)

DROP TABLE users

SELECT * FROM users

INSERT INTO users VALUES(101, 'Ballu', '9874561230', 'ballu.659@gamil.com', 'Ongole')
INSERT INTO users VALUES(102, 'Vivek', '9874561231', 'vivek.659@gamil.com', 'Banglore')
INSERT INTO users VALUES(103, 'Sanu', '9874561232', 'sanu.659@gamil.com', 'Prakasam')
INSERT INTO users VALUES(104, 'Roja', '9874561233', 'roja.659@gamil.com', 'Bombay')
INSERT INTO users VALUES(105, 'Sita', '9874561234', 'sita.659@gamil.com', 'Varanasi')
INSERT INTO users VALUES(106, 'lallu', '9874561235', 'lallu.659@gamil.com', 'TPT')
INSERT INTO users VALUES(107, 'veera', '9874561236', 'veera.659@gamil.com', 'Vijayawada')
INSERT INTO users VALUES(108, 'praveen', '9874561237', 'praveen.659@gamil.com', 'Eluru')
INSERT INTO users VALUES(109, 'srihari', '9874561238', 'srihari.659@gamil.com', 'Chennai')
INSERT INTO users VALUES(100, 'Harshith', '9874561220', 'harshith.659@gamil.com', 'Madars')

CREATE TABLE Food(
F_ID       INT           PRIMARY KEY,
F_Name     VARCHAR(100)  NOT NULL,
Type       VARCHAR(15)   CHECK((Type = 'Veg') OR (Type = 'Non-Veg') OR (Type = 'Both')),
Quantity   VARCHAR(20)   null,
Price      INT           CHECK(price>0) NOT NULL,
R_ID       INT,          foreign key(R_ID) references restaurant(R_ID)
)

DROP TABLE Food

SELECT * FROM Food

INSERT INTO food VALUES(20, 'Biriyani', 'Non-Veg', '500 gm', 550, 3)
INSERT INTO food VALUES(21, 'Curd Rice', 'Veg', '500 gm', 120, 2)
INSERT INTO food VALUES(22, 'South Indian Meals', 'Veg', null, 350, 1)
INSERT INTO food VALUES(23, 'Chicken Thali', 'Non-Veg', '1500 gm', 999, 4)
INSERT INTO food VALUES(24, 'Butter Chicken', 'Non-Veg', '1000 gm', 550, 2)
INSERT INTO food VALUES(25, 'Dosa', 'Veg', null, 80, 3)
INSERT INTO food VALUES(26, 'Paneer Tikka Masala', 'Veg', '1000 gm', 750, 5)
INSERT INTO food VALUES(27, 'Nellore Chepalu Pulusu', 'Non-Veg', '750 gm', 600, 3)
INSERT INTO food VALUES(28, 'Bisi Bele Bhath', 'Veg', null, 420, 1)
INSERT INTO food VALUES(29, 'Ragi Mudde with Soppu Saaru', 'Veg', null, 300, 3)



CREATE TABLE Staff(
Staff_ID       INT           PRIMARY KEY,
Name           VARCHAR(100)  NOT NULL,
Orders         INT,
Position       VARCHAR(50)   NOT NULL,
salary         INT,
R_ID           INT           foreign key (R_ID) references restaurant (R_ID)
)

DROP TABLE Staff

SELECT * FROM Staff

INSERT INTO Staff VALUES(99, 'Raju', 5, 'Waiter', 0, 2)
INSERT INTO Staff VALUES(100, 'sreenu', 5, 'Cheif', 0, 5)
INSERT INTO Staff VALUES(101, 'Rajesh', 5, 'Cashier', 0, 1)
INSERT INTO Staff VALUES(102, 'Charan', 5, 'Cleaner', 4, 3)
INSERT INTO Staff VALUES(103, 'Peeru', 5, 'Waiter', 0, 2)
INSERT INTO Staff VALUES(104, 'Hemanth', 5, 'Delivery Executive', 1, 2)
INSERT INTO Staff VALUES(105, 'Ramesh', 5, 'Receptionist', 4, 4)
INSERT INTO Staff VALUES(106, 'Ramana', 5, 'Manager', 7, 2)
INSERT INTO Staff VALUES(107, 'Venkat', 5, 'Waiter', 2, 3)
INSERT INTO Staff VALUES(108, 'Ramu', 5, 'Manager', 5, 2)



CREATE TABLE Payment(
Payment_ID       INT    PRIMARY KEY,
Amount           INT    NOT NULL,
Payment_type     VARCHAR(50) NOT NULL CHECK(Payment_type In('UPI', 'Cash', 'Card')),
Payment_Date     date,
Discount         INT,
U_ID             INT,   foreign key(U_ID) references users(U_ID)
)

DROP TABLE Payment

SELECT * FROM Payment

INSERT INTO Payment VALUES(11, 1500, 'Cash', '2026-09-12', 10, 101)
INSERT INTO Payment VALUES(12, 1000, 'UPI', '2026-08-12', 10, 102)
INSERT INTO Payment VALUES(13, 500, 'Card', '2027-08-12', 10, 103)
INSERT INTO Payment VALUES(14, 2000, 'UPI', '2026-08-12', 10, 104)
INSERT INTO Payment VALUES(15, 1550, 'Cash', '2026-08-30', 10, 105)
INSERT INTO Payment VALUES(16, 2200, 'UPI', '2027-06-12', 10, 106)
INSERT INTO Payment VALUES(17, 2256, 'Cash', '2026-08-12', 10, 107)
INSERT INTO Payment VALUES(18, 3694, 'Card', '2026-09-12', 10, 108)
INSERT INTO Payment VALUES(19, 999, 'UPI', '2026-07-13', 10, 109)
INSERT INTO Payment VALUES(20, 1500, 'Cash', '2026-08-12', 10, 100)


SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

SELECT * FROM restaurant
SELECT * FROM users
SELECT * FROM Food
SELECT * FROM Staff
SELECT * FROM Payment

update restaurant set R_Name = 'Chitti Babu Biriyani' where R_ID = 2
update restaurant set address = 'Nellore' where R_ID = 2
update restaurant set rating = 4.5 where R_ID = 3
update staff set staff_ID = 9 where staff_ID = 99

update restaurant set address = 'Nellore' where R_ID = 2

