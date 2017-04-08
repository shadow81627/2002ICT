select p1.pnumber, p2.pnumber, p1.plocation
from project p1, project p2
where p1.plocation=p2.plocation and
      p1.pnumber < p2.pnumber

/* Question 5 */
