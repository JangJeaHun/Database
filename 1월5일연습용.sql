
SELECT ����ID, �����ڵ�, ����ó, REPLACE(����ó,'-','') AS ����ó��ȣ��
FROM ��������ó;

SELECT �μ�ID, SUM(����)
FROM ����
GROUP BY �μ�ID
HAVING �μ�ID IN ( 'D001', 'D002' ) ;

SELECT �μ�ID, SUM(����)
FROM ����
GROUP BY �μ�ID
HAVING SUM(����) >= 6000;

SELECT �μ�ID, SUM(����) AS �����հ�
FROM ����
GROUP BY �μ�ID
HAVING SUM(����) >= 6000 ;

SELECT �Ҽӹ�, COUNT(�Ҽӹ�) 
FROM ����������
GROUP BY �Ҽӹ�
HAVING COUNT(�Ҽӹ�);


SELECT �μ�ID, MAX(����)
FROM ����
GROUP BY �μ�ID
HAVING MAX(����) = 7500;

SELECT �л�ID, ROUND(AVG(����),1) AS ��ռ���
FROM ����ǥ
GROUP BY �л�ID
HAVING AVG(����) IS NOT NULL;


SELECT *
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID;

SELECT *
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID;

SELECT A.����ID, A.�̸� ,B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID=B.����ID;


SELECT A.����ID AS ����_����ID, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID;

SELECT A.����ID AS ����_����ID, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID
AND A.����ID = 'A0007';


SELECT A.����ID, A.�̸�, A.����, B.����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID;

SELECT A.����ID AS ����_����ID, A.����, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID(+)
AND B.�ּ� IS NULL;



SELECT A.����ID, A.�̸�, A.����,C.����ó, B.�ּ�
FROM ���� A, �����ּ� B, ��������ó C
WHERE A.����ID = B.����ID
AND B.����ID = C.����ID;

SELECT A.����ID, A.�̸�, A.�Ի��Ͻ�, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID  = B.����ID
AND B.�����ڵ� = '�޴���'
AND A.����ID IN('A0001','A0002','A0003');

SELECT A.����ID, A.�̸�, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID;

SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID(+)
AND A.����ID IN('A0005','A0008');
------ ANSI �������� ����-------
SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A LEFT OUTER JOIN �����ּ� B
ON (A.����ID = B.����ID)
WHERE A.����ID IN('A0005','A0008');

SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A, ���� B
WHERE A.����ID(+) = B.����ID;

SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A RIGHT OUTER JOIN  ���� B
ON (A.����ID = B.����ID);

SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID;

SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A INNER JOIN ��������ó B
ON (A.����ID = B.����ID);


SELECT A.����ID, A.�̸�, A.����, C.����ó, B.�ּ�
FROM ���� A INNER JOIN �����ּ� B ON (A.����ID = B.����ID) 
INNER JOIN ��������ó C ON (B.����ID = C.����ID);


SELECT �л�ID, AVG(����)
FROM ����ǥ
GROUP BY �л�ID;

SELECT MAX(����),MIN(����)
FROM ����;

SELECT �Ҽӹ�, COUNT(�Ҽӹ�)
FROM ����������
GROUP BY �Ҽӹ�;

SELECT �л�ID, AVG(����) AS �������������
FROM ����ǥ
WHERE ���� IN ('����','����')
GROUP BY �л�ID;


SELECT �μ�ID ,SUM(����)
FROM ����
GROUP BY �μ�ID;

SELECT A.����ID, COUNT(B.����ó)
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID(+)
GROUP BY A.����ID;


SELECT �Ҽӹ�, COUNT(�л�ID)
FROM ����������
GROUP BY �Ҽӹ�
HAVING COUNT(�л�ID)>=3;


SELECT �μ�ID, MAX(����)
FROM ����
GROUP BY �μ�ID
HAVING MAX(����) = 7500;


SELECT �л�ID, AVG(����)
FROM ����ǥ
GROUP BY  �л�ID
HAVING AVG(����) IS NOT NULL;


SELECT *
FROM( 
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ���� DESC)
WHERE ���� IS NOT NULL;


SELECT *
FROM ( SELECT *
    FROM ����
    WHERE ���� IS NOT NULL
    ORDER BY ����
    ) 
WHERE ROWNUM <=3;


SELECT *
FROM
(
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ����
)
WHERE ROWNUM <= 3;



SELECT *
FROM
(
SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NOT NULL
ORDER BY �Ի��Ͻ� DESC)
WHERE ROWNUM <= 3 ;

SELECT *
FROM (
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ����
)
WHERE ROWNUM <=3;

SELECT A.����ID, A.����,  A.�μ�ID,
(
SELECT �μ���
FROM �μ�
WHERE �μ�ID = A.�μ�ID
)
FROM ���� A
WHERE ����ID BETWEEN 'A0001' AND 'A0006';

SELECT A.����ID, A.����, B.�μ�ID, B.�μ���
FROM ���� A ,�μ� B
WHERE A.�μ�ID = B.�μ�ID
AND A.����ID BETWEEN 'A0001' AND 'A0006';



SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID;

SELECT A.����ID, A.����, A.�μ�ID, (
SELECT �μ���
FROM �μ�
WHERE �μ�ID = A.�μ�ID
) AS �μ���
FROM ���� A
WHERE A.����ID BETWEEN 'A0001' AND 'A0006';


SELECT ����ID, ����, �μ�ID, (

SELECT �μ���
FROM �μ�
WHERE �μ�ID=A.�μ�ID
) AS �μ���

FROM ���� A
WHERE ����ID BETWEEN 'A0001' AND 'A0006';


SELECT A.����ID, A.�̸�, A.�ֹε�Ϲ�ȣ, (

SELECT ����ó
FROM ��������ó
WHERE ����ID=A.����ID
AND �����ڵ�='�޴���'
) AS �޴�����ȣ

FROM ���� A
WHERE ����ID BETWEEN 'A0006' AND 'A0010';


SELECT *
FROM (
    SELECT *
    FROM �Խ���
    ORDER BY �ۼ��Ͻ�
)
WHERE ROWNUM <=20;


SELECT ����ID, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID
FROM ����;

SELECT �μ�ID, �μ���, �ٹ���
FROM �μ�;

SELECT ����ID, �����ڵ�, ����ó 
FROM ��������ó;


SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A,�μ� B 
WHERE A.�μ�ID = B.�μ�ID
AND A.����ID BETWEEN 'A0001' AND 'A0006';

SELECT A.����ID, A.����, A.�μ�ID,(

SELECT �μ���
FROM �μ�
WHERE A.�μ�ID = �μ�ID
)
FROM ���� A
WHERE ����ID BETWEEN 'A0001' AND 'A0006';
c vm

SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID(+)
AND SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID(+)
AND ����ID BETWEEN 'A0001' AND 'A0006';


SELECT A.����ID, A.����, A.�μ�ID,(
        SELECT �μ���
        FROM �μ�
        WHERE �μ�ID = A.�μ�ID
    ) AS �μ���
FRoM ���� A
WHERE ����ID BETWEEN 'A0001' AND 'A0006';

SELECT A.����ID, A.����, A.�μ�ID, (
SELECT �μ���
FROM �μ� 
WHERE �μ�ID = A.�μ�ID
) AS �μ���
FROM ���� A
WHERE ����ID BETWEEN 'A0001' AND 'A0006';

SELECT A.����ID, A.�̸�, A.�ֹε�Ϲ�ȣ,(
SELECT ����ó
FROM ��������ó
WHERE ����ID = A.����ID
AND �����ڵ� = '�޴���'
) AS �޴�����ȣ
FROM ���� A
WHERE ����ID BETWEEN 'A0006' ANd 'A0010'; 


SELECT *
FROM (
SELECT *
FROM ����
ORDER BY ����
)
WHERE ROWNUM <=3;


SELECT *
FROM ���� A
WHERE ���� = (
    SELECT MAX(����)
    FROM ����
    WHERE �μ�ID = A.�μ�ID
);

SELECT *
FROM ���� A 
WHERE �Ի��Ͻ� = (
SELECT MIN(�Ի��Ͻ�)
FROM ����
);

SELECT *
FROM ���� A
WHERE ����  = (
    SELECT MAX(����)
    FROM ����
    WHERE ����ID = A.����ID
);


SELECT *
FROM ���� A
WHERE ���� = (
        SELECT MAX(����)
        FROM ����
);



SELECT *
FROM ���� A
WHERE ����=(
SELECT MIN(����)
FROM ����
WHERE �μ�ID = A.�μ�ID
);

SELECT *
FROM ���� A
WHERE ���� = ( SELECT ����
FROM ����
WHERE �μ�ID = 'D0001'
);

SELECT �̸�, ����
FROM ����
WHERE ���� IN (
    SELECT ����
    FROM ����
    WHERE ����ID = 'A0006'
);

SELECT ����ID, �̸�, ����
FROM ����
WHERE ���� > ( ) ( SELECT ����
FROM ����
WHERE ����ID BETWEEN 'A0003' AND 'A0006' ) ;

( SELECT ����
FROM ����
WHERE ����ID BETWEEN 'A0003' AND 'A0006' ) ;

SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ���� DESC;

SELECT *
FROM(
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ���� DESC
)
WHERE ROWNUM <=5;


SELECT * 
FROM (
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ����
)
WHERE ROWNUM <=3;

SELECT *
FROM (
SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NOT NULL
ORDER BY �Ի��Ͻ� DESC
)
WHERE ROWNUM <= 3;




SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            �Խ���
        ORDER BY
            �ۼ��Ͻ� DESC
    )
WHERE
    ROWNUM <= 20;
    
    
    
    
    
SELECT *
FROM
    (
        SELECT
            *
        FROM
            �Խ���
        WHERE ROWNUM <= 60
        ORDER BY
            �ۼ��Ͻ� DESC
    )
WHERE
    ROWNUM <= 20
ORDER BY �ۼ��Ͻ�;

INSERT INTO ����(
����ID, �н�����,�̸�,����,�Ի��Ͻ�,�ֹε�Ϲ�ȣ,����,�μ�ID
)
VALUES('A1000','hello1000','��ĳ��',29,SYSDATE,'950120-1566221',3500,'D006');

UPDATE ���� SET 
���� = '��',
�μ�ID = 'D005',
�н����� = 'hello1000!!!'
WHERE ����ID = 'A1000';

DELETE FROM ���� WHERE ����ID = 'A1000';

INSERT INTO ����(����ID, �н�����, �̸�, ����, ����, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID)
VALUES('A2000','hello222','��ȫ��',NULL,40,SYSDATE,'830220-1566221',5600,'D006');

INSERT INTO ��������ó(����ID,�����ڵ�,����ó)
VALUES('A2000','�޴���','010-5959-1111');

INSERT INTO �����ּ�(����ID,�����ڵ�,�ּ�)
VALUES('A2000','��','��õ��123');

DELETE FROM ����ǥ ;

UPDATE SET ��������ó 
SET ����ó = '062-123-1111'
WHERE ����ID = 'A2000'
AND �����ڵ� = '��';

DELETE FROM �����ּ� 
WHERE ����ID IN ('A0011','A0012','A0013','A2000');

DELETE FROM ��������ó
WHERE ����ID IN('A0011','A0012','A0013','A2000');

DELETE FROM ��������ó
WHERE ����ID IN ('A0011','A0012','A0013','A2000');

INSERT INTO ����ǥ(
�л�ID, ����,����
)
VALUES(
'S0001','����',90
);

INSERT INTO ����ǥ(
�л�ID, ����,����
)
VALUES(
'S0001','����',85
);

INSERT INTO ����ǥ(
�л�ID, ����,����
)
VALUES(
'S0001','����',70
);


UPDATE {���̺��} SET {�ٲ� �÷�}  = {�ٲܰ�} WHERE �ٲٰ���� ������; 

UPDATE ����ǥ SET ���� = 80 WHERE ���� = '����' ;

CREATE VIEW �μ����ְ���_VIEW AS
SELECT �μ�ID, MAX(����) AS �μ����ְ���
FROM ����
GROUP BY �μ�ID
ORDER BY �μ�ID;


DROP VIEW �μ����ְ���_VIEW;

SELECT *
FROM ��������ó;

SELECT DISTINCT ����ID
FROM ��������ó;

SELECT *
FROM ����
WHERE ���� IS NOT NULL;

SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NULL;

SELECT ����ID, �н�����, NVL(����,20) AS ����
FROM ����;

SELECT ����ID, ����, ����,  DECODE(����,'��','�����Դϴ�','�����Դϴ�') AS ����Ȯ��
FROM ����;

SELECT ����ID, �ֹε�Ϲ�ȣ, SUBSTR(�ֹε�Ϲ�ȣ,1,6) AS �������
FROM ����;

SELECT ����ID, �����ڵ�, ����ó, REPLACE(����ó,'-','')AS ����ó��ȣ��
FROM ��������ó;

SELECT ����ID, �̸�, ����, �Ի��Ͻ�
FROM ����
WHERE ���� > 9000;

SELECT *
FROM ����
WHERE �̸� = '������';

SELECT *
FROM ��������ó
WHERE ����ó='010-1231-1234';

SELECT �μ���
FROM �μ�
WHERE �ٹ��� = '����';

SELECT �ּ�
FROM �����ּ�
WHERE ����ID = 'A0007';

SELECT ����ó
FROM ��������ó
WHERE ����ID = 'A0001'
AND �����ڵ� = '����ȭ';

SELECT *
FROM ���� 
WHERE �μ�ID='D003'
AND ���� >=30
AND ���� = '��';

SELECT *
FROM ����
WHERE ����ID = 'A0001'
OR ����ID= 'A0005'
OR ����ID = 'A0007';

SELECT ����ID, �̸�, ����
FROM ����
WHERE �̸� LIKE '%ö%';

SELECT ����ID,����, �Ի��Ͻ�
FROM ����
WHERE ���� BETWEEN 7000 AND 9000;

SELECT *
FROM �����ּ�
WHERE �ּ� LIKE '����%';


SELECT *
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID;


SELECT *
FROM ���� A, ��������ó B
WHERE A.����ID  = B.����ID;

SELECT A.����ID, A.�̸�, B.�ּ�
FROM  ���� A, �����ּ� B
WHERE A.����ID = B.����ID;

SELECT A.����ID AS ����_����ID, A.����, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID;

SELECT A.����ID AS ����_����ID, A.����, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID
AND A.����ID = 'A0007';

SELECT A.����ID AS ����_����ID, A.�̸�, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ� ,B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID(+);

SELECT A.����ID AS ����_����ID, A.�̸�, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ� ,B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID(+)
AND B.�ּ� IS NULL;

SELECT A.����ID, A.�̸�, A.����, B.�ּ�, C.����ó
FROM ���� A, �����ּ� B, ��������ó C
WHERE A.����ID = B.����ID
AND B.����ID = C.����ID;

SELECT A.����ID, A.�̸�, A.�Ի��Ͻ�, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID
AND A.����ID IN ('A0001','A0002','A0003')
AND B.�����ڵ� = '�޴���';


SELECT A.����ID, A.�̸�, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID;

SELECT A.����ID, A.�̸� ,B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID(+)
AND A.����ID IN('A0005','A0008');

SELECT A.����ID, A.�̸� ,B.�ּ�
FROM ���� A LEFT OUTER JOIN  �����ּ� B
ON (A.����ID = B.����ID)
WHERE A.����ID IN('A0005','A0008');

SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A, ���� B
WHERE A.����ID(+) = B.����ID;

SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A RIGHT OUTER JOIN ���� B
ON (A.����ID = B.����ID);

SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID ;

SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A INNER JOIN ��������ó B
ON (A.����ID = B.����ID) ;

SELECT A.����ID, A.�̸�, A.����, B.�ּ�, C.����ó
FROM ���� A INNER JOIN �����ּ� B ON (A.����ID = B.����ID) 
INNER JOIN ��������ó C ON (B.����ID = C.����ID);

SELECT �л�ID, MAX(����)
FROM ����ǥ
GROUP BY �л�ID
HAVING MAX(����) = 85;

SELECT *
FROM (
SELECT *
FROM ����
WHERE ����ID = 'A0001'
);


SELECT ����ID, �̸� ,����
FROM ����
WHERE �̸� LIKE '%ö%';
