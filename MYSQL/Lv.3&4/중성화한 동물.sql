-- # 보호소에 들어올 당시에는 중성화1되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종,
-- 이름을 조회하는 아이디 순으로 조회하는 SQL 문을 작성해주세요.

SELECT B.ANIMAL_ID, B.ANIMAL_TYPE, B.NAME
FROM ANIMAL_INS AS A
JOIN ANIMAL_OUTS AS B
WHERE A.ANIMAL_ID = B.ANIMAL_ID AND A.SEX_UPON_INTAKE != B.SEX_UPON_OUTCOME
ORDER BY A.ANIMAL_ID
