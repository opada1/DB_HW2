DECLARE
  my_date DATE := SYSDATE;
  v_last_day DATE;

BEGIN
  DBMS_OUTPUT.PUT_LINE('Today''s date: ' || TO_CHAR(my_date, 'Month DD, YYYY'));

  v_last_day := LAST_DAY(my_date);

  DBMS_OUTPUT.PUT_LINE('Last day of the month: ' || TO_CHAR(v_last_day, 'Month DD, YYYY'));
  
END;