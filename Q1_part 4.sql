DECLARE
  my_date DATE := SYSDATE;
  v_last_day DATE;

BEGIN
  DBMS_OUTPUT.PUT_LINE('Today''s date: ' || TO_CHAR(my_date, 'Month DD, YYYY'));

  v_last_day := LAST_DAY(my_date);

  DBMS_OUTPUT.PUT_LINE('Last day of the month: ' || TO_CHAR(v_last_day, 'Month DD, YYYY'));

  my_date := my_date + 45;

  DBMS_OUTPUT.PUT_LINE('New date after adding 45 days: ' || TO_CHAR(my_date, 'Month DD, YYYY'));

  DBMS_OUTPUT.PUT_LINE('Number of months between the two dates: ' || MONTHS_BETWEEN(my_date, SYSDATE));

END;