// 1
SELECT Name, Trim(To_Char(Dep_Date, 'Day')) "Dep_Date", Trim(To_Char(Return_Date, 'Day')) "Return_Date", Return_Date - Dep_Date "Days" FROM Trip JOIN Employee ON Employee.ID = Trip.Emp_ID WHERE Trim(To_Char(Dep_Date, 'Day')) = 'Friday';

// 2
SELECT Return_Date FROM Trip WHERE Return_Date BETWEEN sysdate - 7 AND sysdate AND TRIM(To_Char(Return_Date, 'Day')) = 'Sunday' OR  TRIM(To_Char(Return_Date, 'Day')) = 'Saturday';

// 3
SELECT DECODE(Type,'T ','Transportation','H ','Hotel','M ','Meals') "Type", Sum(Amount) "Amount" FROM Expense WHERE TRIM(TO_CHAR(Submitted,'YYYY')) = 2017 GROUP BY Type;

// 4
SELECT NVL(Name,0) "Name", Count(Trip.ID) "Trip.ID" FROM Trip JOIN Employee ON Employee.ID = Trip.Emp_ID GROUP BY Name;

// 5
CREATE VIEW Defaulters AS SELECT Name, Return_Date, To_Date(Submitted, 'DD/MM/YYYY') - To_Date(Return_Date, 'DD/MM/YYYY') "Days" FROM Employee, Trip, Expense WHERE Expense.Submitted > Trip.Return_Date + 10 AND Trip.Emp_ID = Employee.ID AND Trip.ID = Expense.Trip_ID;




// sysdate gives current date
Select To_char (sysdate, 'Day') from Dual;

// 1
select extract(day from dep_date) from trip; ** only gets date number **
Select To_char (dep_date, 'Day') from trip;  ** prints out day of the week **

SELECT Name, Dep_Date, Return_Date, MONTHS_BETWEEN (TO_DATE(Dep_Date,'DD-MMM-YY'),TO_DATE(Return_Date,'DD-MMM-YY') ) "Days" FROM Trip, Employee WHERE To_Char (Dep_Date, 'Day') = 'Friday';

SELECT Name, Dep_Date, Return_Date FROM Trip, Employee WHERE Trim(To_Char (Dep_Date, 'Day')) = 'Friday';

** prints correct person but Dep_Date and Return_Date are the same **

// 2
** Prints out if day is a weekend date **
SELECT Return_Date FROM Trip WHERE TRIM(To_Char(Return_Date, 'Day')) = 'Sunday' OR  TRIM(To_Char(Return_Date, 'Day')) = 'Saturday';
** prints if date is within the last week
SELECT Return_Date FROM Trip WHERE Return_Date BETWEEN sysdate - 7 AND sysdate;




select replace(replace(replace(type 'M','meal'), type 'H','Hotel'),type 'T','Transportation') type.sum(amount)from expense where submitted between '01-JAN-17' and '31-DEC-17' group by type;
