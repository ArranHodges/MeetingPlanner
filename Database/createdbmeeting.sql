# Create database called 'dbMeeting'
CREATE DATABASE dbMeeting;

USE dbMeeting;

# Create User table
CREATE TABLE Username (
	userID integer NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	firstName varchar(255) NOT NULL, 
	lastName varchar(255) NOT NULL, 
	emailAddress varchar(255) NOT NULL, 
) ENGINE=InnoDB;

# Create MeetingData table
CREATE TABLE MeetingData (
	meetingID integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
	usersID integer,
	title varchar(255) NOT NULL, 
	Description varchar(255) NOT NULL, 
	emailAddress varchar(255) NOT NULL, 
) ENGINE=InnoDB;

# Create MeetingAttendee table
CREATE TABLE  MeetingAttendee (
	userID integer NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	firstName varchar(255) NOT NULL, 
	lastName varchar(255) NOT NULL, 
	emailAddress varchar(255) NOT NULL, 
) ENGINE=InnoDB;