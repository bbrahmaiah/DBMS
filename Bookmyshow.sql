USE BookMyshow

CREATE TABLE users
(
U_ID            int         primary key,
Name            varchar(20) not null,
Phone_Number    varchar(20) unique,
Age             int,
Gender          char(1) check(Gender = 'M' or Gender = 'F')
)

DROP TABLE users
SELECT * FROM users
INSERT INTO users VALUES(16, 'Ballu', '6536', 19, 'M')
INSERT INTO users VALUES(2, 'John', '65306', 20, 'M')
INSERT INTO users VALUES(6, 'Roja', '653123426', 18, 'F')
INSERT INTO users VALUES(18, 'sita', '6589936', 26, 'F')
INSERT INTO users VALUES(8, 'praveen', '6511116', 20, 'M')
INSERT INTO users VALUES(99, 'Veera', '65399', 45, 'M')
INSERT INTO users VALUES(12, 'Shobha', '65387', 30, 'F')
INSERT INTO users VALUES(13, 'Banu', '655666', 23, 'F')
INSERT INTO users VALUES(32, 'lallu', '6532226', 19, 'M')
INSERT INTO users VALUES(39, 'karthik', '6532586', 23, 'M')


CREATE TABLE movies
(
Movie_ID      int          primary key,
Movie_Name    varchar(100) not null,
Director      varchar(50)  not null,
Genere        Varchar(100),
language      varchar(50),
Duration_Min     int check(Duration_Min>0)
)

DROP TABLE movies
SELECT * FROM movies

INSERT INTO movies VALUES(11, 'Bombay','Mani Ratnam', 'Romance, Drama, and Musical', 'Telugu', 180)
INSERT INTO movies VALUES(12, 'Roja','Mani Ratnam', 'Romance, Drama, and Musical', 'Tamli', 182)
INSERT INTO movies VALUES(13, 'Jai Bhim','TJ Gnanavel', 'Crime/Thriller', 'Telugu and Tamli', 164)
INSERT INTO movies VALUES(14, 'Okkadu','Gunasekhar', 'Action', 'Telugu', 175)
INSERT INTO movies VALUES(15, 'Murari','Krishna Vamshi', 'Family/Drama', 'Telugu and Tamil', 162)
INSERT INTO movies VALUES(16, 'Businessman','Puri','Action/Crime', 'Telugu', 160)
INSERT INTO movies VALUES(17, 'Dhurandhar','Aditya Dhar', 'Spy action thriller', 'Hindi/Telugu/Tamli', 190)
INSERT INTO movies VALUES(18, 'Mayabazar','K. V. Reddy', 'Mythological/Fantasy', 'Telugu', 185)
INSERT INTO movies VALUES(19, 'Spider-Man','Marc Webb', 'Superhero action/Sc-Fi', 'English', 180)
INSERT INTO movies VALUES(10, 'Kill','Nikhil Nagesh Bhat', 'Action', 'Hindi/Telugu', 180)


CREATE TABLE Theaters(
Theater_ID      int    primary key,
Theater_Name    varchar(50) not null,
city            varchar(50) not null,
Screens         int,
Rating          decimal(2,1) check(rating between 0.0 and 5.0)
)

DROP TABLE Theaters

SELECT * FROM Theaters

INSERT INTO Theaters VALUES(1, 'Gorantla', 'Ongole', 3, 4)
INSERT INTO Theaters VALUES(2, 'PVP', 'Vijayawada', 6, 3.5)
INSERT INTO Theaters VALUES(3, 'Ravi Priya', 'Ongole', 4, 3.6)
INSERT INTO Theaters VALUES(4, 'AMB', 'HYD', 6, 5)
INSERT INTO Theaters VALUES(5, 'INOX', 'Visakhapatnam ', 4, 4)
INSERT INTO Theaters VALUES(6, 'PVR', 'Guntur', 5, 3.9)
INSERT INTO Theaters VALUES(7, 'Krishna', 'Ongole', 4, 4.5)
INSERT INTO Theaters VALUES(8, 'NTR', 'Eluru', 2, 4.6)
INSERT INTO Theaters VALUES(9, 'AAA', 'HYD', 6, 4.8)
INSERT INTO Theaters VALUES(10, 'ART', 'HYD', 5, 5)


CREATE TABLE shows
(
Show_ID      int     primary key,
Movie_Name   varchar(50)  not null,
Theater_Name varchar(60)  not null,
Show_Date    date    not null,
Ticket_price decimal(6,2) check(Ticket_price>0)
)

DROP TABLE shows

SELECT * FROM shows

INSERT INTO shows VALUES(01, 'Bombay', 'AMB', '2026-06-30', 560)
INSERT INTO shows VALUES(02, 'Roja', 'Gorantla', '2026-05-30', 200)
INSERT INTO shows VALUES(03, 'Murari', 'PVP', '2026-06-16', 150)
INSERT INTO shows VALUES(04, 'KGF', 'Ravi Priya', '2026-06-30', 250)
INSERT INTO shows VALUES(05, '300', 'AMB', '2026-09-10', 560)
INSERT INTO shows VALUES(06, 'Bro', 'Krishna', '2026-10-12', 200)
INSERT INTO shows VALUES(07, 'Spider-Man', 'NTR', '2026-01-16', 120)
INSERT INTO shows VALUES(08, 'Titanic', 'PVR', '2026-02-19', 170)
INSERT INTO shows VALUES(09, 'Mayabazar', 'INOX', '2026-03-30', 560)
INSERT INTO shows VALUES(11, 'Kill', 'ART', '2026-08-18', 200)

CREATE TABLE Bookings(
Booking_ID       int    primary key,
U_ID             int    not null,
Movie_ID         int    not null,
Theater_ID       int    not null,
Movie_Name       varchar(50)  not null,
Booking_Date     date,
Tickets         int  check(Tickets between 1 and 10)
)

DROP TABLE Bookings

SELECT * FROM Bookings

INSERT INTO Bookings VALUES(21, 16, 11, 4, 'Bombay', '2026-06-30', 6)
INSERT INTO Bookings VALUES(22, 2, 12, 1, 'Roja', '2026-05-30', 4);
INSERT INTO Bookings VALUES(23, 6, 13, 2, 'Jai Bhim', '2026-06-15', 3);
INSERT INTO Bookings VALUES(24, 18, 14, 3, 'Okkadu', '2026-07-01', 2);
INSERT INTO Bookings VALUES(25, 8, 15, 5, 'Murari', '2026-07-10', 5);
INSERT INTO Bookings VALUES(26, 99, 16, 6, 'Businessman', '2026-07-20', 1);
INSERT INTO Bookings VALUES(27, 12, 17, 7, 'Dhurandhar', '2026-08-05', 4);
INSERT INTO Bookings VALUES(28, 13, 18, 8, 'Mayabazar', '2026-08-12', 2);
INSERT INTO Bookings VALUES(29, 32, 19, 9, 'Spider-Man', '2026-08-18', 7);
INSERT INTO Bookings VALUES(30, 39, 10, 10, 'Kill', '2026-08-25', 3);



CREATE TABLE Payments(
P_ID    int    primary key,
U_ID   int     not null,
Payment_Method   varchar(100)  check(Payment_Method IN('UPI', 'Credit Card', 'Debit Card', 'Net Banking')),
Payment_Date     date,
Amount           decimal(6,2) check(Amount>0)
)

DROP TABLE Payments

SELECT * FROM Payments

INSERT INTO Payments VALUES(101, 16, 'UPI', '2026-06-30', 560.16)
INSERT INTO Payments VALUES(102, 2, 'Credit Card', '2026-05-30', 200)
INSERT INTO Payments VALUES(103, 6, 'Debit Card', '2026-06-15', 150)
INSERT INTO Payments VALUES(104, 18, 'UPI', '2026-07-01', 250.12)
INSERT INTO Payments VALUES(105, 8, 'Net Banking', '2026-07-10', 560.30)
INSERT INTO Payments VALUES(106, 99, 'Credit Card', '2026-07-20', 200.36)
INSERT INTO Payments VALUES(107, 12, 'UPI', '2026-08-05', 120.16)
INSERT INTO Payments VALUES(108, 13, 'Debit Card', '2026-08-12', 170.15)
INSERT INTO Payments VALUES(109, 32, 'Net Banking', '2026-08-18', 560)
INSERT INTO Payments VALUES(110, 39, 'UPI', '2026-08-25', 200)



USE BookMyShow;

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

SELECT * FROM Users;