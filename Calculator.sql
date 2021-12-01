CREATE TABLE variables (
  variable CHAR(1),
  value INT
);

CREATE TABLE calculations (
  operand1 CHAR(1),
  operator CHAR(1),
  operand2 CHAR(1)
);

INSERT INTO variables VALUES ('a',10);
INSERT INTO variables VALUES ('b',5);

INSERT INTO calculations VALUES ('a','+','b');
INSERT INTO calculations VALUES ('a','*','b');
INSERT INTO calculations VALUES ('a','-','b');
INSERT INTO calculations VALUES ('a','/','b');

SELECT c.operand1,c.operator,c.operand2,case
    when c.operator='+' then a.value+b.value
    when c.operator='-' then a.value-b.value
    when c.operator='*' then a.value*b.value
    when c.operator='/' AND b.value=0 then 'Error: division by 0'
    when c.operator='/' AND b.value!=0 then round(a.value/b.value,2)
    end AS result
FROM calculations c LEFT JOIN variables a ON c.operand1=a.variable 
LEFT JOIN variables b ON c.operand2=b.variable;
