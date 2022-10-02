-- # 이 서비스에서는 공간을 둘 이상 등록한 사람을 "헤비 유저"라고 부릅니다. 
-- 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회하는 SQL문을 작성해주세요.

SELECT ID, NAME, HOST_ID
FROM PLACES AS P
WHERE EXISTS(
    SELECT * FROM PLACES AS L
    WHERE P.HOST_ID = L.HOST_ID
    GROUP BY HOST_ID
    HAVING COUNT(ID) >= 2)
ORDER BY ID
