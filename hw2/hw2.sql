
// #1
SELECT Count(Emp_ID) from Trip where Emp_ID in (SELECT ID from Employee where Dept in (SELECT Code from Dept where Name = 'Marketing'));
// #2
SELECT Name from Employee where ID in (SELECT Receipt_No from Expense where Submitted > '12-JAN-97');
// #3
SELECT Contact, Name from Dept where Code in (SELECT Dept from Employee where ID in (SELECT Emp_ID from Trip where Est_Cost = (SELECT MAX(Est_Cost) from Trip)));
// #4
SELECT Name from Dept where Code in (SELECT Dept from Employee where ID not in (SELECT Emp_ID from Trip));
// #5
SELECT To_City from Trip where ID in(SELECT Trip_ID from Expense where Amount < (SELECT AVG(Amount) from Expense where Type = 'T'));

//Change content of table without deleting table
Update Trip Set Emp_ID = 16 where ID = 8;

SELECT COUNT(EMP_ID) FROM Trip where EMP_ID IN(SELECT ID FROM Employee WHERE Dept IN(SELECT Code FROM Dept where Name = 'Stdnt'));
