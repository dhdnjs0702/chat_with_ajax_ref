CREATE DATABASE IF NOT EXISTS userchat
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;

USE userchat;

CREATE TABLE IF NOT EXISTS user(
    userID VARCHAR(20),
    userPassword VARCHAR(20),
    userName VARCHAR(20),
    userAge INT,
    userGender VARCHAR(20),
    userEmail VARCHAR(50),
    userProfile VARCHAR(50)
);
    
CREATE TABLE IF NOT EXISTS CHAT(
	chatID INT PRIMARY KEY AUTO_INCREMENT,
	fromID VARCHAR(20),
	toID VARCHAR(20),
	chatContent VARCHAR(100),
	chatTime DATETIME,
	chatRead INT
);