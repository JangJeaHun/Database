
SELECT *
FROM 流盔 , 何辑
WHERE 流盔.何辑ID=何辑.何辑ID;

SELECT *
FROM 流盔 A, 流盔楷遏贸 B
WHERE A.流盔ID=B.流盔ID;

SELECT A.流盔ID, A.捞抚, B.林家
FROM 流盔 A, 流盔林家 B
WHERE A.流盔ID=B.流盔ID;

SELECT A.流盔ID AS 流盔_流盔ID, A.己喊, A.唱捞, B.流盔ID AS 林家_流盔ID, B.备盒内靛, B.林家
FROM 流盔 A, 流盔林家 B
WHERE A.流盔ID = B.流盔ID;

SELECT A.流盔ID AS 流盔_流盔ID, A.己喊, A.唱捞, B.流盔ID AS 林家_流盔ID, B.备盒内靛, B.林家
FROM 流盔 A, 流盔林家 B
WHERE A.流盔ID = B.流盔ID
AND A.流盔ID = 'A0007';

SELECT A.流盔ID, A.捞抚, A.楷豪, B.流盔ID, B.备盒内靛, B.林家
FROM 流盔 A, 流盔林家 B
WHERE A.流盔ID = B.流盔ID(+);

SELECT A.流盔ID, A.己喊, A.唱捞, B.流盔ID, B.备盒内靛, B.林家
FROM 流盔 A, 流盔林家 B
WHERE A.流盔ID = B.流盔ID(+)
AND B.林家 IS NULL;

SELECT A.流盔ID, A.捞抚, A.唱捞, B.林家, C.楷遏贸
FROM 流盔 A, 流盔林家 B, 流盔楷遏贸 C
WHERE A.流盔ID = B.流盔ID
AND B.流盔ID = C.流盔ID;

SELECT A.流盔ID, A.捞抚, A.涝荤老矫, B.楷遏贸 
FROM 流盔 A, 流盔楷遏贸 B
WHERE A.流盔ID = B.流盔ID
AND A.流盔ID IN ('A0001','A0002','A0003')
AND B.备盒内靛 = '绒措迄';

SELECT A.流盔ID, A.捞抚, A.何辑ID, B.何辑疙
FROM 流盔 A, 何辑 B
WHERE A.何辑ID = B.何辑ID;

SELECT A.流盔ID, A.捞抚, B.林家
FROM 流盔 A LEFT OUTER JOIN 流盔林家 B ON (A.流盔ID = B.流盔ID)
WHERE A.流盔ID IN('A0005','A0008');

SELECT B.流盔ID, B.捞抚, A.林家
FROM 流盔林家 A RIGHT OUTER JOIN 流盔 B
ON (A.流盔ID = B.流盔ID);

SELECT A.流盔ID, A.捞抚, A.唱捞, B.楷遏贸
FROM 流盔 A, 流盔楷遏贸 B
WHERE A.流盔ID = B.流盔ID;

SELECT A.流盔ID, A.捞抚, A.唱捞, B.楷遏贸
FROM 流盔 A INNER JOIN 流盔楷遏贸 B
ON (A.流盔ID = B.流盔ID);

SELECT A.流盔ID, A.捞抚, A.唱捞, B.林家, C.楷遏贸
FROM 流盔 A 
INNER JOIN 流盔林家 B 
ON  (A.流盔ID = B.流盔ID)
INNER JOIN 流盔楷遏贸 C
ON  (B.流盔ID = C.流盔ID); 