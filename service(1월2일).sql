SELECT *
FROM 직원
WHERE 부서ID ='D001' ;

SELECT 직원ID,이름,나이,입사일시
FROM 직원
WHERE 연봉 > 9000 ;

SELECT *
FROM 직원
WHERE 이름 = '이현정';

SELECT *
FROM 직원연락처
WHERE 연락처 = '010-1231-1234';

SELECT 부서명
FROM 부서
WHERE 근무지 = '서울';

SELECT 주소
FROM 직원주소
WHERE 직원ID = 'A0007';


SELECT *
FROM 직원
WHERE 성별= '남' AND 나이>=28;

SELECT *
FROM 직원
WHERE 부서ID = 'D002' OR 부서ID = 'D004';

SELECT 연락처
FROM 직원연락처
WHERE 직원ID = 'A0001'  AND 구분코드 = '집전화';

SELECT *
FROM 직원
WHERE 부서ID = 'D003' AND 성별 ='여' AND 나이 >= 30;

SELECT *
FROM 직원
--WHERE 직원ID = 'A0001' or 직원ID = 'A0005' or 직원ID = 'A0007';
WHERE 직원ID IN('A0001','A0005','A0007');

SELECT 직원ID,이름,나이
FROM 직원 
WHERE 이름 LIKE '%철%';

SELECT 직원ID, 연봉, 입사일시
FROM 직원
WHERE 연봉 BETWEEN 7000 AND 9000;

SELECT *
FROM 직원주소
WHERE 주소 LIKE'동구%';

SELECT *
FROM 직원
WHERE  입사일시 LIKE '___11%';



