# Create database called 'dbMeeting'
CREATE DATABASE dbMeeting;

USE dbMeeting;

# Create User table
CREATE TABLE Customer (
	UserID integer NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	firstName varchar(255) NOT NULL, 
	lastName varchar(255) NOT NULL, 
	dateOfBirth date NOT NULL, 
	emailAddress varchar(255) NOT NULL, 
	mobileNo varchar(11) NOT NULL, 
	customerBranchID integer NOT NULL, 
	address integer NOT NULL,
	consignments integer NOT NULL,
	FOREIGN KEY (customerBranchID) REFERENCES Branch(branchID),
	FOREIGN KEY (address) REFERENCES Address(addressID)
	# Can't add this because it isnt primary nor unique
	# FOREIGN KEY (consignments) REFERENCES CustomerConsignments(consignmentsID)
) ENGINE=InnoDB;