CREATE TABLE Employee
(
  ID Integer PRIMARY KEY,
  Name Char(15) NOT NULL,
  Dept Char(5) NOT NULL,
  FOREIGN KEY (Dept) REFERENCES Dept(Code),
  Join_date Date
  );

CREATE TABLE Dept
(
  Code Char(5) PRIMARY KEY,
  NAME CHAR(10) NOT NULL,
  PHONE CHAR(8) NOT NULL,
  Contact CHAR(15)
  );

CREATE TABLE Trip
(
  ID Integer PRIMARY KEY,
  Emp_ID Integer,
  FOREIGN KEY (Emp_ID) REFERENCES Employee(ID),
  TO_CITY Char(15),
  Dep_Date Date NOT NULL,
  Return_Date Date NOT NULL,
  Est_Cost Decimal(6,2) NOT NULL,
  CHECK (Est_Cost >= 1.00 AND Est_Cost <= 4000.00)
  );

CREATE TABLE Expense
(
  Trip_ID Integer,
  FOREIGN KEY (Trip_ID) REFERENCES Trip(ID),
  Receipt_No Integer PRIMARY KEY,
  Amount Decimal(6,2) NOT NULL,
  CHECK (Amount >= 1.00),
  Type Char(2),
  Submitted Date
  )
/*('T', 'H', 'M')*/cl scr

INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(08, 'Hank', 00000, '12-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(09, 'Peggy', 00001 , '13-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(10, 'Bobby', 00010, '14-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(11, 'Luanne', 00011, '11-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(12, 'Lady Bird', 00100, '12-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(13, 'Dale', 00101, '15-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(14, 'Bill', 00110, '16-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(15, 'Boomhauer', 00111, '14-Feb-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(16, 'Joseph', 01000, '14-Jan-1997');
INSERT INTO Employee(ID, Name, Dept, Join_date) VALUES(17, 'Lucky', 01001, '02-Jan-1997');

INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00000, 'Sales', '752-1111', 'Hank');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00001, 'Spnsh', '763-1234', 'Peggy');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00010, 'Stdnt', '856-9871', 'Bobby');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00011, 'Stdnt', '965-9000', 'Luanne');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00100, 'Dog', '678-9010', 'Lady Bird');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00101, 'BugX', '495-9111', 'Dale'); /*Change This*/
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00110, 'Army', '522-4987', 'Bill');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(00111, 'Rnger', '755-5555', 'Boomhauer');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(01000, 'Stdnt', '111-1111', 'Joseph');
INSERT INTO Dept(Code, NAME, PHONE, Contact) VALUES(01001, 'Hippy', '678-8907', 'Lucky');

INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(0, 08, 'Arlen, TX', '12-Jan-1997', '12-Jan-2009', '1000.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(1, 09, 'Arlen, TX', '12-Jan-1997', '11-Jan-2001', '667.80');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(2, 08, 'Garland, TX', '12-Jan-1986', '11-Jan-1997', '4000.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(3, 11, 'Allen, TX', '12-Jan-1999', '11-Jan-2000', '2000.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(4, 10, 'Sachse, TX', '12-Jan-2000', '06-May-2010', '3000.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(5, 08, 'Odessa, TX', '12-Jan-2009', '06-May-2010', '2500.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(6, 11, 'Waco, TX', '12-Jan-2000', '13-Jan-2000', '1050.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(7, 09, 'Houston, TX', '12-Jan-2001', '12-Jan-2001', '1550.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(8, 16, 'Rowlett, TX', '12-Jan-1998', '06-May-2010', '1670.00');
INSERT INTO Trip(ID, Emp_ID, To_City, Dep_Date, Return_Date, Est_Cost) VALUES(9, 10, 'Rockwall, TX', '12-Jan-1991', '06-May-2010', '1776.00');

INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(0, 10, 1, 'T', '11-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(1, 11, 2, 'H', '12-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(2, 12, 3, 'M', '13-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(3, 13, 5, 'T', '14-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(4, 14, 3, 'H', '15-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(5, 15, 6, 'M', '15-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(6, 16, 9, 'T', '16-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(7, 17, 8, 'H', '17-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(8, 18, 1, 'M', '18-Jan-1997');
INSERT INTO Expense(Trip_ID, Receipt_No, Amount, Type, Submitted) VALUES(9, 19, 2, 'H', '19-Jan-1997');
