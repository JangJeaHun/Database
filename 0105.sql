CREATE TABLE �Խ��� ( 
�Խ��ǹ�ȣ NUMBER(9) PRIMARY KEY , 
�ۼ���       VARCHAR2(50) NOT NULL , 
�Խù����� VARCHAR2(4000) NOT NULL  , 
�ۼ��Ͻ� DATE   NOT NULL 
) ;

INSERT INTO �Խ���
SELECT LEVEL                                -- �Խ��ǹ�ȣ
        , '���̵�' || MOD(LEVEL , 10000)     -- �ۼ��� 
        , '���̵�' || 
           MOD(LEVEL , 10000) || 
           '���� �ۼ��Ͻ� �Խù��Դϴ�. �� �Խù��� �Խ��� ��ȣ�� ' 
           || LEVEL 
           || '�Դϴ�'                       -- �Խù����� 
      , TO_DATE('20000101') + LEVEL         --2022�� 1��1�Ϻ��� �Ϸ羿 �Խù��� �ԷµǴ� ��
  FROM DUAL
CONNECT BY LEVEL <=1000000;                 --100������ ������ �Է� 

COMMIT; 




SELECT *
FROM (
SELECT *
FROM �Խ���
ORDER BY �ۼ��Ͻ� DESC
)
WHERE ROWNUM <= 20;


SELECT
    A.����ID,
    A.����,
    A.�μ�ID,
    (
        SELECT
            �μ���
        FROM
            �μ�
        WHERE
            �μ�ID = A.�μ�ID
    ) AS �μ���
FROM
    ���� A
WHERE
    ����ID BETWEEN 'A0001' AND 'A0006';
    
    
SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE ����ID BETWEEN 'A0001' AND 'A0006'
AND A.�μ�ID = B.�μ�ID(+);
----------------------------��Į�� ���� ���� 1����-------------
SELECT A.����ID, A.����, A.�μ�ID,(
SELECT �μ���
FROM �μ�
WHERE �μ�ID=A.�μ�ID
) AS �μ���
FROM ���� A
WHERE ����ID BETWEEN 'A0001' AND 'A0006';
-----------
SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID
AND ����ID BETWEEN 'A0001' AND 'A0006';

----------------------------��Į�� ���� ���� 2����-------------
SELECT A.����ID, A.�̸�,A.�ֹε�Ϲ�ȣ,
(
SELECT ����ó
FROM ��������ó
WHERE ����ID=A.����ID
AND �����ڵ�='�޴���'
) AS �޴�����ȣ

FROM ���� A
WHERE ����ID BETWEEN 'A0006' AND 'A0010';
-------
SELECT A.����ID, A.�̸�, A.�ֹε�Ϲ�ȣ, B.����ó AS �޴�����ȣ
FROM ���� A , ��������ó B
WHERE A.����ID BETWEEN 'A0006' AND 'A0010'
AND A.����ID = B.����ID(+)
AND (�����ڵ� = '�޴���' OR B.����ó IS NULL) ;



SELECT
    A.����ID,
    A.����,
    A.�μ�ID,
    (
        SELECT
            �μ���
        FROM
            �μ�
        WHERE
            �μ�ID = A.�μ�ID
    ) AS �μ���
FROM
    ���� A
WHERE
    ����ID BETWEEN 'A0001' AND 'A0006';
    
    
    
SELECT *
FROM (
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ���� 
)
WHERE ROWNUM <= 3;

SELECT *
FROM ����
WHERE ���� >= (SELECT AVG(����)FROM ����);

SELECT *
FROM ���� A
WHERE ���� = ( SELECT MIN(����)
                FROM ����
                WHERE �μ�ID = A.�μ�ID );

-----p27 �ǽ�����1��----
SELECT *
FROM ���� A
WHERE ���� = (
            SELECT MAX(����)
            FROM ����
            WHERE �μ�ID= A.�μ�ID
);
-----p27 �ǽ�����2��----
SELECT
    *
FROM
    ���� A
WHERE
    �Ի��Ͻ� = (
        SELECT
            MAX(�Ի��Ͻ�)
        FROM
            ����
    );

-----p27 �ǽ�����3��----
SELECT *
FROM ����
WHERE ���� = (
        SELECT MAX(����)
        FROM ����
);


