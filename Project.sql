CREATE DATABASE PIRESTERA2

create table flight
(
Fdate date,
flightNO int not null primary key,
DSNO int not null,
);
alter table flight add foreign key (DSNO) references Destination(DSNO);


CREATE TABLE PLANE(
PlaneNO int NOT NULL PRIMARY KEY,
planeType nvarchar(100) ,
VIP int,
Economy int,
Business int,
);

CREATE TABLE PLANE_FLIGHT
(
FlightNum int FOREIGN KEY REFERENCES FLIGHT(FlightNO),
PlaneNum int FOREIGN KEY REFERENCES PLANE(PlaneNO),
PRIMARY KEY(FlightNum,PlaneNum)
);

CREATE TABLE TICKET(

TicketId int NOT NULL PRIMARY KEY,
Class nvarchar(50),
tDate Date,
seatNo int,
FFlightNo int FOREIGN KEY REFERENCES FLIGHT(FlightNO),
PassportNoTicket int, /*FOREIGN KEY REFERENCES PASSENGER(PassportNo),*/
PaymentMethod nvarchar(50)
);
alter table TICKET add foreign key (PassportNoTicket) references PASSENGER(PassportNo);


CREATE TABLE DESTINATION(

DSNO int NOT NULL PRIMARY KEY,
departureCity nvarchar(100),
departureTime time,
arrivalTime time,
arrivalCity nvarchar(100),
Za_transit_id int, /*FOREIGN KEY REFERENCES TRANSIT(transit_id)*/
);
alter table DESTINATION add foreign key (Za_transit_id) references TRANSIT(transit_id);


CREATE TABLE TRANSIT
(
NoOfStaion int,
transit_id int PRIMARY KEY
);

CREATE TABLE transit_station
(
stationname nvarchar(50),
TtransitID int FOREIGN KEY REFERENCES TRANSIT(transit_id)
)


CREATE TABLE employee
(
Eid int NOT NULL PRIMARY KEY,
Efname nvarchar(20),
Elname nvarchar(20),
salary int,
age int,
Egender nvarchar(5),
jobtype nvarchar(50),
Ecity nvarchar(20),
Estreet nvarchar(25)
);

CREATE TABLE EphoneNo 
(
Empid int FOREIGN KEY REFERENCES employee(Eid),
EphoneNo_ int,
);

CREATE TABLE Emp_Flight
(
ZaEmpid int FOREIGN KEY REFERENCES employee(Eid),
ZaflightNO int FOREIGN KEY REFERENCES FLIGHT(FlightNO)
);

CREATE table PASSENGER
(
  PassportNo int PRIMARY key not null,
  Fname nvarchar(50) not null,
  Lname nvarchar(50) not null,
  DoB date not null,
  Gender nchar not null,
  Pstreet nvarchar(50) not null,
  Pcity nvarchar(50) not null,
  CC_Cvv int /*FOREIGN key REFERENCES CREDIT_CARD (Cvv)*/,
  PP_UserName nvarchar(50)/* FOREIGN key REFERENCES Paybal (UserName)*/,
)
alter table PASSENGER add foreign key (CC_Cvv) references CREDIT_CARD(Cvv);
alter table PASSENGER add foreign key (PP_UserName) references Paybal(UserName);


CREATE TABLE CREDIT_CARD
(
  Cvv int PRIMARY KEY ,
  ExpirationDate date not null,
  CreditCardID int not null
)

CREATE TABLE Paybal
(
  UserName nvarchar(50) PRIMARY KEY 
)

CREATE TABLE PassengerEmail
(
  PassportNoEmail int /*FOREIGN key REFERENCES PASSENGER (PassportNo)*/ ,
  Email nvarchar(50) not null
)
alter table PassengerEmail add foreign key (PassportNoEmail) references PASSENGER(PassportNo);


CREATE TABLE PassengerPhoneNo
(
  PassportNoPhone int /*FOREIGN key REFERENCES PASSENGER (PassportNo)*/ ,
  PhoneNo int not null
)
alter table PassengerPhoneNo add foreign key (PassportNoPhone) references PASSENGER(PassportNo);





insert into FLIGHT values
('2020-05-03',12345,1234),
('2020-05-03',23456,5678),
('2020-05-06',34567,9821),
('2020-05-04',45678,5468),
('2020-05-02',91234,3648);

insert into PLANE values
(56478, 'Turboprop',20,50,80),
(65212 , 'Piston' , 50,80,100),
(97450, 'Commutor Liners', 30, 70,90),
(45782 , 'Airbus' , 25 , 60 , 120),
(21354 , 'Concorde' , 35 , 85 , 110);

insert into DESTINATION values
(1234,'Egypt' , '9:00:00', '11:00:00','SaudiArabia',9486),
(5678 , 'SaudiArabia' , '10:00:00','12:00:00','Egypt',3821),
(9821,'Germany' , '14:00:00','7:00:00','Egypt',6193),
(5468,'America','5:00:00','1:00:00','England',9755),
(3648,'Russia','15:00:00','23:00:00','Canada',3349); 

insert into TRANSIT values
(025,9486),
(095,3821),
(047,6193),
(036,9755),
(034,3349);

insert into transit_station values
('cairo',9486),
('shrjah',3821),
('london',6193),
('ryad',9755),
('abodhaby',3349);

insert into TICKET values 
(24567,'VIP','2020-05-03',10,12345,11554488,'cash'),
(54781,'Economy','2020-05-03',30,23456,55998877,'paybal'),
(68942,'Business','2020-05-06',25,34567,66332255,'credit card'),
(46521,'Economy','2020-05-04',30,45678,44778811,'paybal'),
(34785,'VIP','2020-05-02',15,91234,44776611,'credit card');


insert into PLANE_FLIGHT values
(12345,56478),
(23456,65212),
(34567,97450),
(45678,45782),
(91234,21354);


insert into employee values
(123456,'ahmed','essam',20000,29,'male','pilot','cairo','eltahrer'),
(987654,'omar','sayed',20000,32,'male','pilot','helwan','saleh sobhy'),
(159753,'mohammed','mazen',15500,23,'male','host aviation','cairo','talat harb'),
(852369,'moaz','mahmud',16000,30,'male','host aviation','alexandia','elagami'),
(147896,'nour','ahmed',18500,27,'fmale','co-pilot','cairo','ahmed basha')


insert into EphoneNo values
(123456,0110895712),
(987654,0123598721),
(159753,0113498662),
(852369,0143015597),
(147896,0127146399)


insert into Emp_Flight values
(123456,12345),
(987654,23456),
(159753,34567),
(852369,45678),
(147896,91234);

INSERT INTO PassengerEmail (Email, PassportNoEmail)
VALUES	('mfawky07@gmail.com',11554488),
		('moaz.younis52@gmail.com',55998877),
		('omaralsabahy357@gmail.com',66332255),
		('nour123@gmail.com',44778811),
		('yorok0s.dou@gmail.com',44776611);

INSERT INTO Paybal (UserName)
VALUES	('mfawky'),
		('moaz.younis'),
		('omaralsabahy'),
		('yorok0s'),
		('nour123');

INSERT INTO CREDIT_CARD (Cvv,ExpirationDate , CreditCardID)
VALUES  (684,'2019-12-01',456789),
		(512,'2020-07-15',541275),
		(984,'2019-06-29',541372),
		(356,'2020-08-04',542326),
		(157,'2021-12-15',411785);

INSERT INTO PASSENGER ( PassportNo, Fname, Lname, DoB, Gender, Pstreet, Pcity, CC_Cvv, PP_UserName )
VALUES  (11554488,'mohamed','fawky','2001-8-4','m','maadi','cairo',684,'mfawky' ),
		(55998877,'moaz','younis','2000-5-12','m','mostafa kamel','alex',512,'moaz.younis' ),
		(66332255,'omar','mohamed','2001-3-15','m','hadayek el ahram','giza',984,'omaralsabahy' ),
		(44778811,'mohamed','ahmed','2001-6-8','m','faisal','haram',356,'yorok0s' ),
		(44776611,'nour','ahmed','2001-7-9','m','15-may','helwan',157,'nour123' );

INSERT INTO PassengerPhoneNo ( PassportNoPhone, PhoneNo)
VALUES  (11554488,01113202467),
		(55998877,01094288001),
		(66332255,01146213450),
		(44778811,01085469587),
		(44776611,01000065987);


SELECT * FROM FLIGHT;
SELECT * FROM PLANE;
SELECT * FROM PLANE_FLIGHT;
SELECT * FROM TICKET;
SELECT * FROM DESTINATION;
SELECT * FROM TRANSIT;
SELECT * FROM transit_station;
SELECT * FROM employee;
SELECT * FROM EphoneNo;
SELECT * FROM Emp_Flight;
SELECT * FROM PASSENGER;
SELECT * FROM CREDIT_CARD;
SELECT * FROM Paybal;
SELECT * FROM PassengerEmail;
SELECT * FROM PassengerPhoneNo;

select arrivalcity,departureCity from DESTINATION join flight on DESTINATION.DSNO=flight.DSNO where flightNO=12345;

select Efname,Elname from employee join Emp_Flight on Eid=ZaEmpid where 


select TicketId from Ticket join Passenger on Ticket.PassportNoTicket=Passenger.PassportNO where PassportNO =55998877