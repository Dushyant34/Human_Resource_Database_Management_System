create database Human_Resources_Data;

use Human_Resources_Data;

create table `Departments` (
  `Department_ID` int NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Department_ID`));

Insert into `Departments` (`Department_ID`, `Department_Name`) VALUES
('1','Accounts and Finance'),
('2','HR'),
('3','Sales and marketing'),
('4','Technical Training'),
('5','Research'),
('6','Product development'),
('7','Operations'),
('8','Testing'),
('9','Technical Support'),
('10','Customer Support'),
('11','Admin department'),
('12','Security & transport');

select * from Departments;

create table `Employee` (
  `Employe_ID` int NOT NULL DEFAULT '0' PRIMARY KEY,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone_No` varchar(50) DEFAULT NULL,
  `Hire_Date` date NOT NULL,
  `Salary` decimal(8,2) DEFAULT NULL,
  `Department_ID` decimal(6,0) NOT NULL,
  `Project_Name` varchar(50) NOT NULL,
  `Role_ID` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  UNIQUE KEY `EMP_EMAIL_UK` (`Email`),
  KEY `EMP_PhoneNo_IX` (`Phone_No`),
  KEY `EMP_Project_IX` (`Project_Name`),
  KEY `EMP_Role_IX` (`Role_ID`));

Insert into `Employee` (`Employe_ID`, `First_Name`, `Last_Name`, `Email`, `Phone_No`, `Hire_Date`, `Salary`, `Department_ID`, `Project_Name`, `Role_ID`, `DOB`, `Address`, `Age`) VALUES
('102', 'Lex', 'Dehaan', 'LDEHAAN', '515.123.4569', '1987-06-19','17000.00', '1','Frontend Development','4','1987-06-05','Boston','45'), 
('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', '9000.00', '7','Desktop Development','1','1987-06-01','Chicago','36'), 
('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21','6000.00','4','Fullstack Development','3','1987-06-06','Austin','37'), 
('105', 'David', 'justin', 'DAUSTIN', '590,423.4569', '1987-06-22','4800.00','9','Cloud Computing','5','1987-06-29','Dallas','56'),
('106', 'Vall', 'Pataballa', 'VPATABAL', '598.423.4568', '1987-06-23', '4800.00', '12','Frontend Development','2','1987-06-17','Las Vegas','34'),
('107', 'Diana', 'Lorentz', 'DLORENTZ', '598.423.5567', '1987-06-24','4200.00', '10','Database Development','4','1987-06-22','Denver','31'),
('110', 'John', 'Chen', 'CHEN', '515.124.4269', '1987-06-27','8200.08', '2','Website Development','8','1987-06-04','Los Angeles','45'),
('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', '7700.00', '7','Backend Development','12','1987-06-16','Denver','42'),
('112', 'Jose Ranuel', 'Uran', 'URAN', '515.124.4469', '1987-06-29', '7800.00', '8','Security Engineering','1','1987-06-23','Dallas','36'),
('113', 'Luis', 'Popp', 'POPP', '515.124.4567', '1987-06-30','6900.00', '11','Fullstack Development','7','1987-06-15','NewYork','49'),
('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', '11000.00', '9','Frontend Development','12','1987-06-14','Boston','34'),
('115', 'Alexander','hoo', 'AKHOO', '515.127.4562', '1987-07-22', '3100.00', '8','Website Development','11','1987-06-21','Austin','30'), 
('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', '2900.00', '6','Database Development','6','1987-06-07','Chicago','46'), 
('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-14', '2800.00', '3','Backend Development','12','1987-06-24','Washington','41'), 
('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', '2600.00', '7','Cloud Computing','8','1987-07-29','Dallas','37'), 
('119', 'Karen', 'Colmenares', 'XCOLMENA', '515.127.4566', '1987-07-06', '2500.00', '1','Cloud Computing','1','1987-06-13','Denver','37'),
('120', 'Matthew', 'Weiss', 'WEISS', '650.123.1234', '1987-8-17', '8000.00', '10','Security Engineering','5','1987-06-19','NewYork','36'),
('121', 'Aden', 'Fripp', 'AFRIPP', '658.123.2234', '1987-07-08', '8200.00', '5','Desktop Development','3','1987-06-20','Chicago','45'), 
('122', 'Payam', 'Kaufling', 'PKAUFLIN', '658.123.3234', '1987-07-09', '7900.00','6','Fullstack Development','2','1987-10-29','Denver','30'), 
('123', 'Shanta', 'Vollman', 'SVOLLMAN', '658.123.4234', '1987-07-08', '6500.00', '1','Website Development','10','1987-06-25','Washington','44'),
('124', 'Kelin', 'Mourgos', 'XMOURGOS', '650.123.5234', '1987-07-11', '5800.00','9','Mobile Development','4','1987-07-12','Boston','34'), 
('125', 'Julia', 'Nayer', 'NAYER', '658.124.1214', '1987-07-12', '3200.00', '8','Security Engineering','7','1987-08-29','Denver','37'),
('126', 'Irane', 'Mixxilineni', 'IRIKKILI', '658.124.1224', '1987-07-13','2700.00', '3','Frontend Development','8','1987-06-12','Atlanta','28'),
('127', 'Danes', 'Landry', 'LANDRY', '650.124.1334', '1987-07-14', '2400.00', '4','Mobile Development','11','1987-06-01','Las Vegas','42'), 
('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '1987-07-15', '2200.00','5','Security Engineering','5','1987-01-29','Los Angeles','29'), 
('129', 'Laure', 'Bissot', 'LBISSOT', '658.124.5234', '1987-07-16', '3300.00','3','Database Development','3','1987-06-26','Atlanta','38'),
('130', 'Noche', 'Atkinson', 'ATKINSO', '658.124.6234', '1987-07-17', '2800.00','5','Desktop Development','2','1987-06-09','Chicago','40'), 
('131', 'James', 'Marlow', 'SALON', '658.124.7234', '1987-07-18','2500.00','8','Backend Development','6','1987-03-29','Dallas','37'), 
('132', 'TJ', 'OLSON', 'TJOLSON','650.124.8234', '1987-07-19', '2100.00', '12','Mobile Development','1','1987-06-27','Washington','36'),
('133','Jason', 'Kallin', 'JMALLIN', '650.127.1934', '1987-07-20', '3300.00','7','Website Development','7','1987-06-10','NewYork','45'),
('135', 'Donald', 'Gee', 'KOLE', '650.127.1734', '1987-07-25', '12800.00', '4','Security Engineering','6','1988-06-29','Austin','30'),
('136', 'Hazel', 'Philtanker', 'MPHIL TAN', '650.123 1634', '1887-07-23', '2200.00','6','Fullstack Development','5','1989-06-29','Las Vegas','31'),
('137', 'Ranske', 'Ladwig', 'RLADIG', '1650.121.1234', '1987-07-24', '3500.00', '5','Database Development','2','1987-06-12','Los Angeles','49'), 
('138', 'Stephen', 'Stiles', 'SSTILES', '1650.121.2034', '1987-07-25','3200.00', '9','Mobile Development','3','1987-06-29','Las Vegas','45'), 
('139', 'John', 'Seo', 'JSEO', '1650.121.1019', '1987-02-25','3700.00','11','Desktop Development','4','1987-06-30','Austin','33'), 
('140', 'Joshua', 'Patel', 'PATEL', '650.121.1334', '1987-07-27','2500.00', '7','Backend Development','9','1987-06-28','Boston','36');

select * from employee;

create table `Projects` (
  `Project_No` int(10) NOT NULL,
  `Project_Name` varchar(50) NOT NULL,
  `Department_ID` decimal(6,0) NOT NULL,
  PRIMARY KEY (`Project_No`),
  KEY `JHIST_DEPARTMENT_IX` (`Department_ID`));

Insert into `Projects` (`Project_No`,`Project_Name`,`Department_ID`) VALUES
(1,'Frontend Development',2),
(2,'Backend Development',5),
(3,'Fullstack Development',4),
(4,'Desktop Development',2),
(5,'Website Development',8),
(6,'Database Development',11),
(7,'Mobile Development',2),
(8,'Cloud Computing',9),
(9,'Security Engineering',12);

select * from projects;

create table `Roles` (
  `Role_ID` int(10) NOT NULL PRIMARY KEY,
  `R_title` varchar(50) NOT NULL);

Insert into `Roles` (`Role_ID`, `R_title`) VALUES
(1,'Product manager'),
(2,'Engineering manager'),
(3,'Software architect'),
(4,'Software developers'),
(5,'Business analyst'),
(6,'Scrum master'),
(7,'Testers'),
(8,'Team lead'),
(9,'Technical leadr'),
(10,'Data Scientist'),
(11,'Database Administrator'),
(12,'Full Stack Developer');

select * from roles;

#Joins
select Departments.Department_ID, Departments.Department_Name, Employee.Employe_ID, Employee.First_Name, Employee.Project_Name, Employee.Salary from Departments inner join Employee on Departments.Department_ID = Employee.Department_ID;

select employee.Employe_ID, employee.First_Name, Projects.Project_No, Projects.Project_Name from employee left outer join Projects on employee.Project_Name = Projects.Project_Name union select employee.Employe_ID, employee.First_Name, Projects.Project_No, Projects.Project_Name from employee right outer join Projects on employee.Project_Name = Projects.Project_Name;

select employee.Employe_ID, employee.First_Name, Projects.Project_No, Projects.Project_Name from employee left outer join Projects on employee.Project_Name = Projects.Project_Name order by  Projects.Project_Name ;

select employee.Employe_ID, employee.First_Name, Projects.Project_No, Projects.Project_Name from employee right outer join Projects on employee.Project_Name = Projects.Project_Name order by  Projects.Project_Name ;


#Stored procedures

delimiter //
drop procedure if exists employee//
create procedure employee(in num bigint) begin select * from employee where Employe_ID=num; end//
delimiter ;
call Employe_ID('102');

delimiter //
drop procedure if exists Departments//
create procedure Departments(in num varchar(50)) begin select * from owner where Department_Name=num; end//
delimiter ;
call Department_Name('4');

