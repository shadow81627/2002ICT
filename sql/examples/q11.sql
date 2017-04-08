create view  employee_location (name, ssn,location_name)
as
	select distinct e.name, e.ssn, p.plocation
	from employee e, works_on w, project p
	where e.ssn = w.essn and
	      w.pno = p.pnumber
/* Question 11 */
