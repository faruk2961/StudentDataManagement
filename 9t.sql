SELECT  LecturerID, LecturerName, LecturerHighestQualification, (YEAR(CURRENT_TIMESTAMP)- YEAR(LecturerAge)) AS LecturerAge FROM enrol.Lecturer;