SELECT �Ҽӹ�, COUNT(�Ҽӹ�)
FROM ����������
GROUP BY �Ҽӹ�;

commit;
SELECT �л�ID, ROUND(AVG(����),1) AS ��ռ���
FROM ����ǥ
GROUP BY �л�ID;


SELECT MAX(����) AS �ְ���, MIN(����) AS ��������
FROM ����;

SELECT �Ҽӹ�, COUNT(�Ҽӹ�) AS �ݺ��ο���
FROM ����������
GROUP BY �Ҽӹ�;

SELECT �л�ID, AVG(����) AS ������������� 
FROM ����ǥ
WHERE ���� = '����'
AND ���� = '����'
GROUP BY �л�ID;

SELECT �μ�ID, SUM(����) AS �μ��������հ�
FROM ����
GROUP BY �μ�ID;

SELECT A.����ID, COUNT(B.����ó)
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID(+)
GROUP BY A.����ID;

SELECT �μ�ID, SUM(����)
FROM ����
GROUP BY �μ�ID
HAVING �μ�ID IN ( 'D001', 'D002' ) ;

SELECT �μ�ID, SUM(����)
FROM ����
GROUP BY �μ�ID
HAVING ���� >= 6000 ;

SELECT �Ҽӹ�, COUNT(�Ҽӹ�) AS �ο���
FROM ����������
GROUP BY �Ҽӹ�
HAVING COUNT(�Ҽӹ�)>=3;

SELECT �μ�ID ,MAX(����) AS �ְ���
FROM ����
GROUP BY �μ�ID
HAVING MAX(����) = 7500;



SELECT �л�ID, ROUND(AVG(����),1) AS ��ռ���
FROM ����ǥ
GROUP BY �л�ID
HAVING AVG(����) IS NOT NULL;

SELECT *
FROM ����
ORDER BY �̸� ;

SELECT *
FROM ����
ORDER BY ����ID;

SELECT ����ID , �̸� ,
���� AS �������ǿ���,
���� * 0.1 AS ���ʽ�
FROM ����
ORDER BY ����;

CREATE TABLE ȸ������ (
ȸ��ID VARCHAR2(10) NOT NULL,
�̸� VARCHAR2(20) NOT NULL,
�������� DATE,
���� NUMBER DEFAULT 0
);

CREATE TABLE ȸ������ó (
ȸ��ID VARCHAR2(10) NOT NULL,
�����ڵ� VARCHAR2(10) NOT NULL,
����ó VARCHAR2(15) NOT NULL
);

CREATE TABLE ȸ���ּ� (
    ȸ��ID  VARCHAR2(10) NOT NULL,
    ���θ��ּ� VARCHAR2(200) NOT NULL
);

SELECT *
FROM ����
ORDER BY �μ�ID, �̸� DESC;


--ù��° SQL DEVELOPER






