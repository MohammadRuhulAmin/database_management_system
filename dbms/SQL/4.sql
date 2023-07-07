Nested Subquery : 
    it is a bottom up approach. 
    means the inner query will execute first then the outer query will execute. 

    SELECT * FROM Employee WHERE Eid IN(SELECT E_id FROM department)

    In nested subquery the relation build up by IN or NOT IN Operators.
