-- # 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회하는 SQL 문을 작성해주세요.
-- 이때 결과는 장바구니의 아이디 순으로 나와야 합니다.

SELECT A.CART_ID
FROM CART_PRODUCTS as A
join CART_PRODUCTS as B
WHERE A.CART_ID = B.CART_ID
AND A.NAME = 'Milk' and B.NAME='Yogurt'
ORDER BY A.CART_ID
