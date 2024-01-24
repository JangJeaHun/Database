--첫번째 SQL DEVELOPER

--인사담당자

SELECT 직원ID, 이름, 연봉
FROM 직원
WHERE 직원ID='A0005';

UPDATE 직원
SET
    연봉 = 6000
WHERE
    직원ID = 'A0005';
COMMIT;
COMMIT;
COMMIT;
COMMIT;

SELECT ROWNUM AS RN,
직원ID,
이름
FROM 직원
WHERE ROWNUM <= 3 ;




SELECT * 
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉 DESC;

CREATE VIEW 뷰테이블
SELECT *;




SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            직원
        WHERE
            연봉 IS NOT NULL
        ORDER BY
            연봉 DESC
    )
WHERE
    ROWNUM <= 5;
    
    
SELECT *
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉;

-----실습 1번 문제---------

SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            직원
        WHERE
            연봉 IS NOT NULL
        ORDER BY
            연봉
    )
WHERE
    ROWNUM <= 3;
    
-----------------   
SELECT *
FROM 직원
WHERE 입사일시 IS NOT NULL
ORDER BY 입사일시 DESC;
 ----------------실습 2번 문제--- 

SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            직원
        WHERE
            입사일시 IS NOT NULL
        ORDER BY
            입사일시 DESC)
WHERE
    ROWNUM <= 3;
    
    


