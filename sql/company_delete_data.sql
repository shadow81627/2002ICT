/* The COMPANY database schema (based on the textbook) */

/* Delete all rows from all tables */
/* drop foreign key constraints which interlock */
/* employee and department while deleting all data */

DELETE FROM dept_locations;
DELETE FROM works_on;
DELETE FROM dependent;
DELETE FROM project;

ALTER TABLE employee DROP CONSTRAINT employee_dno;
ALTER TABLE employee DROP CONSTRAINT employee_superssn;
ALTER TABLE department DROP CONSTRAINT department_mgrssn;

DELETE FROM department;
DELETE FROM employee;

ALTER TABLE employee ADD CONSTRAINT employee_dno
    FOREIGN KEY (dno) REFERENCES  department(dnumber);

ALTER TABLE employee ADD CONSTRAINT employee_superssn
    FOREIGN KEY (superssn) REFERENCES  employee(ssn);

ALTER TABLE department ADD CONSTRAINT department_mgrssn
    FOREIGN KEY (mgrssn) REFERENCES employee(ssn);

