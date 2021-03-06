/* CREATE DATABASE*/

CREATE TABLE `COUNTRY` (
    `COUNTRY_ID` 	VARCHAR(6) NOT NULL PRIMARY KEY,
	`COUNTRY_NAME` 	CHAR(30) NOT NULL UNIQUE,
	`COUNTRY_ABB` 	CHAR(3) NOT NULL UNIQUE
);


CREATE TABLE `STATES` (
    `STATE_ID` VARCHAR(8) NOT NULL PRIMARY KEY,
    `STATE_ABB` CHAR(2) 		NOT NULL,
	`STATE_NAME` VARCHAR(30) 	NOT NULL,
	`COUNTRY_ID` VARCHAR(6) 	NOT NULL,
	FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY(COUNTRY_ID)
);

/*
CREATE TABLE CKSTORE (
  STORE_ID  		VARCHAR(11) NOT NULL PRIMARY KEY ,
  STORE_NAME    	VARCHAR(50) NOT NULL,
  STORE_STREET   	VARCHAR(50) NOT NULL,
  STORE_SUITE		VARCHAR(25) ,
  STORE_CITY        CHAR(25) NOT NULL,
  STATE_ID       	VARCHAR(8) NOT NULL,
  FOREIGN KEY (STATE_ID) REFERENCES STATES(STATE_ID)
);
*/

CREATE TABLE USERS (
  USER_ID  	VARCHAR(10) NOT NULL UNIQUE,
  USERNAME		VARCHAR(25)    NOT NULL UNIQUE,
  EMAIL    		VARCHAR(25)    NOT NULL PRIMARY KEY,
  PASSWORD		VARCHAR(25)		NOT NULL,
  LAST_NAME     CHAR(30),
  FIRST_NAME    CHAR(30),
  ROLE 			CHAR(30)
);



CREATE TABLE USERS_DETAILS(
  USER_ID  	VARCHAR(10) NOT NULL PRIMARY KEY,
  MEMBERSHIP_DATE  DATETIME,
  STREET        	VARCHAR(35),
  CITY          	CHAR(25),
  ZIP           	INTEGER(10),
  STATE_ID       	VARCHAR(8),
  PHONE         VARCHAR(25),
  COUNTRY_ID		VARCHAR(6),
  FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID)
);

/*
CREATE TABLE CKMEMBER_PERSONAL_DETAILS (
  MEMBER_ID  		VARCHAR(10)  NOT NULL PRIMARY KEY ,
  MIN_INCOME      	INTEGER(10),
  MAX_INCOME		INTEGER(10),
  GENDER	    	CHAR(6),
  DOB_DAY		   	INTEGER(2),
  DOB_MONTH		   	CHAR(10),
  MARITIAL_STATUS 	CHAR(10),
  FOREIGN KEY (MEMBER_ID) REFERENCES CKMEMBER(MEMBER_ID)
);


CREATE TABLE PURCHASE_HISTORY (
  MEMBER_ID  		VARCHAR(10) NOT NULL ,
  STORE_ID          VARCHAR(11),
  UPC_CODE        	VARCHAR(15),
  ITEM_PRICE        DECIMAL(10,2),
  PURCHASE_DATE		DATETIME,
  FOREIGN KEY (MEMBER_ID) REFERENCES CKMEMBER(MEMBER_ID),
  FOREIGN KEY (STORE_ID) REFERENCES CKSTORE(STORE_ID)
);



CREATE TABLE LOGIN_INFO (
  USERNAME 		VARCHAR(20) NOT NULL PRIMARY KEY,
  PASSWORD 		VARCHAR(255) NOT NULL,
  FOREIGN KEY (USERNAME) REFERENCES CKMEMBER(USERNAME)
);


CREATE TABLE `EMAIL_PREFERENCE` (
  MEMBER_ID 			VARCHAR(10) NOT NULL,
  SUBSCRIPTION			VARCHAR(30) NOT NULL,
  FOREIGN KEY (MEMBER_ID) REFERENCES CKMEMBER(MEMBER_ID)
);

*/