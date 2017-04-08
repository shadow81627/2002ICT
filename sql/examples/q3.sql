select min(salary), max(salary), avg(salary)
from employee e
where e.ssn in (select mgrssn from department)
/* Question 3 */
