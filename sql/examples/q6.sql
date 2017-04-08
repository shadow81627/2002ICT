select e.ssn, e.name 
from employee e
where e.ssn in (select w.essn from works_on w
                where  w.hours >10) and
      e.ssn in (select d.mgrssn from department d)
/* Question 6 */
