
SELECT *
FROM ���� , �μ�
WHERE ����.�μ�ID=�μ�.�μ�ID;

SELECT *
FROM ���� A, ��������ó B
WHERE A.����ID=B.����ID;

SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID=B.����ID;

SELECT A.����ID AS ����_����ID, A.����, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID;

SELECT A.����ID AS ����_����ID, A.����, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID
AND A.����ID = 'A0007';

SELECT A.����ID, A.�̸�, A.����, B.����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID(+);

SELECT A.����ID, A.����, A.����, B.����ID, B.�����ڵ�, B.�ּ�
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
------------4�ܿ� �ǽ�1�� ����--------
SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A LEFT OUTER JOIN �����ּ� B ON (A.����ID = B.����ID)
WHERE A.����ID IN('A0005','A0008');

------------4�ܿ� �ǽ�2�� ����--------
SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A RIGHT OUTER JOIN ���� B
ON (A.����ID = B.����ID);

------------4�ܿ� �ǽ�3�� ����--------
SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID;

SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A INNER JOIN ��������ó B
ON (A.����ID = B.����ID);

------------4�ܿ� TIP �ǽ� ����--------

SELECT A.����ID, A.�̸�, A.����, B.�ּ�, C.����ó
FROM ���� A 
INNER JOIN �����ּ� B 
ON  (A.����ID = B.����ID)
INNER JOIN ��������ó C
ON  (B.����ID = C.����ID); 
--------------------------------------

SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID(+)
AND A.����ID IN ('A0005','A0008');

SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A LEFT OUTER JOIN �����ּ� B
ON (A.����ID = B.����ID)
WHERE A.����ID IN ('A0005','A0008');

SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A, ���� B
WHERE A.����ID(+) = B.����ID;

SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A RIGHT OUTER JOIN  ���� B ON (A.����ID = B.����ID);

SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID;


