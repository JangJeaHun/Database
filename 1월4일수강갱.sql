SELECT �Ҽӹ�, COUNT(�л��̸�)
FROM ����������
GROUP BY �Ҽӹ�;

SELECT �л�ID, MAX(����)
FROM ����ǥ
GROUP BY �л�ID;



--HAVING ���� IS NOT NULL;


SELECT ����, MAX(����)
FROM ����ǥ
GROUP BY ����;

SELECT ���� ,MAX(����)
FROM ����ǥ
GROUP BY ����;

------------1������----------
SELECT �л�ID, ROUND(AVG(����),1) AS ��ռ���
FROM ����ǥ
GROUP BY �л�ID;

------------2������----------

SELECT MAX(����) AS �ְ��� ,MIN(����) AS ��������
FROM ����;

------------3������----------
SELECT �Ҽӹ�, COUNT(*) AS �ݺ��ο���
FROM ����������
GROUP BY �Ҽӹ�;

------------4������----------
SELECT �л�ID, AVG(����) AS �������������
FROM ����ǥ
WHERE ���� IN ('����','����')
GROUP BY �л�ID;

SELECT �л�ID, AVG(����) AS �������������
FROM ����ǥ
WHERE ���� NOT IN ('����')
GROUP BY �л�ID;

------------5������----------
SELECT �μ�ID, SUM(����) AS �μ��������հ� 
FROM ����
WHERE �μ�ID IS NOT NULL
GROUP BY �μ�ID;

------------6������----------
SELECT A.����ID, COUNT(B.����ó) AS ����ó����
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID(+)
GROUP BY A.����ID;


-----HAVING-------
SELECT �л�ID, ROUND(AVG(����),1)AS ��ռ���
FROM ����ǥ
GROUP BY �л�ID
HAVING AVG(����) <=75;



-------1������ (27p)----

SELECT �Ҽӹ�, COUNT(�Ҽӹ�) AS �ο���
FROM ����������
GROUP BY �Ҽӹ�
HAVING COUNT(�Ҽӹ�) >=3;

-------2������ (27p)----
SELECT �μ�ID, MAX(����) AS �ְ���
FROM ����
GROUP BY �μ�ID
HAVING MAX(����) = 7500;

-------3������ (27p)---
SELECT �л�ID, ROUND(AVG(����),1) AS ��ռ���
FROM ����ǥ
GROUP BY �л�ID
HAVING AVG(����) IS NOT NULL;

-------------ORDER BY--------
SELECT *
FROM ����
ORDER BY ���� ;

SELECT *
FROM ����
ORDER BY ���� ;

CREATE TABLE QUIZ_TABLE(
Q_ID NUMBER(3,0) NOT NULL,
Q_CONTENT VARCHAR2(200) NOT NULL,
Q_ANSWER VARCHAR(100),
REG_DATE DATE DEFAULT SYSDATE,
Q_BINGO VARCHAR(100) DEFAULT 'O'
);

CREATE TABLE ȸ������(
ȸ��ID VARCHAR2(100) NOT NULL,
�̸� VARCHAR2(200) NOT NULL,
�������� DATE DEFAULT SYSDATE,
���� NUMBER DEFAULT 0
);

CREATE TABLE ȸ������ó(
ȸ��ID VARCHAR2(10) NOT NULL,
�����ڵ� VARCHAR2(10) NOT NULL,
����ó VARCHAR2(15) NOT NULL
);

CREATE TABLE ȸ���ּ�(
ȸ��ID VARCHAR2(10) NOT NULL,
���θ� VARCHAR2(200) NOT NULL
);

ALTER TABLE ȸ������ MODIFY (
ȸ��ID VARCHAR2(10) 
);

ALTER TABLE ȸ���ּ� MODIFY (
���� NUMBER DEFAULT 0
);


------------------2������---------------------
ALTER TABLE ȸ������ ADD CONSTRAINT PK_ȸ������
PRIMARY KEY(ȸ��ID);

ALTER TABLE ȸ������ó ADD CONSTRAINT PK_ȸ������ó
PRIMARY KEY(ȸ��ID,�����ڵ�);

ALTER TABLE ȸ���ּ� ADD CONSTRAINT PK_ȸ���ּ�
PRIMARY KEY(ȸ��ID);
-------------------3������--------------
ALTER TABLE ȸ������ó ADD CONSTRAINT FK_ȸ������ó
FOREIGN KEY(ȸ��ID) REFERENCES ȸ������(ȸ��ID);

ALTER TABLE ȸ���ּ� ADD CONSTRAINT FK_ȸ���ּ�
FOREIGN KEY(ȸ��ID) REFERENCES ȸ������(ȸ��ID);

-----------------------------------------------------------

DROP TABLE ȸ������ CASCADE CONSTRAINTS;
--���� ��������


CREATE SEQUENCE ȸ��ID_SEQ;

SELECT ȸ��ID_SEQ.NEXTVAL
FROM DUAL;

DROP SEQUENCE ȸ��ID_SEQ;


CREATE VIEW �μ����ְ���_VIEW AS
SELECT �μ�ID, MAX(����) AS �μ����ְ���
FROM ����
GROUP BY �μ�ID
ORDER BY �μ�ID;


SELECT *
FROM �μ����ְ���_VIEW;


DROP VIEW �μ����ְ���_VIEW;

INSERT INTO ���������� (�л�ID, �л��̸�, �Ҽӹ�)
VALUES('S0088','�μ�','H');

UPDATE ����������
SET �л�ID='S0089',
�л��̸� ='��μ�',
�Ҽӹ�='G'
WHERE �л�ID='S0088';
COMMIT;


--------DML 1�� ����------


INSERT INTO ����(����ID, �н�����, �̸�, ����, ����, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID)
VALUES('A1000','hello1000','��ĳ��',NULL,29,SYSDATE,'950120-1566221',3500,'D006');

COMMIT;

--------DML 2�� ����------
UPDATE ���� SET ���� = '��',
�μ�ID = 'D005',
�н����� = 'hello1000!!!'
WHERE ����ID = 'A1000';

COMMIT;
--------DML 3�� ����------

DELETE FROM ���� WHERE ����ID='A1000';

COMMIT;

--------DML 4�� ����------
INSERT INTO ����(����ID, �н�����, �̸�, ����, ����, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID)
VALUES('A2000','hello222','��ȫ��',NULL,40,SYSDATE,'830220-1566221',5600,'D006');

INSERT INTO ��������ó(����ID,�����ڵ�,����ó)
VALUES('A2000','�޴���','010-5959-1111');

INSERT INTO �����ּ�(����ID,�����ڵ�,�ּ�)
VALUES('A2000','��','��õ��123');

COMMIT;
--------DML 5�� ����------(DROP?????)
DROP TABLE ����ǥ CASCADE CONSTRAINTS;
--���ſϷ�  ..������...

COMMIT;

DELETE FROM ����ǥ;  --�̰� ����

--------DML 6�� ����------
UPDATE ��������ó SET �����ڵ� = '����ȭ',����ó ='062-123-1111'
WHERE ����ID='A2000';

COMMIT;
--------DML 7�� ����------

ROLLBACK;

UPDATE ��������ó SET ����ó = '010-3333-5959'
--WHERE ����ID='A2000' AND �����ڵ� = '�޴���';
WHERE ����ó= '010-5959-1111';

COMMIT;
--------DML 8�� ����------
DELETE FROM �����ּ�
WHERE ����ID IN('A0011','A0012','A0013','A2000');

COMMIT;

--------DML 9�� ����------

DELETE FROM ��������ó
WHERE ����ID IN('A0011','A0012','A0013','A2000');

--------DML 10�� ����------
DELETE FROM ����
WHERE ����ID IN('A0011','A0012','A0013','A2000');

--------DML 11�� ����------

INSERT INTO ����ǥ (�л�ID,����,����)
VALUES ('S0001','����',90);

INSERT INTO ����ǥ (�л�ID,����,����)
VALUES ('S0001','����',85);

INSERT INTO ����ǥ (�л�ID,����,����)
VALUES ('S0001','����',70);

--------DML 12�� ����------
UPDATE ����ǥ SET ���� = 80  WHERE �л�ID = 'S0001' AND ���� = '����';