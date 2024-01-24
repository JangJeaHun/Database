
SELECT 직원ID, 구분코드, 연락처, REPLACE(연락처,'-','') AS 연락처번호만
FROM 직원연락처;

SELECT 부서ID, SUM(연봉)
FROM 직원
GROUP BY 부서ID
HAVING 부서ID IN ( 'D001', 'D002' ) ;

SELECT 부서ID, SUM(연봉)
FROM 직원
GROUP BY 부서ID
HAVING SUM(연봉) >= 6000;

SELECT 부서ID, SUM(연봉) AS 연봉합계
FROM 직원
GROUP BY 부서ID
HAVING SUM(연봉) >= 6000 ;

SELECT 소속반, COUNT(소속반) 
FROM 수강생정보
GROUP BY 소속반
HAVING COUNT(소속반);


SELECT 부서ID, MAX(연봉)
FROM 직원
GROUP BY 부서ID
HAVING MAX(연봉) = 7500;

SELECT 학생ID, ROUND(AVG(성적),1) AS 평균성적
FROM 성적표
GROUP BY 학생ID
HAVING AVG(성적) IS NOT NULL;


SELECT *
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID;

SELECT *
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID, A.이름 ,B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID=B.직원ID;


SELECT A.직원ID AS 직원_직원ID, A.성별, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID AS 직원_직원ID, A.성별, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID
AND A.직원ID = 'A0007';


SELECT A.직원ID, A.이름, A.연봉, B.직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID AS 직원_직원ID, A.성별, A.나이, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID(+)
AND B.주소 IS NULL;



SELECT A.직원ID, A.이름, A.나이,C.연락처, B.주소
FROM 직원 A, 직원주소 B, 직원연락처 C
WHERE A.직원ID = B.직원ID
AND B.직원ID = C.직원ID;

SELECT A.직원ID, A.이름, A.입사일시, B.연락처
FROM 직원 A, 직원연락처 B
WHERE A.직원ID  = B.직원ID
AND B.구분코드 = '휴대폰'
AND A.직원ID IN('A0001','A0002','A0003');

SELECT A.직원ID, A.이름, A.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID;

SELECT A.직원ID, A.이름, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID(+)
AND A.직원ID IN('A0005','A0008');
------ ANSI 문법으로 변경-------
SELECT A.직원ID, A.이름, B.주소
FROM 직원 A LEFT OUTER JOIN 직원주소 B
ON (A.직원ID = B.직원ID)
WHERE A.직원ID IN('A0005','A0008');

SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A, 직원 B
WHERE A.직원ID(+) = B.직원ID;

SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A RIGHT OUTER JOIN  직원 B
ON (A.직원ID = B.직원ID);

SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A INNER JOIN 직원연락처 B
ON (A.직원ID = B.직원ID);


SELECT A.직원ID, A.이름, A.나이, C.연락처, B.주소
FROM 직원 A INNER JOIN 직원주소 B ON (A.직원ID = B.직원ID) 
INNER JOIN 직원연락처 C ON (B.직원ID = C.직원ID);


SELECT 학생ID, AVG(성적)
FROM 성적표
GROUP BY 학생ID;

SELECT MAX(연봉),MIN(연봉)
FROM 직원;

SELECT 소속반, COUNT(소속반)
FROM 수강생정보
GROUP BY 소속반;

SELECT 학생ID, AVG(성적) AS 수학제외한평균
FROM 성적표
WHERE 과목 IN ('국어','영어')
GROUP BY 학생ID;


SELECT 부서ID ,SUM(연봉)
FROM 직원
GROUP BY 부서ID;

SELECT A.직원ID, COUNT(B.연락처)
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID(+)
GROUP BY A.직원ID;


SELECT 소속반, COUNT(학생ID)
FROM 수강생정보
GROUP BY 소속반
HAVING COUNT(학생ID)>=3;


SELECT 부서ID, MAX(연봉)
FROM 직원
GROUP BY 부서ID
HAVING MAX(연봉) = 7500;


SELECT 학생ID, AVG(성적)
FROM 성적표
GROUP BY  학생ID
HAVING AVG(성적) IS NOT NULL;


SELECT *
FROM( 
SELECT *
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉 DESC)
WHERE 연봉 IS NOT NULL;


SELECT *
FROM ( SELECT *
    FROM 직원
    WHERE 연봉 IS NOT NULL
    ORDER BY 연봉
    ) 
WHERE ROWNUM <=3;


SELECT *
FROM
(
SELECT *
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉
)
WHERE ROWNUM <= 3;



SELECT *
FROM
(
SELECT *
FROM 직원
WHERE 입사일시 IS NOT NULL
ORDER BY 입사일시 DESC)
WHERE ROWNUM <= 3 ;

SELECT *
FROM (
SELECT *
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉
)
WHERE ROWNUM <=3;

SELECT A.직원ID, A.연봉,  A.부서ID,
(
SELECT 부서명
FROM 부서
WHERE 부서ID = A.부서ID
)
FROM 직원 A
WHERE 직원ID BETWEEN 'A0001' AND 'A0006';

SELECT A.직원ID, A.성별, B.부서ID, B.부서명
FROM 직원 A ,부서 B
WHERE A.부서ID = B.부서ID
AND A.직원ID BETWEEN 'A0001' AND 'A0006';



SELECT A.직원ID, A.연봉, A.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID;

SELECT A.직원ID, A.성별, A.부서ID, (
SELECT 부서명
FROM 부서
WHERE 부서ID = A.부서ID
) AS 부서명
FROM 직원 A
WHERE A.직원ID BETWEEN 'A0001' AND 'A0006';


SELECT 직원ID, 연봉, 부서ID, (

SELECT 부서명
FROM 부서
WHERE 부서ID=A.부서ID
) AS 부서명

FROM 직원 A
WHERE 직원ID BETWEEN 'A0001' AND 'A0006';


SELECT A.직원ID, A.이름, A.주민등록번호, (

SELECT 연락처
FROM 직원연락처
WHERE 직원ID=A.직원ID
AND 구분코드='휴대폰'
) AS 휴대폰번호

FROM 직원 A
WHERE 직원ID BETWEEN 'A0006' AND 'A0010';


SELECT *
FROM (
    SELECT *
    FROM 게시판
    ORDER BY 작성일시
)
WHERE ROWNUM <=20;


SELECT 직원ID, 입사일시, 주민등록번호, 연봉, 부서ID
FROM 직원;

SELECT 부서ID, 부서명, 근무지
FROM 부서;

SELECT 직원ID, 구분코드, 연락처 
FROM 직원연락처;


SELECT A.직원ID, A.연봉, A.부서ID, B.부서명
FROM 직원 A,부서 B 
WHERE A.부서ID = B.부서ID
AND A.직원ID BETWEEN 'A0001' AND 'A0006';

SELECT A.직원ID, A.연봉, A.부서ID,(

SELECT 부서명
FROM 부서
WHERE A.부서ID = 부서ID
)
FROM 직원 A
WHERE 직원ID BETWEEN 'A0001' AND 'A0006';
c vm

SELECT A.직원ID, A.연봉, A.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID(+)
AND SELECT A.직원ID, A.연봉, A.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID(+)
AND 직원ID BETWEEN 'A0001' AND 'A0006';


SELECT A.직원ID, A.연봉, A.부서ID,(
        SELECT 부서명
        FROM 부서
        WHERE 부서ID = A.부서ID
    ) AS 부서명
FRoM 직원 A
WHERE 직원ID BETWEEN 'A0001' AND 'A0006';

SELECT A.직원ID, A.연봉, A.부서ID, (
SELECT 부서명
FROM 부서 
WHERE 부서ID = A.부서ID
) AS 부서명
FROM 직원 A
WHERE 직원ID BETWEEN 'A0001' AND 'A0006';

SELECT A.직원ID, A.이름, A.주민등록번호,(
SELECT 연락처
FROM 직원연락처
WHERE 직원ID = A.직원ID
AND 구분코드 = '휴대폰'
) AS 휴대폰번호
FROM 직원 A
WHERE 직원ID BETWEEN 'A0006' ANd 'A0010'; 


SELECT *
FROM (
SELECT *
FROM 직원
ORDER BY 나이
)
WHERE ROWNUM <=3;


SELECT *
FROM 직원 A
WHERE 연봉 = (
    SELECT MAX(연봉)
    FROM 직원
    WHERE 부서ID = A.부서ID
);

SELECT *
FROM 직원 A 
WHERE 입사일시 = (
SELECT MIN(입사일시)
FROM 직원
);

SELECT *
FROM 직원 A
WHERE 연봉  = (
    SELECT MAX(연봉)
    FROM 직원
    WHERE 직원ID = A.직원ID
);


SELECT *
FROM 직원 A
WHERE 연봉 = (
        SELECT MAX(연봉)
        FROM 직원
);



SELECT *
FROM 직원 A
WHERE 연봉=(
SELECT MIN(연봉)
FROM 직원
WHERE 부서ID = A.부서ID
);

SELECT *
FROM 직원 A
WHERE 연봉 = ( SELECT 연봉
FROM 직원
WHERE 부서ID = 'D0001'
);

SELECT 이름, 연봉
FROM 직원
WHERE 연봉 IN (
    SELECT 연봉
    FROM 직원
    WHERE 직원ID = 'A0006'
);

SELECT 직원ID, 이름, 연봉
FROM 직원
WHERE 연봉 > ( ) ( SELECT 연봉
FROM 직원
WHERE 직원ID BETWEEN 'A0003' AND 'A0006' ) ;

( SELECT 연봉
FROM 직원
WHERE 직원ID BETWEEN 'A0003' AND 'A0006' ) ;

SELECT *
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉 DESC;

SELECT *
FROM(
SELECT *
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉 DESC
)
WHERE ROWNUM <=5;


SELECT * 
FROM (
SELECT *
FROM 직원
WHERE 연봉 IS NOT NULL
ORDER BY 연봉
)
WHERE ROWNUM <=3;

SELECT *
FROM (
SELECT *
FROM 직원
WHERE 입사일시 IS NOT NULL
ORDER BY 입사일시 DESC
)
WHERE ROWNUM <= 3;




SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            게시판
        ORDER BY
            작성일시 DESC
    )
WHERE
    ROWNUM <= 20;
    
    
    
    
    
SELECT *
FROM
    (
        SELECT
            *
        FROM
            게시판
        WHERE ROWNUM <= 60
        ORDER BY
            작성일시 DESC
    )
WHERE
    ROWNUM <= 20
ORDER BY 작성일시;

INSERT INTO 직원(
직원ID, 패스워드,이름,나이,입사일시,주민등록번호,연봉,부서ID
)
VALUES('A1000','hello1000','신캐릭',29,SYSDATE,'950120-1566221',3500,'D006');

UPDATE 직원 SET 
성별 = '남',
부서ID = 'D005',
패스워드 = 'hello1000!!!'
WHERE 직원ID = 'A1000';

DELETE FROM 직원 WHERE 직원ID = 'A1000';

INSERT INTO 직원(직원ID, 패스워드, 이름, 성별, 나이, 입사일시, 주민등록번호, 연봉, 부서ID)
VALUES('A2000','hello222','이홍시',NULL,40,SYSDATE,'830220-1566221',5600,'D006');

INSERT INTO 직원연락처(직원ID,구분코드,연락처)
VALUES('A2000','휴대폰','010-5959-1111');

INSERT INTO 직원주소(직원ID,구분코드,주소)
VALUES('A2000','집','운천로123');

DELETE FROM 성적표 ;

UPDATE SET 직원연락처 
SET 연락처 = '062-123-1111'
WHERE 직원ID = 'A2000'
AND 구분코드 = '집';

DELETE FROM 직원주소 
WHERE 직원ID IN ('A0011','A0012','A0013','A2000');

DELETE FROM 직원연락처
WHERE 직원ID IN('A0011','A0012','A0013','A2000');

DELETE FROM 직원연락처
WHERE 직원ID IN ('A0011','A0012','A0013','A2000');

INSERT INTO 성적표(
학생ID, 과목,성적
)
VALUES(
'S0001','국어',90
);

INSERT INTO 성적표(
학생ID, 과목,성적
)
VALUES(
'S0001','수학',85
);

INSERT INTO 성적표(
학생ID, 과목,성적
)
VALUES(
'S0001','영어',70
);


UPDATE {테이블명} SET {바꿀 컬럼}  = {바꿀값} WHERE 바꾸고싶은 행조건; 

UPDATE 성적표 SET 성적 = 80 WHERE 과목 = '영어' ;

CREATE VIEW 부서별최고연봉_VIEW AS
SELECT 부서ID, MAX(연봉) AS 부서별최고연봉
FROM 직원
GROUP BY 부서ID
ORDER BY 부서ID;


DROP VIEW 부서별최고연봉_VIEW;

SELECT *
FROM 직원연락처;

SELECT DISTINCT 직원ID
FROM 직원연락처;

SELECT *
FROM 직원
WHERE 나이 IS NOT NULL;

SELECT *
FROM 직원
WHERE 입사일시 IS NULL;

SELECT 직원ID, 패스워드, NVL(나이,20) AS 나이
FROM 직원;

SELECT 직원ID, 성별, 연봉,  DECODE(성별,'남','남성입니다','여성입니다') AS 남녀확인
FROM 직원;

SELECT 직원ID, 주민등록번호, SUBSTR(주민등록번호,1,6) AS 생년월일
FROM 직원;

SELECT 직원ID, 구분코드, 연락처, REPLACE(연락처,'-','')AS 연락처번호만
FROM 직원연락처;

SELECT 직원ID, 이름, 나이, 입사일시
FROM 직원
WHERE 연봉 > 9000;

SELECT *
FROM 직원
WHERE 이름 = '이현정';

SELECT *
FROM 직원연락처
WHERE 연락처='010-1231-1234';

SELECT 부서명
FROM 부서
WHERE 근무지 = '서울';

SELECT 주소
FROM 직원주소
WHERE 직원ID = 'A0007';

SELECT 연락처
FROM 직원연락처
WHERE 직원ID = 'A0001'
AND 구분코드 = '집전화';

SELECT *
FROM 직원 
WHERE 부서ID='D003'
AND 나이 >=30
AND 성별 = '여';

SELECT *
FROM 직원
WHERE 직원ID = 'A0001'
OR 직원ID= 'A0005'
OR 직원ID = 'A0007';

SELECT 직원ID, 이름, 나이
FROM 직원
WHERE 이름 LIKE '%철%';

SELECT 직원ID,연봉, 입사일시
FROM 직원
WHERE 연봉 BETWEEN 7000 AND 9000;

SELECT *
FROM 직원주소
WHERE 주소 LIKE '동구%';


SELECT *
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID;


SELECT *
FROM 직원 A, 직원연락처 B
WHERE A.직원ID  = B.직원ID;

SELECT A.직원ID, A.이름, B.주소
FROM  직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID AS 직원_직원ID, A.성별, A.나이, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID;

SELECT A.직원ID AS 직원_직원ID, A.성별, A.나이, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID
AND A.직원ID = 'A0007';

SELECT A.직원ID AS 직원_직원ID, A.이름, A.연봉, B.직원ID AS 주소_직원ID, B.구분코드 ,B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID(+);

SELECT A.직원ID AS 직원_직원ID, A.이름, A.연봉, B.직원ID AS 주소_직원ID, B.구분코드 ,B.주소
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

SELECT A.직원ID, A.이름 ,B.주소
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID(+)
AND A.직원ID IN('A0005','A0008');

SELECT A.직원ID, A.이름 ,B.주소
FROM 직원 A LEFT OUTER JOIN  직원주소 B
ON (A.직원ID = B.직원ID)
WHERE A.직원ID IN('A0005','A0008');

SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A, 직원 B
WHERE A.직원ID(+) = B.직원ID;

SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A RIGHT OUTER JOIN 직원 B
ON (A.직원ID = B.직원ID);

SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID ;

SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A INNER JOIN 직원연락처 B
ON (A.직원ID = B.직원ID) ;

SELECT A.직원ID, A.이름, A.나이, B.주소, C.연락처
FROM 직원 A INNER JOIN 직원주소 B ON (A.직원ID = B.직원ID) 
INNER JOIN 직원연락처 C ON (B.직원ID = C.직원ID);

SELECT 학생ID, MAX(성적)
FROM 성적표
GROUP BY 학생ID
HAVING MAX(성적) = 85;

SELECT *
FROM (
SELECT *
FROM 직원
WHERE 직원ID = 'A0001'
);


SELECT 직원ID, 이름 ,나이
FROM 직원
WHERE 이름 LIKE '%철%';
