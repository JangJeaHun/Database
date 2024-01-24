SELECT 소속반, COUNT(소속반)
FROM 수강생정보
GROUP BY 소속반;

commit;
SELECT 학생ID, ROUND(AVG(성적),1) AS 평균성적
FROM 성적표
GROUP BY 학생ID;


SELECT MAX(연봉) AS 최고연봉, MIN(연봉) AS 최저연봉
FROM 직원;

SELECT 소속반, COUNT(소속반) AS 반별인원수
FROM 수강생정보
GROUP BY 소속반;

SELECT 학생ID, AVG(성적) AS 수학제외한평균 
FROM 성적표
WHERE 과목 = '영어'
AND 과목 = '국어'
GROUP BY 학생ID;

SELECT 부서ID, SUM(연봉) AS 부서별연봉합계
FROM 직원
GROUP BY 부서ID;

SELECT A.직원ID, COUNT(B.연락처)
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID(+)
GROUP BY A.직원ID;

SELECT 부서ID, SUM(연봉)
FROM 직원
GROUP BY 부서ID
HAVING 부서ID IN ( 'D001', 'D002' ) ;

SELECT 부서ID, SUM(연봉)
FROM 직원
GROUP BY 부서ID
HAVING 연봉 >= 6000 ;

SELECT 소속반, COUNT(소속반) AS 인원수
FROM 수강생정보
GROUP BY 소속반
HAVING COUNT(소속반)>=3;

SELECT 부서ID ,MAX(연봉) AS 최고연봉
FROM 직원
GROUP BY 부서ID
HAVING MAX(연봉) = 7500;



SELECT 학생ID, ROUND(AVG(성적),1) AS 평균성적
FROM 성적표
GROUP BY 학생ID
HAVING AVG(성적) IS NOT NULL;

SELECT *
FROM 직원
ORDER BY 이름 ;

SELECT *
FROM 직원
ORDER BY 직원ID;

SELECT 직원ID , 이름 ,
연봉 AS 직원들의연봉,
연봉 * 0.1 AS 보너스
FROM 직원
ORDER BY 연봉;

CREATE TABLE 회원정보 (
회원ID VARCHAR2(10) NOT NULL,
이름 VARCHAR2(20) NOT NULL,
가입일자 DATE,
나이 NUMBER DEFAULT 0
);

CREATE TABLE 회원연락처 (
회원ID VARCHAR2(10) NOT NULL,
구분코드 VARCHAR2(10) NOT NULL,
연락처 VARCHAR2(15) NOT NULL
);

CREATE TABLE 회원주소 (
    회원ID  VARCHAR2(10) NOT NULL,
    도로명주소 VARCHAR2(200) NOT NULL
);

SELECT *
FROM 직원
ORDER BY 부서ID, 이름 DESC;


--첫번째 SQL DEVELOPER






