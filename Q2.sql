CREATE TABLE countries (
  country_name VARCHAR2(50),
  median_age NUMBER(6, 2)
);

INSERT INTO countries (country_name, median_age) VALUES ('Japan', 48.2);
INSERT INTO countries (country_name, median_age) VALUES ('USA', 38.5);
INSERT INTO countries (country_name, median_age) VALUES ('Germany', 42.1);

DECLARE
  country_name countries.country_name%TYPE;
  median_age countries.median_age%TYPE;
BEGIN
  SELECT country_name, median_age
  INTO country_name, median_age
  FROM countries
  WHERE country_name = 'Japan';

  DBMS_OUTPUT.PUT_LINE('The median age in ' || country_name || ' is ' || median_age || '.');
END;