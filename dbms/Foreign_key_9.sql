Foreign Key : 
    It is an attribute of a table and refer ti primary key of another table . 
    It holds the referencial integrity.Referential integrity is a term used in database design to 
    describe the relationship between two tables.

    Referential integrity refers to the relationship between tables. Because each table in a database must have a primary key,
    this primary key can appear in other tables because of its relationship to data within those tables. 
    When a primary key from one table appears in another table, it is called a foreign key.

    Foreign keys join tables and establish dependencies between tables. tables can form a hierarchy of dependencies in such a way that 
    if you change or delete a row in one table, you destroy the meaning of rows in other tables. For example, the following figure shows that the customer_num column of 
    the customer table is a primary key for that table and a foreign key in the orders and cust_call tables. Customer number 106, George Watson™, is referenced in both the orders 
    and cust_calls tables. If customer 106 is deleted from the customer table,
    the link between the three tables and this particular customer is destroyed.
