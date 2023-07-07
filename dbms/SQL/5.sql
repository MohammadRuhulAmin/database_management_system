Difference Between Nested Sub query, Correlated Subquery , and Joins (cross join + condition)


Question : Write a query to get those Employees who are assigned in specific department.
There are two tables. One is Employee and another one is Department table.


NSQuery : 
SELECT * FROM Employee 
WHERE Eid in(SELECT Eid FROM Department)


CorrelatedSQuery :
SELECT * FROM Employee WHERE 
Exists(SELECT id FROM Department WHERE Employee.eid = Department.eid)


CROSS JOIN : 
SELECT attributes FROM Emp,dept 
WHERE emp.eid = dept.eid;



