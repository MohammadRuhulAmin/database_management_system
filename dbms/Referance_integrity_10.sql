Two tables are connected with Foreign key. The first table is called Base table or Referenced Table and the Second table is called Referencing table.
In referenced table has primary key and the referancing table has foreign key.


Referanced Table vs Referencing Table   
--------------------------------------

1. insert - no violation 
2. Delete - May cause violation 
    Solution 1 - on delete cascade 
    Solution 2 - on delete SET NULL  (if foreign key is not the primary key of referencing table)
    Solution 3 - on delete NO Action (from both table no data will be deleted)

3. updation - violation can be done in some case.


On delete Cascade Example : 

CREATE TABLE Department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    empid INT NOT NULL,
    CONSTRAINT employee_eid_fk FOREIGN KEY(empid) REFERENCES employee(eid)
    ON DELETE CASCADE 
)

ON DELETE SET NULL Example:

CREATE TABLE Department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    empid INT,
    CONSTRAINT employee_eid_fk FOREIGN KEY(empid) REFERENCES employee(eid)
    ON DELETE SET NULL  
)

ON DELETE NO ACTION Example : 

CREATE TABLE Department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    empid INT,
    CONSTRAINT employee_eid_fk FOREIGN KEY(empid) REFERENCES employee(eid)
    ON DELETE RESTRICT  
)
