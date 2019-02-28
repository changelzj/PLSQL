/*
管理员用户：
sys权限大于system sys必须管理员登录 
sysman 用于操作企业管理器

远程连接：connect system/lzj@orcl（服务名）   conn sys/lzj @orcl as sysdba

查看登陆用户： show user 

表空间:

	分3种：

	1.永久表空间：表 视图 存储过程 
	2.临时表空间：中间执行的过程，执行后释放
	3.undo表空间：保存事务修改数据的旧的信息，用于回滚


dba用户的默认6个表空间
SYSTEM ： sys存储sys用户的表视图存储过程空间
SYSAUX ：example表空间的辅助表空间，example表空间是安装数据库实例时使用的表空间
UNDOTBS1 ： 存储撤销信息，属于undo表空间
TEMP ： 存储SQL语句处理的表和索引信息。属于临时表空间
USERS ： 存储数据库用户创建的数据库对象，永久表空间
EXAMPLE ： 

普通用户的默认表空间：
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS
EXAMPLE

*/

-- 管理员查看的用户数据字典
SELECT * FROM dba_users;
-- 普通用户查看的用户数据字典
SELECT * FROM user_users;

-- 管理员查看表空间数据字典
SELECT * FROM dba_tablespaces;
-- 普通用户查看的数据字典
SELECT * FROM user_tablespaces;

/*
基本语法
*/
SELECT * from employees; 

SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES;

-- 空值参与运算，结果是空
SELECT 1 + NULL FROM dual;




















