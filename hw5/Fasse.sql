SET SERVEROUTPUT ON;

/* #1 */
Declare
    INSERT_Emp_ID      INTEGER;
    INSERT_To_City     CHAR(15);
    INSERT_Dep_Date    DATE;
    INSERT_Return_Date DATE;
    INSERT_Est_Cost    DECIMAL(6,2);
    FOUND_Emp_ID       NUMBER;
    MAX_ID             NUMBER;

Begin
    /* #2 */
    INSERT_Emp_ID      := &INSERT_Emp_ID;
    INSERT_To_City     := UPPER('&INSERT_To_City');
    INSERT_Dep_Date    := To_Date('&INSERT_Dep_Date', 'DD/MM/YYYY');
    INSERT_Return_Date := To_Date('&INSERT_Return_Date', 'DD/MM/YYYY');
    INSERT_Est_Cost    := &INSERT_Est_Cost;

    DBMS_OUTPUT.PUT_LINE('[INT 4] EMPLOYEE ID: '   || INSERT_Emp_ID);
    DBMS_OUTPUT.PUT_LINE('[CHAR 15] TO CITY: '     || INSERT_To_City);
    DBMS_OUTPUT.PUT_LINE('[DD/MM/YYYY] Dep DATE: ' || INSERT_Dep_Date);
    DBMS_OUTPUT.PUT_LINE('[DD/MM/YYYY] RET DATE: ' || INSERT_Return_Date);
    DBMS_OUTPUT.PUT_LINE('[DEC 6,2] EST COST: '    || INSERT_Est_Cost);

    SELECT count (*) INTO FOUND_Emp_ID FROM Trip JOIN Employee WHERE Employee.ID = Trip.Emp_ID AND Trip.Emp_ID = INSERT_Emp_ID;

    IF (FOUND_Emp_ID = 0) THEN
      DBMS_OUTPUT.PUT_LINE('Invalid Employee ID');
      DBMS_OUTPUT.PUT_LINE('The Program will now be terminated');
    Else
      DBMS_OUTPUT.PUT_LINE('Employee ID is Valid');

      /* #3 */
      IF (INSERT_RETURN_DATE < INSERT_Dep_Date) THEN
        DBMS_OUTPUT.PUT_LINE('Dep_Date is before Return_Date');
      Else
        DBMS_OUTPUT.PUT_LINE('Everything Checks out');
      END IF;

      /* #4 */
      IF (INSERT_EST_COST < 1.00 OR INSERT_Est_Cost > 4000.00) THEN
        DBMS_OUTPUT.PUT_LINE('Invalid amount');
        DBMS_OUTPUT.PUT_LINE('Make sure the value is between 1.00 and 4000.00');
      Else
        DBMS_OUTPUT.PUT_LINE('Est_Cost received');
      END IF;

      /* #5 */
      SELECT MAX(ID) INTO MAX_ID FROM Trip;
      MAX_ID := MAX_ID + 1;
      INSERT INTO Trip (ID,     Emp_ID,        To_City,        Dep_Date,        Return_Date,        Est_Cost)
      VALUES           (MAX_ID, INSERT_Emp_ID, INSERT_To_City, INSERT_Dep_Date, INSERT_Return_Date, INSERT_Est_Cost);

      DBMS_OUTPUT.PUT_LINE('Emploee has been successfully added to Trip Table');
    END IF;
End;
/
