--ù��° SQL DEVELOPER

--�λ�����

SELECT ����ID, �̸�, ����
FROM ����
WHERE ����ID='A0005';

UPDATE ����
SET
    ���� = 6000
WHERE
    ����ID = 'A0005';
COMMIT;
COMMIT;
COMMIT;
COMMIT;

SELECT ROWNUM AS RN,
����ID,
�̸�
FROM ����
WHERE ROWNUM <= 3 ;




SELECT * 
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ���� DESC;

CREATE VIEW �����̺�
SELECT *;




SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            ����
        WHERE
            ���� IS NOT NULL
        ORDER BY
            ���� DESC
    )
WHERE
    ROWNUM <= 5;
    
    
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY ����;

-----�ǽ� 1�� ����---------

SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            ����
        WHERE
            ���� IS NOT NULL
        ORDER BY
            ����
    )
WHERE
    ROWNUM <= 3;
    
-----------------   
SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NOT NULL
ORDER BY �Ի��Ͻ� DESC;
 ----------------�ǽ� 2�� ����--- 

SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            ����
        WHERE
            �Ի��Ͻ� IS NOT NULL
        ORDER BY
            �Ի��Ͻ� DESC)
WHERE
    ROWNUM <= 3;
    
    


