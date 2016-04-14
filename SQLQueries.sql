Question 1: SQL Query to find second highest salary of Employee
	Answer: Select MAX(Salary) from Employee WHERE Salary NOT IN (Select MAX(Salary) from Employee ); 
	
	Question 2: SQL Query to find Max Salary from each department.
	Answer: SELECT DeptID, MAX(Salary) FROM Employee  GROUP BY DeptID.
	
	Question 3: Write SQL Query to display the current date.
	Answer: SELECT GetDate(); OR SELECT curdate();
	
	Question 4: Write an SQL Query to find an employee whose Salary is equal or greater than 10000.
	Answer: SELECT EmpName FROM  Employees WHERE Salary>=10000;
	
	Question 5: Write an SQL Query to print the name of the distinct employee whose DOB is between 01/01/1960 to 31/12/1975.
	Answer: SELECT DISTINCT EmpName FROM Employees WHERE DOB  BETWEEN ‘01/01/1960’ AND ‘31/12/1975';
	
	
Question 6: Write an SQL Query to find  the year from date.
	Answer: SELECT Year(curdate());
	
	Question 7: Write an SQL Query find number of employees according to gender  whose DOB is between 01/01/1960 to 31/12/1975.
	Answer : SELECT COUNT(*), SEX from Employees  WHERE  DOB BETWEEN '01/01/1960' AND '31/12/1975'  GROUP BY SEX;
	
	Question 8: Write an SQL Query to find name of employee whose name Start with ‘M’
	Answer : SELECT * FROM Employees WHERE EmpName like 'M%';
	
	Question 9: find all Employee records containing the word "Joe", regardless of whether it was stored as JOE, Joe, or joe.
	Answer : SELECT * From Employees  WHERE  EmpName like '%JOE%';
	
	Question 10: How do you find all employees which are also manager? 
	SELECT e.name, m.name FROM Employee e, Employee m WHERE e.mgr_id = m.emp_id;
	
	Question 11: Write SQL Query to find duplicate rows in a database? 
	Answer: SELECT COUNT(*) AS DuplicateRowCount, Column1, Column2, Column3 FROM Accounts GROUP BY Column1, Column2, Column3  HAVING COUNT(*)>1;
	
	Question 12: There is a table which contains two column Student and Marks, you need to find all the students, whose marks 
	are greater than average marks i.e. list of above average students.
	Answer: SELECT Student, Marks From table Where Marks > (SELECT AVG(Marks) from table);
	
	Question 13: Find the number of account holders having the same account-type.
	Answer: SELECT AccountType, COUNT(AccountNumber) FROM Accounts GROUP BY AccountType;
	
	Question 14: What is the output for the following query SELECT * FROM Table WHERE PhoneNumber=NULL;   
	Answer: This query SELECT * FROM Table WHERE PhoneNumber=NULL;  will not select  select any rows and it will print the blank rows in the dashboard.
	
	Question 15: Find out duplicate account numbers from the accounts database in the bank.  
	Answer: SELECT AccountNumber, COUNT(AccountNumber) FROM Accounts GROUP BY AccountNumber HAVING COUNT(*)>1;
	
	Question 16: Student (Id, Name, Country) 
	             Course (CrsCode, CrsName, Type, Instructor) 
	             Results(Id, CrsCode, Grade)
	
	All the key fields are underlined.  The Type field specifies the course type, e.g. MATH, STAT, SYSC, TTMG, ELEC, etc.  The Results relation lists the grade that students (in Student relation) obtain for courses (in Course relation).  Write the following queries in SQL.
	a. Find the Id of students who take TTMG or SYSC course.
	b. Find the Id of students who take every course.
	c. Find the Id of students who take every SYSC course or take every TTMG course.
	d. Find the Names of students who take some SYSC course given by Instructor named Samuel
	
	Answer: 
	a. SELECT R.ID FROM RESULTS R JOIN COURSE C ON C.CRSCODE = R.CRSCODE WHERE C.TYPE="TTMG" OR  C.TYPE ='SYSC'
	b. SELECT X.IDFROM (SELECT ID, COUNT(*) NUMOFCOURSESTAKENFROM RESULTSGROUP BY ID) XJOIN (SELECT COUNT(*) AS COURSESAVAILABLEFROM COURSE YON X.NUMOFCOURSETAKEN = Y.COURSESAVAILABLE;    
	c. SELECT X.IDFROM (SELECT R.ID, COUNT(*) AS NUMBEROFSYSCCOURSESTAKENFROM RESULTS RJOIN COURSE CON R.CRSCODE = C.CRSCODEWHERE C.TYPE = 'SYSC'GROUP BY R.ID) XJOIN (SELECT COUNT(*) AS SYSCCLASSESAVAILABLEFROM COURSEWHERE TYPE= 'SYSC') YON X.NUMBEROFSYSCCOURSESTAKEN = Y.SYSCCLASSESAVAILABLEUNIONSELECT X.IDFROM (SELECT R.ID, COUNT(*) AS NUMBEROFTTMGCOURSESTAKENFROM RESULTS RJOIN COURSE CON R.CRSCODE = C.CRSCODEWHERE C.TYPE = 'TTMG'GROUP BY R.ID) XJOIN (SELECT COUNT(*) AS TTMGCLASSESAVAILABLEFROM COURSEWHERE TYPE = 'TTMG'
	d. SELECT X.NAMEFROM STUDENT XJOIN (SELECT R.IDFROM RESULTS RJOIN COURSE CON C.CRSCODE = R.CRSCODEWHERE C.TYPE = 'SYSC'AND C.INSTRUCTOR = 'SAMUEL ) Y ON X.ID = Y.ID;
	 

