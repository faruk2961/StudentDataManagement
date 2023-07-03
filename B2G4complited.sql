CREATE DATABASE LMT_University

USE LMT_University;

CREATE SCHEMA Enrol;

CREATE TABLE Enrol.Department
(  
    DepartmentID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(50) NOT NULL, 
	DepartmentDesc VARCHAR(150) NULL,
	DepartmentCap INT NOT NULL,
	InsertedOn datetime default getdate() NOT NULL
)


CREATE TABLE Enrol.Lecturer
(  
    LecturerID INT NOT NULL PRIMARY KEY IDENTITY(1,1),   
    LecturerName VARCHAR(50) NOT NULL, 
	LecturerHighestQualification VARCHAR(150)NULL,
	LecturerAge VARCHAR(50) NOT NULL,
    DepartmentID INT FOREIGN KEY (DepartmentID)
    REFERENCES Enrol.Department (DepartmentID) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	InsertedOn datetime default getdate() NULL
) 

CREATE TABLE Enrol.Address
(  
    AddressID INT NOT NULL PRIMARY KEY IDENTITY(1,1),   
    StreetAddress VARCHAR(50)NULL, 
	City VARCHAR(50) NOT NULL,
	State VARCHAR(50) NULL,
	PostalCode VARCHAR(50) NULL, 
	Country VARCHAR(50) NOT NULL,
	InsertedOn datetime default getdate()
)

INSERT INTO Enrol.Address (StreetAddress, City, State, PostalCode, Country, InsertedOn) VALUES 
('5 Schurz Lane', 'Grybow', 'NULL', '33-330', 'Poland', '2020-09-30'),
('628 Waubesa Drive', 'Jinsheng', 'NULL', 'NULL', 'China', '2020-09-30'),
('44135 Northfield Way', 'Nowy Dwór Mazowiecki', 'NULL', '05-160', 'Poland', '2020-09-30'),
('335 Bellgrove Road', 'Gaoqiao', 'NULL', 'NULL', 'China', '2020-09-30'),
('28 Victoria Junction', 'Bukovec', 'NULL', '739 84', 'Czech Republic', '2020-09-30'),
('6 Stuart Road', 'Wushan', 'NULL', 'NULL', 'China', '2020-09-30'),
('730 Barby Street', 'Zhengchang', 'NULL', 'NULL', 'China', '2020-09-30'),
('22742 Schiller Street', 'Sumurwaru', 'NULL', 'NULL', 'Indonesia', '2020-09-30'),
('31 Elka Junction', 'Cigembong', 'NULL', 'NULL', 'Indonesia', '2020-09-30'),
('5 Kenwood Circle', 'Davao', 'NULL', '8000', 'Philippines', '2020-09-30'),
('99 Bunker Hill Crossing', 'Zarasai', 'NULL', '32001', 'Lithuania', '2020-09-30'),
('5 Farragut Center', 'Jaromerice', 'NULL', '569 44', 'Czech Republic', '2020-09-30'),
('25 Lerdahl Street', 'Nanshi', 'NULL', 'NULL', 'China', '2020-09-30'),
('918 Bonner Way', 'Phayakkhaphum Phisai', 'NULL', '44110', 'Thailand', '2020-09-30'),
('9 West Alley', 'Sempu', 'NULL', 'NUll', 'Indonesia', '2020-09-30'),
('234 Hagan Lane', 'Rennes', 'Bretagne', '35033', 'France', '2020-09-30'),
('33942 Eagle Crest Trail', 'Oliveiras', 'Porto', '4745-235', 'Portugal', '2020-09-30'),
('20791 Hermina Way', 'B?o L?c', 'NULL', 'NULL', 'Vietnam', '2020-09-30'),
('86 Lake View Way', 'Marsa Alam', 'NULL', 'NULL', 'Egypt', '2020-09-30'),
('19732 Burning Wood Parkway', 'Piteå', 'Norrbotten', '944 73', 'Sweden', '2020-09-30'),
('9320 Oak Valley Road', 'Rathangani', 'NULL', 'A45', 'Ireland', '2020-09-30'),
('2638 Waubesa Circle', 'Honda', 'NULL', '732048', 'Colombia', '2020-09-30'),
('6999 Monument Center', 'Cortes', 'NULL', '6341', 'Philippines', '2020-09-30'),
('1 Warbler Hill', 'Proletar', 'NULL', 'NULL', 'Tajikistan', '2020-09-30'),
('1311 Crowley Street', 'Baghlan', 'NULL', 'NULL', 'Afghanistan', '2020-09-30'),
('19 Walton Way', 'Öldziyt', 'NULL', 'NULL', 'Mongolia', '2020-09-30'),
('1 Glacier Hill', 'Cergy-Pontoise', 'Île-de-France', '95304', 'France', '2020-09-30'),
('5094 Gateway Way', 'ivinice', 'NULL', 'NULL', 'Bosnia and Herzegovina', '2020-09-30'),
('2 Roth Pass', 'Tuatuka', 'NULL', 'NULL', 'Indonesia', '2020-09-30'),
('89531 Northview Road', 'Ganyi', 'NULL', 'NULL', 'China', '2020-09-30');

SELECT* FROM Enrol.Address

INSERT INTO Enrol.Department(DepartmentName,DepartmentDesc,DepartmentCap,InsertedOn)
VALUES
('IT', 'Information Technology', 60, '2020-09-30'),
('EE', 'Electrical Engineering', 120, '2020-09-30'),
('CSE', 'Computer Science Engineering', 140, '2020-09-30'),
('ME', 'Mechanical Engineering',	'110', '2020-09-30'),
('ECE',	'Electronic and Communication Engineering',	80,	'2020-09-30'),
('AEIE',	'Applied Electronics and Instrumentation Engineering', 50, '2020-09-30');

SELECT * FROM Enrol.Department

INSERT INTO Enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID,InsertedOn) VALUES
('Peder Bernaldez','M.Tech','2010-10-10',6,'2020-09-30'),
('Emile Adolthine','PhD',	'2010-04-04',	5,	'2020-09-30'),
('Titos Iorizzi',	'M.Tech',	'2012-04-09',4,	'2020-09-30'),
('Ferris Falck',	'MSC',	'2011-05-05',	3,	'2020-09-30'),
('Georgie McIlwraith',	'M.Tech',	'2017-05-08',2,	'2020-09-30'),
('Karlen Kearn',	'MSC',	'2019-03-03',1,	'2020-09-30'),
('Axe Whistlecroft',	'MCA',	'2019-03-03',6,	'2020-09-30'),
('Drucie Bazek',	'PhD',	'2019-04-01',5,	'2020-09-30'),
('Antony Gamlin','M.Tech',	'2019-04-01',4,	'2020-09-30'),
('Alexina Moncaster','MBA',	'2019-04-01',3,	'2020-09-30'),
('Milzie Kabos',	'MCA',	'2019-03-03',2,	'2020-09-30'),
('Arlene Glendza','MS',	'2019-03-03',1,	'2020-09-30'),
('Kirby Kabisch','M.Tech',	'2019-04-01',1,	'2020-09-30'),
('Selma Eliyahu','PhD',	'2019-04-01',2,	'2020-09-30'),
('Ilysa Chooter','M.Tech','2019-04-01',	3,	'2020-09-30'),
('Rozalie Pennycord',	'MSC',	'2010-10-10',	4,	'2020-09-30'),
('Dacey Glidder',	'M.Tech',	'2010-04-04',	5,	'2020-09-30'),
('Claretta Diaper',	'MSC',	'2012-04-09',	6,	'2020-09-30'),
('Kalil Pendleton',	'MCA',	'2011-05-05',	6,	'2020-09-30'),
('Trudey Brech',	'PhD',	'2011-10-05',	5,	'2020-09-30'),
('Gypsy Ambrosini',	'M.Tech',	'2011-03-30',	4,	'2020-09-30'),
('Lauree Ribbon',	'MBA',	'2013-04-04',	3,	'2020-09-30'),
('Hugo Valois',	'MCA',	'2012-04-29',	2,	'2020-09-30'),
('Perren Chetter',	'MS',	'2018-05-03',	1,	'2020-09-30'),
('Fawn Coffelt',	'M.Tech',	'2020-02-26',	1,	'2020-09-30'),
('Terrie Golby',	'PhD',	'2020-02-26',	2,	'2020-09-30'),
('Jeanette Ciraldo',	'M.Tech',	'2020-03-26',	3,	'2020-09-30'),
('Elfrieda Elijahu',	'MSC', '2020-03-26',4,	'2020-09-30'),
('Guthry Blaes',	'M.Tech',	'2020-03-26',	5,	'2020-09-30'),
('Richy Saice',	'MSC',	'2020-02-26',	6,	'2020-09-30');

SELECT * FROM Enrol.Lecturer

CREATE TABLE Enrol.Student
(  
    StudentID INT NOT NULL PRIMARY KEY IDENTITY(1,1),   
    StudentFirstName VARCHAR(50) NOT NULL,
	StudentLastName VARCHAR(50) NULL,
	StudentDOB DATE NOT NULL,
	StudentMobile VARCHAR(50) NULL,
	StudentRollNo INT NOT NULL,
    DepartmentID INT FOREIGN KEY (DepartmentID)
    REFERENCES Enrol.Department (DepartmentID) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	AddressID INT FOREIGN KEY (AddressID)
    REFERENCES Enrol.Address (AddressID) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	InsertedOn datetime default getdate() NULL
) 

INSERT INTO Enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID,InsertedOn) VALUES
('Joey',	'Ironside',	'1995-11-22','1276234258',1,3,1,'2020-10-01'),
('Karlotta',	'Garraway',	'1997-07-06',	'2192431615',	2,	3,	24,	'2020-10-01'),
('Jerry',	'Stutte',	'1996-12-18',	'4125425783',	3,	1,	17,	'2020-10-01'),
('Yehudit',	'Rahill',	'1995-01-15',	'9939485406',	4,	2,	29,	'2020-10-01'),
('Cele',	'Crosetto',	'1998-11-24',	'3622733725',	5,	3,	16,	'2020-10-01'),
('Hazlett',	'Mowsdale',	'1995-04-09',	'1482883476',	6,	4,	23,	'2020-10-01'),
('Carlyn',	'Marks',	'1996-12-27',	'6129154080',	7,	5,	20,	'2020-10-01'),
('Ellis',	'Boatman',	'1997-04-29',	'8269707118',	8,	6,	7,	'2020-10-01'),
('Florina',	'Boyack',	'1997-08-03',	'9623352863',	9,	3,	14,	'2020-10-01'),
('Borg',	'Innett',	'1997-09-03',	'5256034960',	10,	1,	19,	'2020-10-01'),
('Sayres',	'Jennings',	'1996-05-12',	'8675076454',	11,	4,	27,	'2020-10-01'),
('Jarid',	'Sprull',	'1998-11-02',	'1391270091',	12,	2,	6,	'2020-10-01'),
('Elvera',	'Bannard',	'1996-09-07',	'7897232539',	13,	4,	24,	'2020-10-01'),
('Ody',	'Inggall',	'1995-03-05',	'6094734260',	14, 5,	25,	'2020-10-01'),
('Curcio',	'McWhan',	'1996-07-29',	'2394865847',	15,	6,	11,	'2020-10-01'),
('Connie',	'Sinnie',	'1995-07-19',	'1473936221',	16,	6,	23,	'2020-10-01'),
('Auroora',	'Nel',	'1996-09-05',	'2216400391',	17,	3,	14,	'2020-10-01'),
('Wendall',	'Rosendale',	'1999-12-30',	'1818120249',	18,	3,	28,	'2020-10-01'),
('Hadley',	'Bradbury',	'1996-08-16',	'6518067697',	19,	1,	10,	'2020-10-01'),
('Celine',	'Smales',	'1999-07-11',	'7106508130',	20,	2,	10,	'2020-10-01'),
('Jesselyn',	'Stevenson',	'1998-05-16',	'9231672206',	21,	2,	22,	'2020-10-01'),
('Corinna',	'Pinkney',	'1998-01-16',	'8323630067',	22,	5,	29,	'2020-10-01'),
('Orelle',	'Adamthwaite',	'1997-07-26',	'2539126766',	23,	3,	17,	'2020-10-01'),
('Howie',	'Seaman',	'1997-12-01',	'9888259627',	24,	2,	4,	'2020-10-01'),
('Sibyl',	'Corey',	'1996-07-18',	'4493239590',	25,	5,	11,	'2020-10-01'),
('Ruperta',	'Peaker',	'1999-05-22',	'5124781263',	26,	5,	4,	'2020-10-01'),
('Delmer',	'Roughey',	'1995-04-21',	'4175314364',	27,	3,	22,	'2020-10-01'),
('Gifford',	'OScannill',	'1996-10-31',	'3134783726',	28,	4,	22,	'2020-10-01'),
('Hedy',	'OHone',	'1998-03-29',	'7316228047',	29,	2,	17,	'2020-10-01'),
('Shalna',	'Hyde-Chambers',	'1999-11-23',	'7455116160',	30,	5,	6,	'2020-10-01'),
('Ferdie',	'Di Napoli',	'1995-01-17', '1905908693',	31,	4,	30,	'2020-10-01'),
('Piper',	'Giacomuzzo',	'1998-09-14',	'5499340503',	32,	6,	4,	'2020-10-01'),
('Gerhardt',	'Schruurs',	'1999-11-18',	'8197494894',	33,	3,	1,	'2020-10-01'),
('Mellicent',	'Buncher',	'1996-10-03',	'4584525312',	34,	5,	28,	'2020-10-01'),
('Corette',	'Demead',	'1997-09-17',	'4909862137',	35,	5,	17,	'2020-10-01'),
('Jorgan',	'Barson',	'1997-05-01',	'6022309183',	36,	1,	21,	'2020-10-01'),
('Koral',	'Bowen',	'1998-05-12',	'4198817454',	37,	4,	3,	'2020-10-01'),
('Allissa',	'Kitter',	'1998-08-17',	'7328676920',	38,	5,	7,	'2020-10-01'),
('Townsend',	'Doughtery',	'1998-04-13',	'2639777958',	39,	4,	7,	'2020-10-01'),
('Yolane',	'Geratt',	'1998-06-10',	'2069585951',	40,	6,	17,	'2020-10-01'),
('Chrystel',	'Allwood',	'1996-09-07',	'6958461692',	41,	3,	25,	'2020-10-01'),
('Dyana',	'Clutterbuck',	'1997-09-22',	'5842483886',	42,	1,	1,	'2020-10-01'),
('Nikki',	'Edy',	'1999-01-10',	'5096155315',	43,	6,	25,	'2020-10-01'),
('Hendrik',	'Surr',	'1997-04-05',	'2021255732',	44,	5,	11,	'2020-10-01'),
('Marta',	'Bosch',	'1998-09-28',	'4075136713',	45,	6,	5,	'2020-10-01'),
('Garrik',	'Pell',	'1999-04-14',	'3071057649',	46,	6,	7,	'2020-10-01'),
('Stormi',	'Colbron',	'1998-10-21',	'9968113654',	47,	3,	28,	'2020-10-01'),
('Angelique',	'Iacivelli',	'1995-06-07',	'9518365081',	48,	5,	7,	'2020-10-01'),
('Zack',	'Hefforde',	'1999-07-25',	'5455693035',	49,	1,	29,	'2020-10-01'),
('Gusella',	'Pettiford',	'1999-08-23',	'2425172721',	50,	4,	3,	'2020-10-01');


/*	
 List all the Department information from the Department table.
*/
SELECT * FROM enrol.Department;

/*	
c.	List all the Lecturer information from the Lecturer table.
*/
SELECT * FROM enrol.Lecturer;

/*	
d.	List all the Address information from the Address table.
*/
SELECT * FROM enrol.Address;

/*	
e.	List the StudentFullName, StudentDOB, StudentMobile from Student [StudentFullName=StudentFirstName +    + StudentLastName]
*/
SELECT CONCAT(StudentFirstName,' ',StudentLastName) AS StudentFullName, StudentDOB, StudentMobile FROM enrol.Student

/*	
f.	List the StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile from Student StudentRollNo in AddressID 7.
*/

SELECT StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile FROM enrol.Student WHERE StudentRollNo = 7;

/*	
g.	List all the student information whose first name is start with 'B'
*/
SELECT * FROM enrol.Student WHERE UPPER(StudentFirstName) LIKE 'B%';

/*	
h.	List all the student information whose first name is start and end with 'A'
*/
SELECT * FROM enrol.Student WHERE UPPER(StudentFirstName) LIKE 	'A%' AND UPPER(StudentFirstName) LIKE '%A';

/*	
i. Count the number of Student from Student table whose DepartmentID 6.
*/
SELECT COUNT(StudentID) AS CountOfStudentWithDepartmentId6 FROM enrol.Student WHERE DepartmentID = 6;

/*	
j. List all the StudentFullName, StudentAge, StudentMobile from Student [StudentFullName= StudentFirstName +    + StudentLastName]
[StudentAge= Current date  DOB (in Years)]
*/
SELECT CONCAT(StudentFirstName,' ',StudentLastName) AS StudentFullName, (YEAR(CURRENT_TIMESTAMP)- YEAR(StudentDOB)) AS StudentAge, StudentMobile FROM enrol.Student

/*	
k. List all the StudentFullName, StudentAge, StudentMobile whose Age>23 from Student [StudentFullName= StudentFirstName +    + StudentLastName]
*/
SELECT CONCAT(StudentFirstName,' ',StudentLastName) AS StudentFullName, 
(YEAR(CURRENT_TIMESTAMP)- YEAR(StudentDOB)) AS StudentAge, StudentMobile FROM enrol.Student
WHERE (YEAR(CURRENT_TIMESTAMP)- YEAR(StudentDOB)) > 23;

/*
l. List all the StudentFullName, StudentAge, StudentMobile whose Age is either 21 or 23 from Student [StudentFullName= StudentFirstName +    + StudentLastName]
[StudentAge= Current date  DOB (in Years)]
*/
SELECT CONCAT(StudentFirstName,' ',StudentLastName) AS StudentFullName, 
(YEAR(CURRENT_TIMESTAMP)- YEAR(StudentDOB)) AS StudentAge,StudentMobile 
FROM enrol.Student
WHERE (YEAR(CURRENT_TIMESTAMP)- YEAR(StudentDOB)) IN (21,23);

/*
m. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer.
*/
SELECT LecturerID, LecturerName, LecturerHighestQualification, LecturerAge FROM enrol.Lecturer

/*
n. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer whose HighestQualification is either MS or PhD.
*/
SELECT LecturerID, LecturerName, LecturerHighestQualification, LecturerAge FROM enrol.Lecturer 
WHERE LecturerHighestQualification IN ('MS', 'PhD');

/*
o. List all the lecturer information who belongs to DepartmentID 2.
*/
SELECT * FROM enrol.Lecturer WHERE DepartmentID = 2;

/*
p. List all the lecturer information whose name end with R.
*/
SELECT * FROM enrol.Lecturer WHERE UPPER(LecturerName) LIKE '%R';

/*
q. List all the lecturer information whose name either start or end with E.
*/
SELECT * FROM enrol.Lecturer WHERE UPPER(LecturerName) LIKE 'E%' OR UPPER(LecturerName) LIKE '%E';

/*
r. List all the lecturer name is in capital letter.
*/
SELECT  UPPER(LecturerName) AS LECTURERNAME FROM enrol.Lecturer

/*
s. Display 5 character from the lecturer name along with LecturerID and LecturerHighestQualification.
*/
SELECT SUBSTRING(LecturerName, 1, 5) AS SubsLecturerName, LecturerID, LecturerHighestQualification FROM enrol.Lecturer

/*
t. List LecturerID, LecturerName, LecturerHighestQualification, LecturerAge(in year) [LecturerAge= Current Date  LecturerAge)] (in year).
*/
SELECT  LecturerID, LecturerName, LecturerHighestQualification, (YEAR(CURRENT_TIMESTAMP)- YEAR(LecturerAge)) AS LecturerAge FROM enrol.Lecturer;

/*
u.	List DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from Department.
*/
SELECT DepartmentID, DepartmentName, DepartmentDesc, DepartmentCap FROM enrol.Department

/*
v. List all the Department information whos DepartmentName is ECE.
*/
SELECT * FROM enrol.Department WHERE DepartmentName LIKE 'ECE';

/*
w. List all DepartmentName, DepartmentDescription, DepartmentCapacity from Department whose capacity is greater than 60.
*/
SELECT DepartmentName, DepartmentDesc, DepartmentCap FROM enrol.Department WHERE DepartmentCap > 60;

/*
x. List all AddressID, StreetAddress, City, State, PostalCode, Country from Address.
*/
SELECT AddressID, StreetAddress, City, State, PostalCode, Country FROM enrol.Address

/*
y. List all AddressID, StreetAddress, City, State, PostalCode, Country from Address who belongs to Poland country.
*/
SELECT AddressID, StreetAddress, City, State, PostalCode, Country FROM enrol.Address WHERE Country LIKE 'Poland';

/*
z. List all the Address information whose state is null.
*/
SELECT * FROM enrol.Address WHERE State IS NULL;

/*	
aa. List all the Address information whose PostalCode is not null.
*/
SELECT * FROM enrol.Address WHERE PostalCode IS NOT NULL;

/*
bb. List all the Address information whose City name is "Honda" and Country name is "Colombia"
*/
SELECT * FROM enrol.Address WHERE City LIKE 'Honda' AND Country LIKE 'Colombia';

/*
10)
*/
/*
A) a. List unique DOB from Student.
*/
SELECT DISTINCT StudentDOB FROM Enrol.Student;

/*
b.	List unique DepartmentName from Department.
*/
SELECT DISTINCT DepartmentName FROM Enrol.Department;

/*
c.	List unique Country name from Address.
*/
SELECT DISTINCT Country FROM Enrol.Address;

/*
d.	List unique State name from Address.
*/
SELECT DISTINCT State FROM Enrol.Address;

/*
e.	List unique City name from Address.
*/
SELECT DISTINCT City FROM Enrol.Address;

/*
f.	List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerYearService from Lecturer [LecturerYearService= Current Date  LecturerAge] (in year).
*/
SELECT DISTINCT LecturerID, LecturerName, LecturerHighestQualification, (YEAR(CURRENT_TIMESTAMP)- YEAR(LecturerAge)) AS LecturerYearService 
FROM Enrol.Lecturer;

/*
g.	List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerType from Lecturer [LecturerType= if LecturerYearService< 5 then "Begining Level Experience" else if LecturerYearService>= 5 and LecturerYearService<10 then "Mid Level experience" else "Experienced".
*/
SELECT LecturerID, LecturerName, LecturerHighestQualification,LecturerAge AS LecturerYearService, 'LecturerType' =   
      CASE   
         WHEN (YEAR(CURRENT_TIMESTAMP)- YEAR(LecturerAge)) <= 5 THEN 'Begining Level Experience'  
         WHEN (YEAR(CURRENT_TIMESTAMP)- YEAR(LecturerAge)) > 5 THEN 'Mid Level experience'    
         ELSE 'Experienced'  
      END  
FROM Enrol.Lecturer
ORDER BY LecturerID

/*
11)
*/
/*
A) a. List unique DOB from Student.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID,
 D.DepartmentName, D.DepartmentDesc, D.DepartmentCap
From [enrol].Student AS S
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID;

/*
b. Display all Student and their Address Information based on the relationship.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID, A.City, A.State, A.PostalCode, A.Country
From [enrol].Student AS S INNER JOIN [enrol].Address AS A
ON S.AddressID = A.AddressID;

/*
c. Display all Department and their Lecturer Information based on the relationship.
*/
Select	
L.LecturerID, L.LecturerName, L.LecturerHighestQualification, L.LecturerAge, L.DepartmentID, D.DepartmentName, D.DepartmentDesc, D.DepartmentCap
From [enrol].Lecturer AS L INNER JOIN [enrol].Department AS D
ON L.LecturerID = D.DepartmentID;

/*
d.	Display all Student with their Department with Lecturer Information based on the relationship.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID, 
D.DepartmentName, D.DepartmentDesc, D.DepartmentCap,
L.LecturerID, L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
From [enrol].Student AS S 
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID
INNER JOIN [enrol].Lecturer AS L ON S.DepartmentID = L.DepartmentID;

/*
e.	Display all Student with their Address and Department Information based on the relationship.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID,
A.StreetAddress, A.City, A.State, A.PostalCode, A.Country,
D.DepartmentName, D.DepartmentDesc, D.DepartmentCap
From [enrol].Student AS S 
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID
INNER JOIN [enrol].Address AS A ON S.AddressID = A.AddressID;

/*
f.	Display all Student with Address, Department and Lecturer Information based on the relationship.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID,
A.StreetAddress, A.City, A.State, A.PostalCode, A.Country,
D.DepartmentName, D.DepartmentDesc, D.DepartmentCap,
L.LecturerID, L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
From [enrol].Student AS S 
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID
INNER JOIN [enrol].Address AS A ON S.AddressID = A.AddressID
INNER JOIN [enrol].Lecturer AS L ON S.DepartmentID = L. DepartmentID;

/*
g.	Display all Student with Address, Department and Lecturer Information who belongs to either ME or ECE department.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID,
A.StreetAddress, A.City, A.State, A.PostalCode, A.Country,
D.DepartmentName, D.DepartmentDesc, D.DepartmentCap,
L.LecturerID, L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
From [enrol].Student AS S 
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID
INNER JOIN [enrol].Address AS A ON S.AddressID = A.AddressID
INNER JOIN [enrol].Lecturer AS L ON S.DepartmentID = L. DepartmentID
WHERE D.DepartmentName IN ('ME', 'ECE')

/*
h.	Display Student with Department and their Lecturer information based on the LecturerHighestQualification either MS or PhD.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID,
A.StreetAddress, A.City, A.State, A.PostalCode, A.Country,
D.DepartmentName, D.DepartmentDesc, D.DepartmentCap,
L.LecturerID, L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
From [enrol].Student AS S 
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID
INNER JOIN [enrol].Address AS A ON S.AddressID = A.AddressID
INNER JOIN [enrol].Lecturer AS L ON S.DepartmentID = L. DepartmentID
WHERE L.LecturerHighestQualification IN ('MS', 'PhD')

/*
i.	Display all Student with Address, Department and Lecturer Information based on the relationship.
*/
Select	
S.StudentID, S.StudentFirstName, S.StudentLastName, S.StudentDOB, S.StudentMobile, S.StudentRollNo,
S.DepartmentID, S.AddressID,
A.StreetAddress, A.City, A.State, A.PostalCode, A.Country,
D.DepartmentName, D.DepartmentDesc, D.DepartmentCap
FROM [enrol].Student AS S 
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID
INNER JOIN [enrol].Address AS A ON S.AddressID = A.AddressID
WHERE A.Country LIKE 'Thailand'

/*
j.	Display Count of Student, Department wise.
*/
Select
D.DepartmentName,
COUNT(S.StudentID) AS TotalStudents
From
[enrol].Student as S
INNER JOIN [enrol].Department AS D ON S.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;

/*
k.	Display Count of Lecturer, Department wise.
*/
Select
	D.DepartmentName,
	COUNT(L.LecturerID) AS TotalLecturer
	From
	[enrol].Lecturer as L
	INNER JOIN [enrol].Department AS D ON L.DepartmentID = D.DepartmentID
	GROUP BY D.DepartmentName;

/*
l.	Display Count of Student, Country wise.
*/
Select
	A.Country,
	COUNT(S.AddressID) AS TotalStudents
	From [enrol].Student as S
	INNER JOIN [enrol].Address AS A ON A.AddressID = S.AddressID
	GROUP BY A.Country;

/*
12)
*/
/*
a.	Create new table StudCopy and copy all records from Student table.
*/
Create table StudCopy
(

 StudentCopyID INT NOT NULL PRIMARY KEY IDENTITY(1,1),   
 StudentID INT NOT NULL,   
    StudentFirstName VARCHAR(50) NOT NULL,
	StudentLastName VARCHAR(50) NULL,
	StudentDOB DATE NOT NULL,
	StudentMobile VARCHAR(50) NULL,
	StudentRollNo INT NOT NULL,
    DepartmentID INT FOREIGN KEY (DepartmentID)
    REFERENCES Enrol.Department (DepartmentID) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	AddressID INT FOREIGN KEY (AddressID)
    REFERENCES Enrol.Address (AddressID) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	InsertedOn datetime default getdate() NULL
)
INSERT INTO StudCopy
SELECT * FROM Enrol.Student
SELECT * FROM StudCopy

/*
b.	Create a new table DeptCopy and copy only the schema from Department table.
*/
CREATE TABLE DeptCopy
(  
	DeptCopyID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    DepartmentID INT NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL, 
	DepartmentDesc VARCHAR(150) NULL,
	DepartmentCap INT NOT NULL,
	InsertedOn datetime default getdate() NOT NULL
)
SELECT * FROM DeptCopy

/*
c.	Create a new table DepartmentCopy and copy all records from Department table.
*/
CREATE TABLE DepartmentCopy
(  
	DepartmentCopyID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    DepartmentID INT NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL, 
	DepartmentDesc VARCHAR(150) NULL,
	DepartmentCap INT NOT NULL,
	InsertedOn datetime default getdate() NOT NULL
)
INSERT INTO DepartmentCopy
SELECT * FROM Enrol.Department
SELECT * FROM DepartmentCopy

/*
d.	Create a new table AddrCopy and copy only the schema from Address table.
*/
CREATE TABLE AddrCopy
(  
	AddrCopyID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	AddressID INT NOT NULL,   
    StreetAddress VARCHAR(50)NULL, 
	City VARCHAR(50) NOT NULL,
	State VARCHAR(50) NULL,
	PostalCode VARCHAR(50) NULL, 
	Country VARCHAR(50) NOT NULL,
	InsertedOn datetime
)
SELECT * FROM AddrCopy
DROP TABLE AddrCopy
/*
e.	Create a new table AddrCopy and copy all the records from Address table.
*/
CREATE TABLE AddrCopy
(  
	AddrCopyID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	AddressID INT NOT NULL,   
    StreetAddress VARCHAR(50)NULL, 
	City VARCHAR(50) NOT NULL,
	State VARCHAR(50) NULL,
	PostalCode VARCHAR(50) NULL, 
	Country VARCHAR(50) NOT NULL,
	InsertedOn datetime
)
INSERT INTO AddrCopy
SELECT * FROM Enrol.Address
SELECT * FROM AddrCopy

/*
f.	Create a new table LecturerCopy and copy all the records from Lecturer table.
*/
CREATE TABLE LecturerCopy
( 
	LecturerCopyID INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
	LecturerID INT NOT NULL,   
    LecturerName VARCHAR(50) NOT NULL, 
	LecturerHighestQualification VARCHAR(150)NULL,
	LecturerAge VARCHAR(50) NOT NULL,
    DepartmentID INT FOREIGN KEY (DepartmentID)
    REFERENCES Enrol.Department (DepartmentID) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	InsertedOn datetime NULL
)
INSERT INTO LecturerCopy
SELECT * FROM Enrol.Lecturer
SELECT * FROM LecturerCopy

/*
13)
*/
/*
a.	Delete all the records from LecturerCopy table.
*/
TRUNCATE TABLE LecturerCopy
SELECT * FROM LecturerCopy

/*
b.	Delete all the student information for the students who belong to IT department.
*/
DELETE FROM Enrol.Student WHERE DepartmentID = 1;
SELECT * FROM Enrol.Student;

/*
c.	Delete all the student information for the students who belong to Indonesia country.
*/
DELETE FROM Enrol.Address WHERE Country = 'Indonesia';
SELECT * FROM Enrol.Student;

/*
d.	Delete all the student information for the student who belongs to Nanshi city.
*/
DELETE FROM Enrol.Student WHERE AddressID = 13;
SELECT * FROM Enrol.Student;

/*
e.	Delete all the student information for the student who belongs to Bretagne state.
*/
DELETE FROM Enrol.Student WHERE exists (SELECT * FROM  Enrol.Address where Address.AddressID = Student.AddressID and Address.State = 'Bretagne');
SELECT * FROM Enrol.Student;
/*
14)
*/
/*
a.	Update StudentMobile for those students who belongs to Department ME.
*/
SELECT * FROM enrol.Student WHERE DepartmentID = 4;
UPDATE enrol.Student SET StudentMobile = '123456789' WHERE DepartmentID = 4;

/*
b.	Update Student DepartmentID as 3, for the StudentID=42.
*/
SELECT * FROM enrol.Student WHERE StudentID = 42;
UPDATE enrol.Student SET DepartmentID = 3 WHERE StudentID = 42;

/*
c.	Update LecturerHighestQualification as PHd for the Lecturer whose LecturerHighestQualification= PhD.
*/
SELECT * FROM enrol.Lecturer WHERE LecturerHighestQualification = 'PhD';
UPDATE enrol.Lecturer SET LecturerHighestQualification = 'PHd' WHERE 	LecturerHighestQualification = 'PhD';

/*
d.	Update PostalCode as 00000 for the Address which contain NULL as a PostalCode.
*/
SELECT * FROM enrol.Address WHERE PostalCode IS NULL;
UPDATE enrol.Address SET PostalCode = '00000' WHERE PostalCode IS NULL;
SELECT * FROM enrol.Address WHERE PostalCode= '00000';

/*
e.	Update StudentLastName as Paul for the Student whose Name is Jerry.
*/
SELECT * FROM enrol.Student WHERE StudentFirstName = 'Jerry';
UPDATE enrol.Student SET StudentLastName = 'Paul' WHERE StudentFirstName = 'Jerry';
