
/* 单行函数 */

-- 小写
SELECT LOWER('ASD') from dual;
-- 大写
SELECT UPPER('asd') from dual;

-- 首字母大写
SELECT INITCAP('hello world') from dual;

SELECT CONCAT('as', '2o3') FROM dual;

SELECT LENGTH('helloworld') from dual;

-- 第二个开始取几个 ，从1开始
SELECT SUBSTR('helloworld', 2, 3) from dual;

-- 第一次出现位置
SELECT INSTR('hellowworld', 'w') from dual;

-- 左右补齐和填充
SELECT LPAD('hello', 13, '*') from dual;
SELECT RPAD('hello', 13, '*') from dual;

-- 去掉首尾H
SELECT TRIM('H' FROM 'HelloHelloworldH') from dual;


SELECT REPLACE('ffhhffuuffttffrrffll', 'f', 'm') from dual;


-- 四舍五入
SELECT ROUND(435.4523, 2), ROUND(435.45), ROUND(435.45, -2) FROM dual;
SELECT ROUND(435.45, -1) FROM dual;

--       几位小数            取整              小数点为0，在向前取两位

-- 截断
SELECT TRUNC(435.4523, 2), TRUNC(435.45), TRUNC(435.45, -1) FROM dual;

-- 求余
SELECT MOD(1100, 100) FROM dual;
SELECT MOD(1100, 300) FROM dual;


-- 日期能做加减一个数字，不能乘除一个数字，日期与日期之间不能加只能减，相减得到天数

SELECT sysdate FROM dual;
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

-- 工作了多少天
SELECT EMPLOYEE_ID, LAST_NAME ,  SYSDATE - HIRE_DATE FROM EMPLOYEES

-- 员工已经工作了几个月 MONTHS_BETWEEN函数
SELECT EMPLOYEE_ID, LAST_NAME , MONTHS_BETWEEN(SYSDATE, HIRE_DATE) AS work_mon FROM EMPLOYEES

-- 两个月以后
SELECT ADD_MONTHS(SYSDATE, 2) FROM dual;
-- 两个月以前
SELECT ADD_MONTHS(SYSDATE, -2) FROM dual;

alter session set nls_date_language='simplified chinese';

-- 最近的下一个星期日
SELECT NEXT_DAY(SYSDATE, '星期日') FROM dual;

-- 本月最后一天
SELECT LAST_DAY(SYSDATE) FROM  dual;

-- 按照月份ROUND，过半进，不过半舍弃 
SELECT ROUND(SYSDATE, 'mm') FROM dual;
SELECT ROUND(SYSDATE, 'month') FROM dual;

-- 直接舍弃
SELECT TRUNC(sysdate, 'hh') FROM dual;



/*转换函数*/


-- 自动完成：数值 <-> 字符串 <-> 日期  

-- char -> num
SELECT 12 + '2' FROM dual;

SELECT SYSDATE + '3' FROM dual;

-- 显示转换
SELECT TO_DATE('', fmt) FROM dual;
SELECT TO_CHAR(SYSDATE, 'yyyy-mm-dd hh:mm:ss') FROM dual;

SELECT TO_CHAR(45) FROM dual;

/*通用函数*/

-- 空值转换成一切
SELECT NVL(null, 'nullnull') FROM dual;

SELECT EMPLOYEE_ID, LAST_NAME, SALARY * 12 * (1 + NVL(COMMISSION_PCT, 0)) AS year FROM EMPLOYEES

-- 类型转换时不兼容，使用转换，先计算内层，在计算外层
SELECT EMPLOYEE_ID, LAST_NAME, NVL(TO_CHAR(DEPARTMENT_ID), '无部门')  FROM EMPLOYEES

SELECT NVL2(null, '为空', '不为空') FROM dual;
SELECT NVL2(2, '为空', '不为空') FROM dual;

-- 条件判断
SELECT EMPLOYEE_ID, LAST_NAME, 
CASE DEPARTMENT_ID
WHEN 10 THEN SALARY *1.1
WHEN 20 THEN SALARY *1.2
WHEN 30 THEN SALARY *1.3
ELSE SALARY
END CASE
 FROM EMPLOYEES WHERE DEPARTMENT_ID IN (10,20,30)

-- decode实现条件判断
SELECT EMPLOYEE_ID, LAST_NAME, 
DECODE(DEPARTMENT_ID, 10, SALARY*1.1, 20, SALARY*1.2, 30, SALARY*1.3, SALARY)
 FROM EMPLOYEES WHERE DEPARTMENT_ID IN (10,20,30)








