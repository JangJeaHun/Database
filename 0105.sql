CREATE TABLE 게시판 ( 
게시판번호 NUMBER(9) PRIMARY KEY , 
작성자       VARCHAR2(50) NOT NULL , 
게시물내용 VARCHAR2(4000) NOT NULL  , 
작성일시 DATE   NOT NULL 
) ;

INSERT INTO 게시판
SELECT LEVEL                                -- 게시판번호
        , '아이디' || MOD(LEVEL , 10000)     -- 작성자 
        , '아이디' || 
           MOD(LEVEL , 10000) || 
           '님이 작성하신 게시물입니다. 이 게시물은 게시판 번호가 ' 
           || LEVEL 
           || '입니다'                       -- 게시물내용 
      , TO_DATE('20000101') + LEVEL         --2022년 1월1일부터 하루씩 게시물이 입력되는 것
  FROM DUAL
CONNECT BY LEVEL <=1000000;                 --100만건의 데이터 입력 

COMMIT; 




SELECT *
FROM (
SELECT *
FROM 게시판
ORDER BY 작성일시 DESC
)
WHERE ROWNUM <= 20;


SELECT
    A.직원ID,
    A.연봉,
    A.부서ID,
    (
        SELECT
            부서명
        FROM
            부서
        WHERE
            부서ID = A.부서ID
    ) AS 부서명
FROM
    직원 A
WHERE
    직원ID BETWEEN 'A0001' AND 'A0006';
    
    
SELECT A.직원ID, A.연봉, A.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE 직원ID BETWEEN 'A0001' AND 'A0006'
AND A.부서ID = B.부서ID(+);
----------------------------스칼라 서브 쿼리 1문제-------------
SELECT A.직원ID, A.연봉, A.부서ID,(
SELECT 부서명
FROM 부서
WHERE 부서ID=A.부서ID
) AS 부서명
FROM 직원 A
WHERE 직원ID BETWEEN 'A0001' AND 'A0006';
-----------
SELECT A.직원ID, A.연봉, A.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID
AND 직원ID BETWEEN 'A0001' AND 'A0006';

----------------------------스칼라 서브 쿼리 2문제-------------
SELECT A.직원ID, A.이름,A.주민등록번호,
(
SELECT 연락처
FROM 직원연락처
WHERE 직원ID=A.직원ID
AND 구분코드='휴대폰'
) AS 휴대폰번호

FROM 직원 A
WHERE 직원ID BETWEEN 'A0006' AND 'A0010';
-------
SELECT A.직원ID, A.이름, A.주민등록번호, B.연락처 AS 휴대폰번호
FROM 직원 A , 직원연락처 B
WHERE A.직원ID BETWEEN 'A0006' AND 'A0010'
AND A.직원ID = B.직원ID(+)
AND (구분코드 = '휴대폰' OR B.연락처 IS NULL) ;



SELECT
    A.직원ID,
    A.연봉,
    A.부서ID,
    (
        SELECT
            부서명
        FROM
            부서
        WHERE
            부서ID = A.부서ID
    ) AS 부서명
FROM
    직원 A
WHERE
    직원ID BETWEEN 'A0001' AND 'A0006';
    
    
    
SELECT *
FROM (
SELECT *
FROM 직원
WHERE 나이 IS NOT NULL
ORDER BY 나이 
)
WHERE ROWNUM <= 3;

SELECT *
FROM 직원
WHERE 연봉 >= (SELECT AVG(연봉)FROM 직원);

SELECT *
FROM 직원 A
WHERE 연봉 = ( SELECT MIN(연봉)
                FROM 직원
                WHERE 부서ID = A.부서ID );

-----p27 실습문제1번----
SELECT *
FROM 직원 A
WHERE 연봉 = (
            SELECT MAX(연봉)
            FROM 직원
            WHERE 부서ID= A.부서ID
);
-----p27 실습문제2번----
SELECT
    *
FROM
    직원 A
WHERE
    입사일시 = (
        SELECT
            MAX(입사일시)
        FROM
            직원
    );

-----p27 실습문제3번----
SELECT *
FROM 직원
WHERE 연봉 = (
        SELECT MAX(연봉)
        FROM 직원
);


