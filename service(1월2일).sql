SELECT *
FROM ����
WHERE �μ�ID ='D001' ;

SELECT ����ID,�̸�,����,�Ի��Ͻ�
FROM ����
WHERE ���� > 9000 ;

SELECT *
FROM ����
WHERE �̸� = '������';

SELECT *
FROM ��������ó
WHERE ����ó = '010-1231-1234';

SELECT �μ���
FROM �μ�
WHERE �ٹ��� = '����';

SELECT �ּ�
FROM �����ּ�
WHERE ����ID = 'A0007';


SELECT *
FROM ����
WHERE ����= '��' AND ����>=28;

SELECT *
FROM ����
WHERE �μ�ID = 'D002' OR �μ�ID = 'D004';

SELECT ����ó
FROM ��������ó
WHERE ����ID = 'A0001'  AND �����ڵ� = '����ȭ';

SELECT *
FROM ����
WHERE �μ�ID = 'D003' AND ���� ='��' AND ���� >= 30;

SELECT *
FROM ����
--WHERE ����ID = 'A0001' or ����ID = 'A0005' or ����ID = 'A0007';
WHERE ����ID IN('A0001','A0005','A0007');

SELECT ����ID,�̸�,����
FROM ���� 
WHERE �̸� LIKE '%ö%';

SELECT ����ID, ����, �Ի��Ͻ�
FROM ����
WHERE ���� BETWEEN 7000 AND 9000;

SELECT *
FROM �����ּ�
WHERE �ּ� LIKE'����%';

SELECT *
FROM ����
WHERE  �Ի��Ͻ� LIKE '___11%';



