--TASK 15
CREATE TABLE INS_T(
STR NVARCHAR2(20)
);

SELECT * FROM USER_SYS_PRIVS; 
SELECT * FROM USER_TAB_PRIVS;
SELECT * FROM USER_ROLE_PRIVS;

INSERT INTO INS_T(STR)
VALUES('NIKITA');

SELECT * FROM INS_T