select * from dept;
select * from emp;
select * from bonus;

insert into dept values(
10, 'ACCOUNTING', 'NEW YORK');

ALTER TABLESPACE test_EMP2 ADD DATAFILE
    'd:\emp2.dbf' SIZE 10 M
        AUTOEXTEND ON NEXT 10 M MAXSIZE 10 M;
//////////////////////////
테이블 스페이스 종류 확인 명령어 : 
SELECT * FROM DBA_TABLESPACES;
테이블 스페이스 종류 : SYSTEM, UNDO, TEMPORATY, DATA
유저의 테이블 스페이스 확인 명령어 : 
SELECT * FROM USER_USERS;
UNDO를 가진 척도를 보여줌 : 
SHOW PARAMETER UNDO;
25분안에 데이터 복구할 수 있도록 시간을 900 -> 1500초(25분)으로 늘림 : 
ALTER SYSTEM SET UNDO_RETENTION=1500;
25분안에 제거한 데이터를 조회 : 
SELECT * FROM SCOTT.EMP2 AS OF TIMESTAMP(SYSTIMESTAMP-INTERVAL '25' MINUTE);

ROLLBACK;

select owner, object_name from sys.dba_objects;

create or replace view name_query as select a.ename, b.dname from emp a, dept b where a.deptno=b.deptno and b.deptno=20;
select * from name_query;
create or replace view check_option as select empno, ename, deptno from emp where deptno=10 with check option;
insert into check_option(empno, ename, deptno) values(1000,'jain',10);
select * from check_option;
select view_name, text from user_views;
drop view name_query;

시노님 - 시스템 계정으로 접속하여 시노님 scott.emp를 test.emp로 생성. test계정을 접속하여 test가 scott.emp를 select한다.
conn system/1234
create synonym test.emp for scott.emp;
conn test/test
select empno, ename from emp;

grant create view to scott;
grant create view to test;
