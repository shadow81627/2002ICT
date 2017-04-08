update employee 
set    SUPERSSN = ( select  mgrssn
		    from    department d, dept_locations l
		    where   d.dnumber = l.dnumber and
        		    l.dlocation = 'Stafford' ) 
where  name = 'James Borg'
/* Question 10 */
