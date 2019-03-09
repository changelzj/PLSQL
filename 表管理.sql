SELECT * FROM dba_users;

-- 查看用户创建了哪些表
SELECT * FROM user_tables;

-- 查看用户自己的数据库对象
SELECT * FROM user_catalog;

/*
  基本的数据库对象
表：基本数据集合，保存在表空间里面 
视图：从表中抽取出的逻辑数据集合
序列：提供有规律的数值 
索引：提高查询效率
同义词：给对象起别名
*/

/*

表名列名命名规则：

字母开头

1-30字符之间

只能包含 数字 大小写字母 $ # _ 

不能与其他用户定义的其他对象重名
不能是Oracle的保留字
*/



/*数据类型

字符

固定长度：
	CHA 最大2000
	NCHAR unicode格式数据存放数据 最大1000
	
可变长度：
	VARCHAR2 最大4000
	NVARCHAR2 最大2000
	
数值型
NUMBER(n) 最多存入n位数字


NUMBER(p,s) p代表有效数字，s为小数点的位数，s大于0，代表从小数点到最低有效数字的位数，s小于零





*/





CREATE TABLE emp15(
	id NUMBER(10),
	name VARCHAR2(20), 
	salary NUMBER(10, -2), 
	hire_date DATE
)

-- 删除表到回收站
DROP TABLE emp1;

--查看回收站 sqlplus:show recyclebin;

--从回收站恢复 splus: flashback table emp1 to before drop;









































