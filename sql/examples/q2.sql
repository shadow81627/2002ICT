select e.name from employee e
where e.sex = 'F' and
      e.ssn in
	(select d.mgrssn from department d)
/* Question 2 */
