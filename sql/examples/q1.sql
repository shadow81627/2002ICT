select e.name, e.ssn
from employee e
where e.superssn in
	(select w.essn from works_on w
	 where  w.hours > 10 )
/* Question 1 */
