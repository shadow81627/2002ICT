    select  min(salary), max(salary), avg(salary)
    from employee e, department d 
    where e.ssn = d.mgrssn
/* Question 3 version b */
