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
    when c.operator='/' and b.value=0 then 'Error: division by 0'
    when c.operator='/' and b.value!=0 then round(a.value/b.value,2)
    end as result
from calculations c left join variables a on c.operand1=a.variable 
left join variables b on c.operand2=b.variable;
