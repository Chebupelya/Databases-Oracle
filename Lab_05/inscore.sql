--TASK 2
CREATE TABLE INS_T1 (
   id NUMBER PRIMARY KEY,
   name VARCHAR2(50)
) TABLESPACE INS_QDATA;

SELECT * FROM INS_T1;

INSERT INTO INS_T1 VALUES(1, 'ROW1');
commit;
INSERT INTO INS_T1 VALUES(2, 'ROW2');
commit;
INSERT INTO INS_T1 VALUES(3, 'ROW3');
commit;

--TASK 6
DROP TABLE INS_T1;

--TASK 7
SELECT * FROM USER_RECYCLEBIN;

--TASK 8
FLASHBACK TABLE INS_T1 TO BEFORE DROP;

--TASK 9
DELETE FROM INS_T1;

BEGIN
  FOR i IN 1..10 LOOP
    INSERT INTO INS_T1 VALUES (i, 'Value ' || i);
    INSERT INTO INS_T1 VALUES (-i, 'Value ' || -i);
    DELETE FROM INS_T1 WHERE ID = -i;
    UPDATE INS_T1 SET ID = i*100, NAME = 'Value ' || i*100
    WHERE ID = i;
  END LOOP;
  COMMIT;
END;

--TASK 12
SELECT ROWID FROM INS_T1;

--TASK 13
SELECT ORA_ROWSCN FROM INS_T1;



--TASK 16
--DROP TABLE INS_T1;
--DROP TABLESPACE INS_QDATA INCLUDING CONTENTS AND DATAFILES;