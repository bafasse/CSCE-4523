// #1
SELECT Type, SUM(Amount) FROM Expense GROUP BY Type ORDER BY SUM(Amount) ASC;

// #2 **SHOWS NUMBER BUT NOT WHICH ID**
SELECT Count(Emp_ID) FROM Trip JOIN Employee ON Trip.Emp_ID = Employee.ID JOIN Dept ON Employee.Dept = Dept.Code GROUP BY Dept.Code;

// #3
SELECT COUNT(DISTINCT(t1.Dep_Date)) FROM Trip t1, Trip t2 WHERE t1.Dep_Date = t2.Return_Date;

// #4
SELECT Name, Dep_Date, TO_CITY, Submitted FROM Employee JOIN Trip ON Employee.ID = Trip.Emp_ID JOIN Expense ON Trip.ID = Expense.Trip_ID;

// #5
SELECT Trip_ID, Est_Cost, Amount FROM Trip JOIN Expense ON Trip.ID = Expense.Trip_ID WHERE Est_Cost > Amount;

update trip set Return_Date='12-Jan-2009' where ID=0;
