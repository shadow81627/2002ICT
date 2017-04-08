--Q1: Select the name and address of each male employee
SELECT E.name, E.address 
FROM Employee E
WHERE sex = 'M';


-- Q2: Select the name and address of each employee who works for a department called ‘Research’
-- 1) Use a join query
SELECT E.name, E.address
FROM Employee E, Department D
WHERE D.dname = 'Research' 
AND D.dnumber = E.dno;

-- 2) Use a nested query 
SELECT E.name, E.address
FROM Employee E
WHERE E.dno IN (
				SELECT dnumber
				FROM Department
				WHERE dname = 'Research'
				);

--Q3: Select the name and address of each male employee who works for a department called
--‘Research’ and has a dependent
--1) Use a join query
SELECT E.name, E.address
FROM Employee E, Department Dp, Dependent D
WHERE Dp.dname = 'Research' AND
Dp.dnumber = E.dno AND
E.sex = 'M' AND
E.ssn = D.essn;

--2) Use a nested query
SELECT E.name, E.address
FROM Employee E, Department D
WHERE D.dname = 'Research' AND
D.dnumber = E.dno AND
E.sex = 'M' AND
E.ssn IN (
			SELECT Dp.essn
			FROM Dependent Dp
			); 

--more nested stuff
SELECT E.name, E.address
FROM Employee E
WHERE E.sex = 'M' AND
E.ssn IN (
			SELECT Dp.essn
			FROM Dependent Dp
			) AND 
E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			);
			
--Q4: Select the name and address of each male employee who works for a department called
--‘Research’ and has at least two dependents
SELECT E.name, E.address
FROM Employee E
WHERE E.sex = 'M' AND
E.ssn IN (
			SELECT Dp.essn
			FROM Dependent Dp
			GROUP BY Dp.essn
			HAVING COUNT(Dp.essn) > 1
			) AND 
E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			);

--Q5: Select the name and address of each male employee who works for a department called
--‘Research’ and has no dependent
SELECT E.name, E.address
FROM Employee E
WHERE E.sex = 'M' AND
NOT EXISTS(
			SELECT *
			FROM Dependent Dp
			WHERE E.ssn = Dp.essn
			) AND 
E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			);

			
--Q6: List in alphabetical order the name and address of those employees who work for a
--department called ‘Research’
--1) Use a join query
SELECT E.name, E.address 
FROM Employee E, Department D
WHERE D.dname = 'Research' 
AND D.dnumber = E.dno 
ORDER BY E.name, E.address;

--2) Use a nested query
SELECT E.name, E.address 
FROM Employee E
WHERE E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			)
ORDER BY E.name, E.address;

--3) Eliminate duplicate tuples
SELECT E.name, E.address 
FROM Employee E
WHERE E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			)
ORDER BY E.name, E.address;

--Q7: List the sum, average, minimum and maximum of salary values of employees who work for
--a department called ‘Research’
SELECT SUM(E.salary), AVG(E.salary), MIN(E.salary), MAX(E.salary)
FROM Employee E
WHERE E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			);

--Q8: List the department number and the average salary for each department
SELECT D.dnumber, SUM(E.salary)
FROM Employee E, Department D
WHERE D.dnumber = E.dno
GROUP BY D.dnumber;
			
--Q9: For each project, retrieve the project name and the number of employees from the ‘Research’
--department who work on the project		
SELECT P.pname, COUNT(E.ssn)
FROM Project P, Employee E, Works_on W
WHERE E.ssn = W.essn AND 
P.pnumber = W.pno AND
E.dno IN (
			SELECT dnumber
			FROM Department
			WHERE dname = 'Research'
			)
GROUP BY pname;








			
			
			
			
			