CREATE DATABASE DBMS_Project;
use DBMS_Project;
CREATE TABLE lib_users (
    userId varchar(255) Primary Key,
    name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    userType varchar(255) NOT NULL,
    dob date
);
CREATE TABLE user_types (
	userType varchar(255) Primary Key,
	maxIssues int NOT NULL,
	maxIssuePeriod int NOT NULL,
	finePerDay int NOT NULL
);
CREATE TABLE issue_staff (
	staffId varchar(255) Primary Key,
    name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    dob date NOT NULL 
);
CREATE TABLE lib_book (
	bookId varchar(255) Primary Key,
	bookName varchar(255) NOT NULL,
	category varchar(255) NOT NULL,
	pages int NOT NULL,
	rackNumber varchar(255) NOT NULL,
	authorName varchar(255) NOT NULL,
	publisherName varchar(255) NOT NULL
);
CREATE TABLE issues (
	issueId int Primary Key AUTO_INCREMENT,
	bookId varchar(255) NOT NULL,
	copyNo int NOT NULL,
	userId varchar(255) NOT NULL,
	issueDate date NOT NULL,
	issueStaffId varchar(255) NOT NULL,
	dueDate date NOT NULL,
	isBookReturned int NOT NULL DEFAULT 0,
	returnStaffId varchar(255) DEFAULT NULL,
	fine int NOT NULL DEFAULT 0,		
	isFinePaid int NOT NULL DEFAULT 0,
	paymentDate date DEFAULT NULL,		-- Change
	fineStaffId varchar(255) DEFAULT NULL
);
CREATE TABLE login (
	id varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	loginType varchar(255) NOT NULL,
	Primary Key(id, password, loginType) 
);