-- �ȳ��ϼ���
-- ���� �ּ� ó�� (�ڵ忡 ������ �Ȱ��� ����)
/*
��������������������
��������������
*/

--�����ư : CTRL + ENTER �����ϰ��� �ϴ� ���忡 Ŀ���� �÷� ���� ����
--���� ���� : ���� �ϰ��� �ϴ� ������ ��� ������ CTRL + ENTER
--�� ������ ���� ������ �׻� �����ݷ�(;)�� ����Ͽ� ������ ����
SELECT
    *
FROM
    �μ�;

SELECT
    *
FROM
    ����;
    
SELECT DISTINCT �����ڵ� FROM ��������ó;

SELECT ����ID, �н�����, �̸�,����,����
FROM ����
WHERE ���� = '��';

SELECT ����ID, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID
FROM ����; 

SELECT �μ�ID, �μ���, �ٹ���
FROM �μ�;

SELECT ����ID, �����ڵ�, ����ó
FROM ��������ó;

SELECT * 
FROM ����;

SELECT *
FROM �����ּ�;

SELECT DISTINCT ����
FROM ����;


SELECT *
FROM ��������ó;

SELECT ����ID as EMP_ID  
FROM ��������ó;

SELECT *
FROM ��������ó;

SELECT *
FROM ����
WHERE ���� IS NULL;

SELECT  ����ID, ���� , NVL(����,0)
FROM ����;



SELECT  *
FROM ����
WHERE ���� IS NOT NULL;

SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NULL;

SELECT ����ID, �н�����, NVL(����,20) as ����
FROM ����;

SELECT ����ID, ����, ����, DECODE(����,'��','�����Դϴ�','�����Դϴ�')as ����Ȯ��
FROM ����;

SELECT �ֹε�Ϲ�ȣ, REPLACE(�ֹε�Ϲ�ȣ, '-', ' ')
FROM ���� ;

SELECT ����ID, �ֹε�Ϲ�ȣ, SUBSTR(�ֹε�Ϲ�ȣ,1,6) as �������
FROM ����;

SELECT ����ID, �����ڵ�, ����ó, REPLACE(����ó,'-','')as ����ó��ȣ��
FROM ��������ó;

SELECT *
FROM ����
WHERE ���� is not null;

SELECT *
FROM ����
WHERE �Ի��Ͻ� is null;

SELECT ����ID,�н�����,NVL(����,20)as ����
FROM ����;

SELECT ����ID, ����, ����, DECODE(����,'��','�����Դϴ�','�����Դϴ�') AS ����Ȯ��
FROM ����;`

SELECT ����ID, �ֹε�Ϲ�ȣ, SUBSTR(�ֹε�Ϲ�ȣ,1,6) AS �������
FROM ����;


SELECT ����ID, �����ڵ�, ����ó, REPLACE(����ó,'-','')AS ����ó��ȣ�� 
FROM ��������ó;

SELECT DISTINCT SYSDATE AS ��¥
FROM ��������ó ;

SELECT ����ID, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, �μ�ID
FROM ����;

SELECT �μ�ID, �μ���, �ٹ���
FROM �μ�;

SELECT ����ID, �����ڵ�, ����ó
FROM ��������ó;

SELECT *
FROM ����;

SELECT *
FROm �����ּ�;

SELECT *
FROM ��������ó;


SELECT ����ID, �н�����, NVL(����,20) as ����
FROM ����;

SELECT ����ID,����,����, DECODE(����,'��','�����Դϴ�','�����Դϴ�')
FROM ����;

SELECT ����ID, �ֹε�Ϲ�ȣ, SUBSTR(�ֹε�Ϲ�ȣ,1,6) AS �������
FROM ����;

SELECT DISTINCT ����ID  
FROM ��������ó;

SELECT *
FROM ����
WHERE ���� IS NOT NULL;

SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NULL;


SELECT ����ID, �����ڵ�,����ó, REPLACE(����ó,'-','') As ����ó��ȣ��
FROM ��������ó;

SELECT 
SYSDATE,
LAST_DAY(SYSDATE)

FROM  DUAL;


SELECT ����ID , �Ի��Ͻ� ,
ADD_MONTHS(�Ի��Ͻ�, 60),
ADD_MONTHS(�Ի��Ͻ�, -60)
FROM ���� ;



