/* The COMPANY database schema (based on the textbook) */

/* Drop all tables */

DROP VIEW supervision;

ALTER TABLE employee DROP CONSTRAINT employee_dno;
ALTER TABLE employee DROP CONSTRAINT employee_superssn;
ALTER TABLE department DROP CONSTRAINT department_mgrssn;
ALTER TABLE dept_locations DROP CONSTRAINT dept_locations_dnumber;
ALTER TABLE project DROP CONSTRAINT project_dnum;
ALTER TABLE works_on DROP CONSTRAINT works_on_essn;
ALTER TABLE works_on DROP CONSTRAINT works_on_pno;
ALTER TABLE dependent DROP CONSTRAINT dependent_essn


DROP TABLE dept_locations;
DROP TABLE works_on;
DROP TABLE dependent;
DROP TABLE project;
DROP TABLE department;
DROP TABLE employee;


