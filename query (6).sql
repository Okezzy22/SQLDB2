CREATE TABLE HOUSEPRICES_USA
(
    HOUSEID INT,
    STATE VARCHAR(30),
    CITY VARCHAR(30),
    BEDROOMS INT,
    BATHROOMS INT,
    YEAR INT,
    PRICE INT,
    ZIPCODE INT
);

CREATE TABLE HOUSEPRICES_CA
(
HOUSEID INT,
    PROVINCE VARCHAR(30),
    CITY VARCHAR(30),
    BEDROOMS INT,
    BATHROOMS INT,
    YEAR INT,
    PRICE INT,
    POSTALCODE CHAR(30)
	);

INSERT INTO HOUSEPRICES_USA VALUES (112, 'ALABAMA', 'AUBURN', 4, 3, 2019, $275000, 36117)
INSERT INTO HOUSEPRICES_USA VALUES (114, 'TEXAS', 'HOUSTON', 7, 5, 2019, $133000, 77001)
INSERT INTO HOUSEPRICES_USA VALUES (115, 'OKLAHOMA', 'TULSA', 5,4, 2002, $185200, 73013)
INSERT INTO HOUSEPRICES_USA VALUES (116, 'CALIFORNIA','LONGBEACH', 7, 5, 2013, $255000, 90717)
INSERT INTO HOUSEPRICES_USA VALUES (117, 'COLORADO', 'DENVER', 3, 2, 2018, $192715, 80201)
INSERT INTO HOUSEPRICES_USA VALUES (118, 'CALIFORNIA', 'LOSANGELES', 8, 6, 2017, $7000000, 94204)
INSERT INTO HOUSEPRICES_USA VALUES (119, 'NEWYORK', 'BROOKLYN', 5, 4, 2013, $825034, 12301)
INSERT INTO HOUSEPRICES_USA VALUES (120, 'MASSACHUSETTS', 'BOSTON', 4, 3, 2015, $720000, 02108)
INSERT INTO HOUSEPRICES_USA VALUES (121, 'MONTANA', 'HELANA', 5, 4, 2018, $712302, 59601)
INSERT INTO HOUSEPRICES_USA VALUES (122, 'NORTHCAROLINA', 'CHARLOTTE', 5, 5, 2017, $652521, 27601)
INSERT INTO HOUSEPRICES_USA VALUES (123, 'NEWYORK', 'NEWYORKCITY', 3, 3, $2005, 421400, 12251)
INSERT INTO HOUSEPRICES_USA VALUES (124, 'TEXAS', 'DALLAS', 5, 4, 2020, $520305, 75302)
INSERT INTO HOUSEPRICES_USA VALUES (125, 'GEORGIA', 'ATLANTA', 6, 5, 2016, $855423, 30301)
INSERT INTO HOUSEPRICES_USA VALUES (126, 'COLORADO', 'DENVER', 5, 5, 2016, $754321, 80223)
INSERT INTO HOUSEPRICES_USA VALUES (127, 'MARYLAND', 'ANNAPOLIS', 4, 3, 2015, $337255, 21401)
INSERT INTO HOUSEPRICES_USA VALUES (128, 'FLORIDA', 'MIAMI', 5, 4, 2010, $2500000, 32301)
INSERT INTO HOUSEPRICES_USA VALUES (129, 'CALIFORNIA', 'LONGBEACH', 4, 3, 2009, $460053, 94225)
INSERT INTO HOUSEPRICES_USA VALUES (130, 'GEORGIA', 'ATLANTA', 5, 4, 2018, $645500, 30302)

INSERT INTO HOUSEPRICES_CA VALUES(111, 'ALBERTA', 'CALGARY', 4, 3, 2015, $278293, 'ABT3JIG6')
INSERT INTO HOUSEPRICES_CA VALUES(112, 'ALBERTA', 'BEAUMOUNT', 5, 6, 2019, $522313, 'ABT2B1G7')
INSERT INTO HOUSEPRICES_CA VALUES(113, 'BRITISHCOLUMBIA', 'VANCOUVER', 5, 9, 2017, $33990000, 'BCV6H2JS')
INSERT INTO HOUSEPRICES_CA VALUES(114, 'ALBERTA', 'EDMONTON', 4, 2, 2005, $299000, 'ABT5G2N9')
INSERT INTO HOUSEPRICES_CA VALUES(115, 'BRITISHCOLUMBIA', 'VANCOUVER', 12, 12, 2013, $12999998, 'BCV6H2Y9')
INSERT INTO HOUSEPRICES_CA VALUES(116, 'ALBERTA', 'KELOWNA', 3, 4, 2015, $7880000, 'BCVIV2RI')
INSERT INTO HOUSEPRICES_CA VALUES(117, 'ONTARIO', 'OTTAWA', 4, 4, 2012, $699900, 'KIK2E9')
INSERT INTO HOUSEPRICES_CA VALUES(118, 'ONYARIO', 'TORONTO', 4, 2, 2015, $609900, 'MTL2R3')
INSERT INTO HOUSEPRICES_CA VALUES(119, 'ONTARIO', 'TORONTO', 4, 4, 2017, $1699000, 'M2M2YB')
INSERT INTO HOUSEPRICES_CA VALUES(120, 'ALBERTA', 'EDMONTON', 5, 4, 2017, $825000, 'ABT6X1P3')
INSERT INTO HOUSEPRICES_CA VALUES(121, 'ONTARIO', 'OTTAWA', 5, 8, 2015, $199900, 'K4M1K3')
INSERT INTO HOUSEPRICES_CA VALUES(122, 'BRITISHCOLUMBIA', 'COLUMBIA', 4, 5, 2015, $3850000, 'V6M3P9')
INSERT INTO HOUSEPRICES_CA VALUES(123, 'ALBERTA', 'KELOWNA', 4, 3, 2009, $12999000, 'BCVIW4L1')

--SELECT MIN(PRICE) FROM HOUSEPRICES_CA, HAVING MIN(PRICE) > 500000, WHERE PROVINCE NOT LIKE 'O'
SELECT MIN(PRICE) AS MINPRICE, PROVINCE, CITY
FROM [dbo].[HOUSEPRICES_CA]
WHERE PROVINCE NOT LIKE '%O%'
GROUP BY PROVINCE, CITY
ORDER BY MIN(PRICE)



