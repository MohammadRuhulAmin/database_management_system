

Find the Nth Highest Salary using SQL : 
Using Correlated Sub query : 

SELECT E1.id,E1.Salary FROM Employee E1
WHERE N-1 = (
    SELECT COUNT(DISTINCT E2.Salary) FROM Employee E2
    WHERE E2.Salary > E1.Salary 
)





Tutorial Link : https://www.youtube.com/watch?v=fh4yBn0oTaM&list=PLxCzCOWd7aiHqU4HKL7-SITyuSIcD93id&index=14

