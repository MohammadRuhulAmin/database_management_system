
Topic : 
    Correlated SubQuery (Synchronized Query)
    -> It is a subquery that uses values from outer query. It follows top to down approach. Means Top is Outter Query and down is inner query 
    Outer Query(Inner Query) = Top(Down) 
    Between inner query and outer query there is a relation between them. That is why it is called Correlated sub query.

    Example of Correlated Subquery:
        Qn: Find All employees details who work in a department.

        SELECT * FROM Employees E WHERE EXISTS(
            SELECT * FROM Department D WHERE D.Eid = E.Eid 
        );










Tutorial Link : https://www.youtube.com/watch?v=0d419Vo2Po4&list=PLxCzCOWd7aiHqU4HKL7-SITyuSIcD93id&index=11