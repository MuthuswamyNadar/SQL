
Create Table Branch
(
	Branch_no varchar(10) primary key,
	Manager_id varchar(15),
	Branch_Address varchar(30),
	Contact_no varchar(15)
);

Create table Employee
(
	EMP_ID varchar(10) primary key,
	EMP_name varchar(30),
	Position varchar(30),
	Salary Decimal (10,2)
);

Create table Customer
(
	Customer_ID varchar(10) primary key,
	Customer_name varchar(30),
	Customer_address varchar(30),
	Reg_date Date
);

Create table Books
(
	ISBN varchar(10) primary key,
	Book_title varchar(50),
	Category varchar(30),
	Rental_Price Decimal (10,2),
	Author Varchar(30),
	Publisher Varchar(30)
);

Create table IssueStatuss
(
	Issue_id varchar(10) Primary key,
	Issue_cust varchar(30),
	Issue_book_name varchar(50),
	Issue_date date,
	Issue_book varchar(15),
	foreign key (Issue_cust) References Customer(Customer_ID) on Delete Cascade,
	foreign key (Issue_book) References books(ISBN) on Delete cascade
);

-- Added in branch table

Insert into Branch values
('B001','M101','123 Main st','88888888'),
('B002','M102','123 ELSe st','99999999'),
('B003','M103','173 SLSe st','99990000'),
('B004','M104','323 SeSS st','11119999');
select * from branch;

Insert into Employee values
('E101','JOhn Doe','Manager',60000.00),
('E102','Jane smith','Cler')






























































































