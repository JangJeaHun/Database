-- 안녕하세요
-- 한줄 주석 처리 (코드에 영향이 안가는 설명문)
/*
ㅁㄴㅇㄻㄴㅇㄹㄴㅇㄹ
ㄴㅁㅇㄻㄴㅇㄹ
*/

--실행버튼 : CTRL + ENTER 실행하고자 하는 문장에 커서를 올려 놓고 실행
--범위 실행 : 실행 하고자 하는 문장을 블록 씌워서 CTRL + ENTER
--한 문장이 끌날 때에는 항상 세미콜론(;)을 사용하여 문장을 구분
SELECT
    *
FROM
    부서;

SELECT
    *
FROM
    직원;
    
SELECT DISTINCT 구분코드 FROM 직원연락처;

SELECT 직원ID, 패스워드, 이름,성별,연봉
FROM 직원
WHERE 성별 = '남';

SELECT 직원ID, 입사일시, 주민등록번호, 연봉, 부서ID
FROM 직원; 

SELECT 부서ID, 부서명, 근무지
FROM 부서;

SELECT 직원ID, 구분코드, 연락처
FROM 직원연락처;

SELECT * 
FROM 직원;

SELECT *
FROM 직원주소;

SELECT DISTINCT 성별
FROM 직원;


SELECT *
FROM 직원연락처;

SELECT 직원ID as EMP_ID  
FROM 직원연락처;

SELECT *
FROM 직원연락처;

SELECT *
FROM 직원
WHERE 나이 IS NULL;

SELECT  직원ID, 나이 , NVL(나이,0)
FROM 직원;



SELECT  *
FROM 직원
WHERE 나이 IS NOT NULL;

SELECT *
FROM 직원
WHERE 입사일시 IS NULL;

SELECT 직원ID, 패스워드, NVL(나이,20) as 나이
FROM 직원;

SELECT 직원ID, 성별, 연봉, DECODE(성별,'남','남성입니다','여성입니다')as 남녀확인
FROM 직원;

SELECT 주민등록번호, REPLACE(주민등록번호, '-', ' ')
FROM 직원 ;

SELECT 직원ID, 주민등록번호, SUBSTR(주민등록번호,1,6) as 생년월일
FROM 직원;

SELECT 직원ID, 구분코드, 연락처, REPLACE(연락처,'-','')as 연락처번호만
FROM 직원연락처;

SELECT *
FROM 직원
WHERE 나이 is not null;

SELECT *
FROM 직원
WHERE 입사일시 is null;

SELECT 직원ID,패스워드,NVL(나이,20)as 나이
FROM 직원;

SELECT 직원ID, 성별, 연봉, DECODE(성별,'남','남성입니다','여성입니다') AS 남녀확인
FROM 직원;`

SELECT 직원ID, 주민등록번호, SUBSTR(주민등록번호,1,6) AS 생년월일
FROM 직원;


SELECT 직원ID, 구분코드, 연락처, REPLACE(연락처,'-','')AS 연락처번호만 
FROM 직원연락처;

SELECT DISTINCT SYSDATE AS 날짜
FROM 직원연락처 ;

SELECT 직원ID, 입사일시, 주민등록번호, 부서ID
FROM 직원;

SELECT 부서ID, 부서명, 근무지
FROM 부서;

SELECT 직원ID, 구분코드, 연락처
FROM 직원연락처;

SELECT *
FROM 직원;

SELECT *
FROm 직원주소;

SELECT *
FROM 직원연락처;


SELECT 직원ID, 패스워드, NVL(나이,20) as 나이
FROM 직원;

SELECT 직원ID,성별,연봉, DECODE(성별,'남','남성입니다','여성입니다')
FROM 직원;

SELECT 직원ID, 주민등록번호, SUBSTR(주민등록번호,1,6) AS 생년월일
FROM 직원;

SELECT DISTINCT 직원ID  
FROM 직원연락처;

SELECT *
FROM 직원
WHERE 나이 IS NOT NULL;

SELECT *
FROM 직원
WHERE 입사일시 IS NULL;


SELECT 직원ID, 구분코드,연락처, REPLACE(연락처,'-','') As 연락처번호만
FROM 직원연락처;

SELECT 
SYSDATE,
LAST_DAY(SYSDATE)

FROM  DUAL;


SELECT 직원ID , 입사일시 ,
ADD_MONTHS(입사일시, 60),
ADD_MONTHS(입사일시, -60)
FROM 직원 ;



