select e.name, e.ssn
from employee e
where not exists (select * from project p
	          where p.plocation = 'Stafford' and
	                not exists ( select * from works_on w
				       where  e.ssn = w.essn and
					      w.pno = p.pnumber)
                 )
/* Question 4 */
