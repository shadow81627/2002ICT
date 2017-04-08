create view  sum_location (location_name, number_of_employees)
as
	select location_name, count (*)
	from  employee_location
	group by location_name
/* Question 12 */
