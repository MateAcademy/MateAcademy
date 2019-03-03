SELECT * FROM OFFICES;
--
SELECT OFFICE, CITY,REGION, MGR,TARGET,SALES  FROM OFFICES;
--
SELECT TABLE_NAME FROM USER_TABLES;
--
SELECT CITY FROM OFFICES;
--
SELECT CITY, REGION FROM OFFICES;
--
SELECT CITY, TARGET, SALES FROM OFFICES;
--
SELECT CITY, TARGET, SALES FROM OFFICES WHERE REGION = 'Запад';
--
SELECT CITY, TARGET, SALES FROM OFFICES  WHERE REGION = 'Запад'  AND SALES > TARGET ORDER BY CITY;
--
SELECT CITY, TARGET, SALES FROM OFFICES  WHERE REGION = 'Запад'  AND SALES > TARGET;
--
SELECT AVG(TARGET), AVG(SALES) FROM OFFICES WHERE REGION = 'Запад';
--
SELECT NAME, REP_OFFICE, HIRE_DATE FROM SALESREPS;
--
SELECT NAME, QUOTA, SALES FROM SALESREPS WHERE EMPL_NUM = 107;
--
SELECT AVG(SALES) FROM SALESREPS WHERE EMPL_NUM = 107;
--
SELECT NAME, HIRE_DATE FROM SALESREPS  WHERE SALES > 50000;
--
SELECT NAME, MANAGER, QUOTA FROM SALESREPS;
--
SELECT CITY, REGION, SALES  FROM OFFICES;
--
SELECT CITY, REGION, (SALES-TARGET)  FROM OFFICES;
--
SELECT CITY, REGION, '$ '||(SALES-TARGET) AS STOIM FROM OFFICES;
--
SELECT CITY, REGION, (SALES-TARGET) AS STOIM FROM OFFICES;
--
SELECT MFR_ID, PRODUCT_ID, DESCRIPTION, (QTY_ON_HAND * PRICE) FROM PRODUCTS;
--
SELECT MFR_ID, PRODUCT_ID, DESCRIPTION, '$ '||(QTY_ON_HAND * PRICE) AS STOIM  FROM PRODUCTS;
--
SELECT NAME, QUOTA, (QUOTA +((SALES/100)*3))  FROM SALESREPS;
--
SELECT CITY, 'Has sales of', SALES  FROM OFFICES;
--
SELECT * FROM OFFICES;
--
SELECT MGR FROM OFFICES;
--
SELECT DISTINCT MGR FROM OFFICES;
--
SELECT CITY, SALES, TARGET FROM OFFICES  WHERE SALES > TARGET;
--
SELECT SALES, NAME, QUOTA FROM SALESREPS WHERE EMPL_NUM = 105;
--
SELECT NAME, SALES FROM SALESREPS WHERE MANAGER = 104;
--
SELECT NAME FROM SALESREPS WHERE HIRE_DATE < TO_DATE('01.06.1988','DD/MM/YYYY');
--
SELECT CITY, MGR FROM OFFICES WHERE MGR <> 108;
--
SELECT CITY, SALES, TARGET FROM OFFICES WHERE SALES < (0.8 * TARGET);
--
SELECT ORDER_NUM, ORDER_DATE, MFR, PRODUCT, AMOUNT FROM ORDERS WHERE ORDER_DATE BETWEEN TO_DATE('01.11.1989','DD/MM/YYYY') AND TO_DATE('31.12.1989','DD/MM/YYYY');
--
SELECT ORDER_NUM, AMOUNT FROM ORDERS WHERE AMOUNT BETWEEN 20.000  AND 29.999;
--
SELECT ORDER_NUM, AMOUNT FROM ORDERS WHERE  AMOUNT BETWEEN 30.000  AND 39.999;
--
SELECT ORDER_NUM, AMOUNT FROM ORDERS WHERE  AMOUNT BETWEEN 1.000  AND 9.999;
--
SELECT NAME, SALES, QUOTA  FROM SALESREPS WHERE SALES NOT BETWEEN (0.8 * QUOTA)  AND (1.2 * QUOTA);
--
SELECT NAME, QUOTA, SALES  FROM SALESREPS  WHERE REP_OFFICE IN (11, 13, 22);
--
SELECT ORDER_NUM, ORDER_DATE, AMOUNT FROM ORDERS WHERE ORDER_DATE IN (TO_DATE('14.06.1990','DD/MM/YYYY'), TO_DATE('08.06.1990','DD/MM/YYYY'),TO_DATE('29.06.1990','DD/MM/YYYY'), TO_DATE('04.06.1990','DD/MM/YYYY'));
--
SELECT ORDER_NUM, REP, AMOUNT  FROM ORDERS WHERE REP IN (107, 109, 101, 103);
--
SELECT COMPANY, CREDIT_LIMIT  FROM CUSTOMERS  WHERE COMPANY  = 'Апельсин';
--
SELECT COMPANY, CREDIT_LIMIT FROM CUSTOMERS WHERE COMPANY LIKE '%н';
--
SELECT COMPANY, CREDIT_LIMIT FROM CUSTOMERS WHERE COMPANY LIKE '%бесы';
--
SELECT COMPANY, CREDIT_LIMIT FROM CUSTOMERS  WHERE COMPANY LIKE 'Ап_льсин';
--
SELECT NAME FROM SALESREPS WHERE REP_OFFICE = NULL;
--
SELECT NAME FROM SALESREPS WHERE REP_OFFICE IS NULL;
--
SELECT NAME FROM SALESREPS WHERE REP_OFFICE IS NOT NULL;
--
SELECT NAME, QUOTA, SALES  FROM SALESREPS  WHERE SALES < QUOTA OR SALES < 300.0;
--
SELECT NAME, QUOTA, SALES  FROM SALESREPS WHERE SALES < QUOTA AND SALES < 300.0;
--
SELECT NAME, QUOTA, SALES FROM SALESREPS WHERE (SALES < QUOTA) AND (NOT SALES > 150.000);
--
SELECT NAME FROM SALESREPS WHERE (REP_OFFICE IN (22,11,12)) OR (MANAGER IS NULL AND HIRE_DATE >= TO_DATE('01.05.88','DD/MM/YYYY')) OR (SALES > QUOTA AND NOT SALES > 60.0);
--
SELECT CITY, REGION, SALES FROM OFFICES  ORDER BY REGION, CITY;
--
SELECT CITY, REGION, SALES FROM OFFICES ORDER BY SALES DESC;
--
SELECT CITY, REGION, (SALES - TARGET) FROM OFFICES ORDER BY 3 DESC;
--
SELECT CITY, REGION, (SALES - TARGET)FROM OFFICES ORDER BY REGION ASC, 3 DESC;
--
SELECT MFR_ID, PRODUCT_ID FROM PRODUCTS WHERE PRICE > 500.00;
--
SELECT DISTINCT MFR, PRODUCT FROM ORDERS WHERE AMOUNT > 4.00;
--
SELECT MFR_ID, PRODUCT_ID FROM PRODUCTS WHERE PRICE > 500.00 UNION SELECT DISTINCT MFR, PRODUCT FROM ORDERS WHERE AMOUNT > 4.00;
--
SELECT MFR_ID, PRODUCT_ID FROM PRODUCTS WHERE PRICE > 500.00 UNION ALL SELECT DISTINCT MFR, PRODUCT FROM ORDERS WHERE AMOUNT > 4.00;
--
SELECT MFR_ID, PRODUCT_ID FROM PRODUCTS WHERE PRICE > 500.00 UNION ALL SELECT DISTINCT MFR, PRODUCT FROM ORDERS WHERE AMOUNT > 4.00 ORDER BY 1,2;
--