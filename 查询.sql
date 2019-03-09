

/*
基本语法
*/
SELECT * from employees; 

SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES;

-- 空值参与运算，结果是空
SELECT 1 + NULL FROM dual;

-- 双引号引起别名，可以控制大小写
SELECT EMPLOYEE_ID AS "empId" from employees; 

-- 别名中间有空格，必须加双引号
SELECT EMPLOYEE_ID AS "emp Id" from employees; 











