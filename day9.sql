DROP VIEW Department_Info;
DROP VIEW Research_emp;
DROP VIEW Project_Infomation;
DROP VIEW Project_Infomation2;

/*
1. List the name and location of departments whose manager has two or less
dependents. 
*/
SELECT D.dname, L.dlocation
FROM Department D, Dept_locations L
WHERE D.mgrssn IN (
			SELECT Dp.essn
			FROM Dependent Dp
			GROUP BY Dp.essn
			HAVING COUNT(Dp.essn) < 2) 
AND D.dnumber = L.dnumber;

/* 
2. List the names and ssn-s of employees whose supervisor works in a different
department. 
*/
SELECT E.name, E.ssn
FROM Employee E, Employee S
WHERE E.dno != S.dno -- or we could use <> instead of !=
AND E.superssn = S.ssn;

/*
3. List for each project the project name, the project number, and the total number of
hours spent by all the employees who work on that project, provided the number of
hours is greater than or equal to 30 
*/
SELECT P.pname, P.pnumber, SUM(W.hours) AS Total_Hours
FROM Project P, Works_on W
WHERE P.pnumber = W.pno
GROUP BY P.pname, P.pnumber
HAVING SUM(W.hours) >= 30;

/*
4. Create a view that has the department name, manager name, and manager salary
for every department.
*/
CREATE VIEW Department_Info(Dept_name, Mgr_name, Mgr_salary) AS 
SELECT D.dname, E.name, E.salary
FROM Department D, Employee E
WHERE E.ssn = D.mgrssn;

/*
5. Create a view that has the employee name, supervisor name, and employee salary
for each employee who works in the 'Research' department.
*/
CREATE VIEW Research_emp(name, sprname, salary) AS
SELECT E.name, S.name, E.salary
FROM Employee E, Employee S
WHERE E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			) AND
E.superssn = S.ssn;

/*
6. Create a view that has project name, controlling department name, number of
employees, and total hours worked per week on the project for each project.
*/
CREATE VIEW Project_Infomation(Project_Name, Dept_Name, Number_Employees, Total_Hours) AS
SELECT P.pname, D.dname, COUNT(*) AS Number_Employees, SUM(W.hours) AS Total_Hours
FROM Project P, Department D, Works_on W
WHERE P.pnumber = W.pno
AND P.dnum = D.dnumber
GROUP BY P.pname, D.dname

/*
7. Create a view that has project name, controlling department name, number of
employees, and total hours worked per week on the project for each project with more
than one employee working on it.
*/
CREATE VIEW Project_Infomation2(Project_Name, Dept_Name, Number_Employees, Total_Hours) AS
SELECT P.pname, D.dname, COUNT(*) AS Number_Employees, SUM(W.hours) AS Total_Hours
FROM Project P, Department D, Works_on W
WHERE P.pnumber = W.pno
AND P.dnum = D.dnumber
GROUP BY P.pname, D.dname
HAVING COUNT(*) > 1;

SELECT * FROM Department_Info;
SELECT * FROM Research_emp;
SELECT * FROM Project_Infomation;
SELECT * FROM Project_Infomation2;



