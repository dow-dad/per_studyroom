--p9. 다음 테이블 정의서를 기반으로 DEPT01을 생성하시오.
--칼럼이름 : DEPTNO / 데이터 유형 : NUMBER / 길이 : 6 / NULL 허용 여부 : N / PK 칼럼 여부 : Y
--칼럼이름 : DNAME / 데이터 유형 : VARCHAR2 / 길이 : 14 / NULL 허용 여부 : Y / PK 칼럼 여부 : N
--PK칼럼이 하나 일 때,
CREATE TABLE DEPT01
(
    deptno number(6) not null primary key,
    dname varchar2(14)
);

--PK가 NOT NULL이므로 생략 가능하다.
CREATE TABLE DEPT01
(
    deptno number(6) primary key,
    dname varchar2(14)
);

-----------------------------------------------------------------------------------------------
--p10. 다음 테이블 정의서를 기반으로 EMP01을 생성하시오.
--칼럼이름 : DEPTNO / 데이터 유형 : NUMBER / 길이 : 2 / NULL 허용 여부 : N / PK 칼럼 여부 : Y
--칼럼이름 : EMPNO / 데이터 유형 : NUMBER / 길이 : 4 / NULL 허용 여부 : N / PK 칼럼 여부 : Y
--칼럼이름 : ENAME / 데이터 유형 : VARCHAR2 / 길이 : 10 / NULL 허용 여부 : Y / PK 칼럼 여부 : N
--PK칼럼이 두개 일때, CONSTRAINT 사용
CREATE TABLE EMP01
(
    deptno number(2) not null,
    empno number(4) not null,
    ename varchar2(10),
    CONSTRAINT EMP01_PK primary key(deptno, empno) 
); --EMP01_PK : PK이름 지정

------------------------------------------------------------------------------------------------
--EMP01 테이블 삭제
drop table EMP01

--칼럼길이 변경 / 'ENAME' 칼럼 길이를 50으로 늘리시오
alter table EMP01 modify
(
    ename varchar2(50)
);

--칼럼 삭제 / EMP01테이블에서 ENAME칼럼을 삭제하시오
alter table EMP01 drop column ename;

--칼럼 추가 / EMP01 테이블에 ENAME 칼럼을 추가하시오
alter tavle EMP01 add column ename varchar2(50);

--테이블 형태 확인
desc EMP01

--칼럼길이 변경시 주의사항
--number : 데이터가 있는 상태에서 길이를 줄일 수 없다.
create table t1(c1 number(3)); --number(3)형태의 c1칼럼 하나를 가진 테이블 t1 생성
insert into t1 values(1); -- c1칼럼에 1이라는 데이터 입력
alter table t1 modify(c1 number(4)); -- number(4)로 길이 연장 가능
alter table t1 modify(c1 number(3)); -- number(3)로 길이 축소 불가
truncate table t1; -- t1 테이블 데이터 전체 삭제
alter table t1 modify(c1 number(3)); -- 데이터가 없으므로 number(4)로 축소 가능

--varchar2 : 데이터가 있는 상태에서 가장 길이가 긴 데이터 보다 작은 길이로 줄일 수 없다.
create table t3(c1 varchar2(10)); --varchar2(10)형태의 c1칼럼 하나를 가진 테이블 t3생성
insert into t3 values('ABC'); -- c1 칼럼에 'ABC'라는 데이터 입력
alter table t3 modify(c1 varchar2(2)); -- varchar2(2)형태로 축소 불가
alter table t3 modify(c1 varchar2(4)); -- varchar2(4)형태로 연장 가능
truncate table t3; -- t3 테이블 데이터 전체 삭제
alter table t3 modify(c1 varchar2(1)); -- 데이터가 없으므로 varchar2(1)로 축소 가능.
