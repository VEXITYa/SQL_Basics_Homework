SET search_path TO car_service;


-- ORDER BY, WHERE
SELECT * FROM clients;


SELECT *
FROM clients
ORDER BY discount;


SELECT *
FROM clients
WHERE discount > 10;


SELECT
    discount,
    COUNT(full_name) as clients
FROM clients
GROUP BY discount
ORDER BY discount;


SELECT * FROM cars;

SELECT
    Brand,
    Model
FROM cars
WHERE manufacture_year between 2019 and 2022;


-- GROUP BY
SELECT
    cli.full_name as Name,
    cli.phone as Phone,
    cli.discount as Discount,
    COUNT(ord.order_id) as Orders
FROM orders ord
RIGHT JOIN clients cli on ord.client_id = cli.client_id
GROUP BY cli.full_name, cli.phone, cli.discount;


-- JOIN
SELECT
    cli.full_name as Name,
    cars.brand as Brand,
    cars.manufacture_year as ManufactureYear,
    SUM(ord.total_price) as TotalRepairsPrice
FROM clients cli
INNER JOIN cars on cli.client_id = cars.client_id
RIGHT JOIN orders ord
    on  ord.client_id = cli.client_id
    and ord.car_vin = cars.vin
GROUP BY cli.full_name, cars.brand, cars.manufacture_year
ORDER BY SUM(ord.total_price) DESC;


-- UPDATE
SELECT * FROM clients
ORDER BY full_name;


UPDATE clients cli
SET discount = 0
WHERE discount = 5;

SELECT * FROM clients
ORDER BY full_name;



SELECT * FROM orders
ORDER BY order_date;

UPDATE orders
SET total_price = total_price * 0.9
WHERE total_price > 5000;

SELECT * FROM orders
ORDER BY order_date;


-- DELETE
SELECT * FROM spareparts
ORDER BY name;

DELETE FROM spareparts
WHERE name = 'Tire 17inch';

SELECT * FROM spareparts
ORDER BY name;


SELECT * FROM services
ORDER BY name;

DELETE FROM services
WHERE price > 7000;

SELECT * FROM services
ORDER BY name;


-- ADDITIONAL
INSERT INTO Cars (vin, client_id, brand, model, manufacture_year)
VALUES ('1HGCM82836A004352', 20, 'Toyota', 'Camry', 2018);


