
select d.dname 
from department d
where not exists ( select * from employee e
		   where  e.dno = d.dnumber and
		          e.ssn not in 
                                (select w.essn from works_on w)
                 )
/* Question 8 */
