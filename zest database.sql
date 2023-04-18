Create database zest;

Use zest;

/*Table structure for table `users` */
create table users(
userID int  AUTO_INCREMENT,
userLastName varchar(50),
userFirstName varchar (50),
phone varchar (50),
address varchar(50),
email varchar (50),
password varchar(50),
signUpDate date,
primary key(userID));

Drop table users;

/*Table structure for table `tutor profiles` */
create table tutorprofiles(
tutorID int  AUTO_INCREMENT,
userID varchar(50),
lastName varchar(50),
firstName varchar(50),
phone varchar(50),
email varchar(50),
password varchar(50),
background varchar(500),
codingLanguages varchar (100),
creationDate date,
meetingLink varchar(100),
reviews varchar (200),
primary key(tutorID));


/*Table structure for table `login information` */
Create table logininformation(
loginID int AUTO_INCREMENT,
userName varchar (50),
password varchar (50),
role varchar(50),
loginDate date,
Primary Key (loginID));

/*Table structure for table `coding Langauges` */
Create table codinglanguages(
codingLanguageID int AUTO_INCREMENT,
languageName varchar(50),
tutorID varchar(50),
Primary Key (CodingLanguageID));

Drop table codinglanguages;

/*Table structure for table `Appointments` */
create table appointments(
appointmentID int AUTO_INCREMENT,
userID varchar(50),
tutorID varchar(50),
appointmentDate varchar(50),
duration varchar(50),
confirmationNumber varchar(50),
primary key(AppointmentId));