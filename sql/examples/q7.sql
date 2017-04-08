
select e.name, e.ssn
from employee e
where e.ssn in ( select d.essn
		 from dependent d
		 group by d.essn
		 having count(*) = 1 )
order by e.name
/* Question 7 */
