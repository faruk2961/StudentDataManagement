
SELECT CONCAT(StudentFirstName,' ',StudentLastName) AS StudentFullName, 
(YEAR(CURRENT_TIMESTAMP)- YEAR(StudentDOB)) AS StudentAge, StudentMobile FROM enrol.Student
WHERE (YEAR(CURRENT_TIMESTAMP)- YEAR(StudentDOB)) > 23;

