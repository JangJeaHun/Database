SELECT *
FROM ���� A
WHERE ���� = (
SELECT MAX(����)
FROM ����
WHERE �μ�ID = A.�μ�ID
);


SELECT *
FROM ����
WHERE �Ի��Ͻ� = (
SELECT MAX(�Ի��Ͻ�)
FROM ����
);

SELECT *
FROM ����
WHERE ���� = (
SELECT MAX(����)
FROM ����
);

SELECT ����ID, ����
FROM ����
WHERE ���� >= ANY ( 5000, 7500, 2800);

SELECT ����ID, ����
FROM ����
WHERE ���� <= ANY ( 5000, 7500, 2800);

SELECT ����ID, ����
FROM ����
WHERE ���� <= ALL ( 5000, 7500, 2800);

SELECT �̸�,����
FROM ����
WHERE ���� = (
SELECT ����
FROM ����
WHERE ����ID = 'A0006'
);

SELECT �̸�,����
FROM ����
WHERE ���� IN (
SELECT ����
FROM ����
WHERE ����ID = 'A0006'
);

SELECT ����
FROM ����
WHERE ����ID = 'A0006';

SELECT �̸�,����
FROM ����
WHERE ���� IN 7500;

SELECT ����
FROM ����
WHERE ����ID BETWEEN
'A0003' AND 'A0006';

SELECT ����ID , �̸�
FROM ���� A
WHERE EXISTS (
SELECT 1
FROM ��������ó
WHERE ����ID = A.����ID);



