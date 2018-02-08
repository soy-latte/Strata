
CREATE DATABASE dWellMgr;
use dwellMgr;

CREATE TABLE property (
	propID int NOT NULL,
	propCode varchar(255) NOT NULL,
	propName varchar(255),
	propAddr1 varchar(255),
	propAddr2 varchar(255),
	propCity varchar (255),
	propProv varchar (255),
	propPostal varchar (255),
	PRIMARY KEY (propID)
					);
--drop table Property
--INSERT INTO Property VALUES (1,'lms1023','Chestnut Lane','10238 155A Street', ' ', 'Surrey', 'BC', 'V6G 1R4')
--select * from property where propID=1

CREATE TABLE unit (
	unitID int NOT NULL,
	unitCode varchar(255) NOT NULL,  --must be unique to that property, but not to entire db
	ownerFirst varchar(255),
	ownerLast varchar(255),
	ownerAddr1 varchar(255),
	ownerAddr2 varchar(255),
	ownerCity varchar (255),
	ownerProv varchar (255),
	ownerPostal varchar (255),
	PRIMARY KEY (unitID)
					);


CREATE TABLE Owner (
	ownerID int NOT NULL,
	ownerCode varchar(255) NOT NULL UNIQUE,
	ownerFirst varchar(255),
	ownerLast varchar(255),
	ownerAddr1 varchar(255), --address fields can be empty, would default to unit address
	ownerAddr2 varchar(255),
	ownerCity varchar (255),
	ownerProv varchar (255),
	ownerPostal varchar (255),
	PRIMARY KEY (ownerID)
					);


---this was in an old file 
	CREATE TABLE tenant (
	tenant_ID bigint PRIMARY KEY, 
	f_name varchar(100), 
	l_Name varchar(100), 
	addr varchar(100),
	addr2 varchar(100),
	city varchar(50),
	prov varchar(50),
	postal varchar (10),
	country varchar(50),
	phone1 bigint,
	email varchar(100),
	created datetime2 DEFAULT GETDATE())
	
	--dummy data insert --
	insert into tenant values ('102', 'Bill', 'Smith', '1234 Main Street','' , 'Vancouver', 'BC','', 'Canada', '6047646104','andrewseatoin@shaw.ca', GETDATE());

	--drop table
	drop table tenant

	select * from tenant

	--make another change
