SQL 기본 구조 , DDL
1) 관계형과 비관계형 데이터베이스
1. 관계형 데이터베이스 : ORACLE, SQL Server, MySQL, PostgreSQL
2. 비관계형 데이터베이스 : mongoDB, Amazon DynamoDB, CouchDB

2) SQL의 기본 구조
1. 테이블 = 크기가 무한한 엑셀시트, 테이블 이름 = 시트 이름, 테이블 컬럼 = 시트 헤더
2. FROM 테이블명
3. select 절은 FROM 앞에 작성
4. 컬럼이 여러 개 일 경우 ,(콤마)로 구분
5. 데이터 필터링 조건은 WHERE 절에 작성

3) SQL 문장 분류
1. DML : SELECT, INSERT, UPDATE, DELETE, MERGE
2. DDL : CREATE, ALTER, DROP, RENAME, TRUNCATE
3. DCL : GRANT, REVOKE
4. TCL : COMMIT, ROLLBACK, SAVEPOINT

4) 데이터 유형
1. CHARACTER(s) : 고정 길이 문자열 정보
2. VARCHAR2(s) : 가변 길이 문자열 정보
3. NUMBER : 정수, 실수 등 숫자 정보
4. DATE : 날짜와 시각 정보

5) DDL
1. 테이블 생성 : CREATE TABLE 테이블명
2. 테이블 삭제 : DROP TABLE 테이블명
3. 컬럼 삭제·추가 : ALTER TABLE 테이블명 DROP·ADD 컬럼명
