
SELECT *
FROM 직원 , 부서
WHERE 직원.부서ID=부서.부서ID;

SELECT *
FROM 직원 A, 직원연락처 B
WHERE A.직원ID=B.직원ID;

SELECT A.직원ID, A.이름, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID=B.직원ID;

SELECT A.직원ID AS 직원_직원ID, A.성별, A.나이, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID AS 직원_직원ID, A.성별, A.나이, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID
AND A.직원ID = 'A0007';

SELECT A.직원ID, A.이름, A.연봉, B.직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID(+);

SELECT A.직원ID, A.성별, A.나이, B.직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID(+)
AND B.주소 IS NULL;

SELECT A.직원ID, A.이름, A.나이, B.주소, C.연락처
FROM 직원 A, 직원주소 B, 직원연락처 C
WHERE A.직원ID = B.직원ID
AND B.직원ID = C.직원ID;

SELECT A.직원ID, A.이름, A.입사일시, B.연락처 
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID
AND A.직원ID IN ('A0001','A0002','A0003')
AND B.구분코드 = '휴대폰';

SELECT A.직원ID, A.이름, A.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID;
------------4단원 실습1번 문제--------
SELECT A.직원ID, A.이름, B.주소
FROM 직원 A LEFT OUTER JOIN 직원주소 B ON (A.직원ID = B.직원ID)
WHERE A.직원ID IN('A0005','A0008');

------------4단원 실습2번 문제--------
SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A RIGHT OUTER JOIN 직원 B
ON (A.직원ID = B.직원ID);

------------4단원 실습3번 문제--------
SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A INNER JOIN 직원연락처 B
ON (A.직원ID = B.직원ID);

------------4단원 TIP 실습 문제--------

SELECT A.직원ID, A.이름, A.나이, B.주소, C.연락처
FROM 직원 A 
INNER JOIN 직원주소 B 
ON  (A.직원ID = B.직원ID)
INNER JOIN 직원연락처 C
ON  (B.직원ID = C.직원ID); 
--------------------------------------

SELECT A.직원ID, A.이름, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID(+)
AND A.직원ID IN ('A0005','A0008');

SELECT A.직원ID, A.이름, B.주소
FROM 직원 A LEFT OUTER JOIN 직원주소 B
ON (A.직원ID = B.직원ID)
WHERE A.직원ID IN ('A0005','A0008');

SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A, 직원 B
WHERE A.직원ID(+) = B.직원ID;

SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A RIGHT OUTER JOIN  직원 B ON (A.직원ID = B.직원ID);

SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID;


