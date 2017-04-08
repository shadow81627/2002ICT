select D.DNAME, D.DNUMBER, D.MGRSSN, L.DLOCATION
from DEPARTMENT D, DEPT_LOCATIONS L
where  D.DNUMBER = L.DNUMBER
/* query to test Question 9 result */
