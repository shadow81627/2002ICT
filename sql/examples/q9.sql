insert into department
 	select  'Rockets',3, e.ssn, NULL
 	from employee e
 	where e.name = 'Ahmad Jabbar'
/* Question 9 first part */
