SELECT 소속반, COUNT(학생이름)
FROM 수강생정보
GROUP BY 소속반;

SELECT 학생ID, MAX(성적)
FROM 성적표
GROUP BY 학생ID;



--HAVING 성적 IS NOT NULL;


SELECT 과목, MAX(성적)
FROM 성적표
GROUP BY 성적;

SELECT 과목 ,MAX(성적)
FROM 성적표
GROUP BY 과목;

------------1번문제----------
SELECT 학생ID, ROUND(AVG(성적),1) AS 평균성적
FROM 성적표
GROUP BY 학생ID;

------------2번문제----------

SELECT MAX(연봉) AS 최고연봉 ,MIN(연봉) AS 최저연봉
FROM 직원;

------------3번문제----------
SELECT 소속반, COUNT(*) AS 반별인원수
FROM 수강생정보
GROUP BY 소속반;

------------4번문제----------
SELECT 학생ID, AVG(성적) AS 수학제외한평균
FROM 성적표
WHERE 과목 IN ('국어','영어')
GROUP BY 학생ID;

SELECT 학생ID, AVG(성적) AS 수학제외한평균
FROM 성적표
WHERE 과목 NOT IN ('수학')
GROUP BY 학생ID;

------------5번문제----------
SELECT 부서ID, SUM(연봉) AS 부서별연동합계 
FROM 직원
WHERE 부서ID IS NOT NULL
GROUP BY 부서ID;

------------6번문제----------
SELECT A.직원ID, COUNT(B.연락처) AS 연락처개수
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID(+)
GROUP BY A.직원ID;


-----HAVING-------
SELECT 학생ID, ROUND(AVG(성적),1)AS 평균성적
FROM 성적표
GROUP BY 학생ID
HAVING AVG(성적) <=75;



-------1번문제 (27p)----

SELECT 소속반, COUNT(소속반) AS 인원수
FROM 수강생정보
GROUP BY 소속반
HAVING COUNT(소속반) >=3;

-------2번문제 (27p)----
SELECT 부서ID, MAX(연봉) AS 최고연봉
FROM 직원
GROUP BY 부서ID
HAVING MAX(연봉) = 7500;

-------3번문제 (27p)---
SELECT 학생ID, ROUND(AVG(성적),1) AS 평균성적
FROM 성적표
GROUP BY 학생ID
HAVING AVG(성적) IS NOT NULL;

-------------ORDER BY--------
SELECT *
FROM 직원
ORDER BY 연봉 ;

SELECT *
FROM 직원
ORDER BY 연봉 ;

CREATE TABLE QUIZ_TABLE(
Q_ID NUMBER(3,0) NOT NULL,
Q_CONTENT VARCHAR2(200) NOT NULL,
Q_ANSWER VARCHAR(100),
REG_DATE DATE DEFAULT SYSDATE,
Q_BINGO VARCHAR(100) DEFAULT 'O'
);

CREATE TABLE 회원정보(
회원ID VARCHAR2(100) NOT NULL,
이름 VARCHAR2(200) NOT NULL,
가입일자 DATE DEFAULT SYSDATE,
나이 NUMBER DEFAULT 0
);

CREATE TABLE 회원연락처(
회원ID VARCHAR2(10) NOT NULL,
구분코드 VARCHAR2(10) NOT NULL,
연락처 VARCHAR2(15) NOT NULL
);

CREATE TABLE 회원주소(
회원ID VARCHAR2(10) NOT NULL,
도로명 VARCHAR2(200) NOT NULL
);

ALTER TABLE 회원정보 MODIFY (
회원ID VARCHAR2(10) 
);

ALTER TABLE 회원주소 MODIFY (
나이 NUMBER DEFAULT 0
);


------------------2번문제---------------------
ALTER TABLE 회원정보 ADD CONSTRAINT PK_회원정보
PRIMARY KEY(회원ID);

ALTER TABLE 회원연락처 ADD CONSTRAINT PK_회원연락처
PRIMARY KEY(회원ID,구분코드);

ALTER TABLE 회원주소 ADD CONSTRAINT PK_회원주소
PRIMARY KEY(회원ID);
-------------------3번문제--------------
ALTER TABLE 회원연락처 ADD CONSTRAINT FK_회원연락처
FOREIGN KEY(회원ID) REFERENCES 회원정보(회원ID);

ALTER TABLE 회원주소 ADD CONSTRAINT FK_회원주소
FOREIGN KEY(회원ID) REFERENCES 회원정보(회원ID);

-----------------------------------------------------------

DROP TABLE 회원정보 CASCADE CONSTRAINTS;
--아직 삭제안함


CREATE SEQUENCE 회원ID_SEQ;

SELECT 회원ID_SEQ.NEXTVAL
FROM DUAL;

DROP SEQUENCE 회원ID_SEQ;


CREATE VIEW 부서별최고연봉_VIEW AS
SELECT 부서ID, MAX(연봉) AS 부서별최고연봉
FROM 직원
GROUP BY 부서ID
ORDER BY 부서ID;


SELECT *
FROM 부서별최고연봉_VIEW;


DROP VIEW 부서별최고연봉_VIEW;

INSERT INTO 수강생정보 (학생ID, 학생이름, 소속반)
VALUES('S0088','민수','H');

UPDATE 수강생정보
SET 학생ID='S0089',
학생이름 ='김민수',
소속반='G'
WHERE 학생ID='S0088';
COMMIT;


--------DML 1번 문제------


INSERT INTO 직원(직원ID, 패스워드, 이름, 성별, 나이, 입사일시, 주민등록번호, 연봉, 부서ID)
VALUES('A1000','hello1000','신캐릭',NULL,29,SYSDATE,'950120-1566221',3500,'D006');

COMMIT;

--------DML 2번 문제------
UPDATE 직원 SET 성별 = '남',
부서ID = 'D005',
패스워드 = 'hello1000!!!'
WHERE 직원ID = 'A1000';

COMMIT;
--------DML 3번 문제------

DELETE FROM 직원 WHERE 직원ID='A1000';

COMMIT;

--------DML 4번 문제------
INSERT INTO 직원(직원ID, 패스워드, 이름, 성별, 나이, 입사일시, 주민등록번호, 연봉, 부서ID)
VALUES('A2000','hello222','이홍시',NULL,40,SYSDATE,'830220-1566221',5600,'D006');

INSERT INTO 직원연락처(직원ID,구분코드,연락처)
VALUES('A2000','휴대폰','010-5959-1111');

INSERT INTO 직원주소(직원ID,구분코드,주소)
VALUES('A2000','집','운천로123');

COMMIT;
--------DML 5번 문제------(DROP?????)
DROP TABLE 성적표 CASCADE CONSTRAINTS;
--제거완료  ..오답임...

COMMIT;

DELETE FROM 성적표;  --이게 정답

--------DML 6번 문제------
UPDATE 직원연락처 SET 구분코드 = '집전화',연락처 ='062-123-1111'
WHERE 직원ID='A2000';

COMMIT;
--------DML 7번 문제------

ROLLBACK;

UPDATE 직원연락처 SET 연락처 = '010-3333-5959'
--WHERE 직원ID='A2000' AND 구분코드 = '휴대폰';
WHERE 연락처= '010-5959-1111';

COMMIT;
--------DML 8번 문제------
DELETE FROM 직원주소
WHERE 직원ID IN('A0011','A0012','A0013','A2000');

COMMIT;

--------DML 9번 문제------

DELETE FROM 직원연락처
WHERE 직원ID IN('A0011','A0012','A0013','A2000');

--------DML 10번 문제------
DELETE FROM 직원
WHERE 직원ID IN('A0011','A0012','A0013','A2000');

--------DML 11번 문제------

INSERT INTO 성적표 (학생ID,과목,성적)
VALUES ('S0001','국어',90);

INSERT INTO 성적표 (학생ID,과목,성적)
VALUES ('S0001','수학',85);

INSERT INTO 성적표 (학생ID,과목,성적)
VALUES ('S0001','영어',70);

--------DML 12번 문제------
UPDATE 성적표 SET 성적 = 80  WHERE 학생ID = 'S0001' AND 과목 = '영어';