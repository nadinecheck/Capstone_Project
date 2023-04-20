Create database zest;

Use zest;

/*Table structure for table `users` */
create table students(
studentID int  AUTO_INCREMENT,
studentLastName varchar(50),
studentFirstName varchar (50),
phone varchar (50),
address varchar(50),
studentEmail varchar (50),
password varchar(50),
signUpDate date,
primary key(studentID));

/*Table structure for table `tutor profiles` */
create table tutors(
tutorID int  AUTO_INCREMENT,
tutorLastName varchar(50),
tutorFirstName varchar(50),
phone varchar(50),
tutorEmail varchar(50),
password varchar(50),
aboutTutor varchar(500),
codingLanguages varchar (100),
tutorSignUpDate date,
meetingLink varchar(100),
reviews varchar (200),
primary key(tutorID));


/*Table structure for table `login information` */
Create table loginInformation(
loginID int AUTO_INCREMENT,
userName varchar (50),
password varchar (50),
loginDate date,
Primary Key (loginID));

/*Table structure for table `coding Langauges` */
Create table codinglanguages(
codingLanguageID int AUTO_INCREMENT,
languageName varchar(50),
tutorID varchar(50),
Primary Key (CodingLanguageID));


/*Table structure for table `Appointments` */
create table bookedsessions(
sessionID int AUTO_INCREMENT,
userID varchar(50),
tutorID varchar(50),
sessionDate varchar(50),
duration varchar(50),
confirmationNumber varchar(50),
Primary Key (sessionID));

