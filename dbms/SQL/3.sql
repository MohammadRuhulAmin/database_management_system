
Topic : 
    Correlated SubQuery (Synchronized Query)
    -> It is a subquery that uses values from outer query. It follows top to down approach. Means Top is Outter Query and down is inner query 
    Outer Query(Inner Query) = Top(Down) 
    Between inner query and outer query there is a relation between them. That is why it is called Correlated sub query.
    Here the outer query will execute first then the inner query will execute. For more details : Tutorial link is added ! 

    Example of Correlated Subquery:
        Qn: Find All employees details who work in a department.

        SELECT * FROM Employees E WHERE EXISTS(
            SELECT * FROM Department D WHERE D.Eid = E.Eid 
        );


    **To make relation between two query we use EXISTS or NOT EXISTS in correlated Sub Query. EXISTS and NOT EXISTS Operators are used 
    to add to relation between Outter query and inner query. 


    SELECT e.*
    FROM Employee e
    WHERE e.tenure > (
        SELECT AVG(tenure)
        FROM Employee
        WHERE department_id = e.department_id
    )
    
    is similar to the below query :

    SELECT e.*
    FROM Employee e
    WHERE EXISTS (
        SELECT 1
        FROM Employee e2
        WHERE e2.department_id = e.department_id
        GROUP BY e2.department_id
        HAVING e.tenure > AVG(e2.tenure)
    )




    










Tutorial Link : https://www.youtube.com/watch?v=0d419Vo2Po4&list=PLxCzCOWd7aiHqU4HKL7-SITyuSIcD93id&index=11,
https://www.youtube.com/watch?v=wA9GJZcB618&list=PLxCzCOWd7aiHqU4HKL7-SITyuSIcD93id&index=13