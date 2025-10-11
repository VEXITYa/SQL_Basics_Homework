SET search_path TO car_service;


INSERT INTO Clients (full_name, phone, discount)
VALUES ('John Smith', '79001112233', 5),
       ('Emily Johnson', '79002223344', 10),
       ('Michael Brown', '79003334455', 0),
       ('Olivia Davis', '79004445566', 15),
       ('William Wilson', '79005556677', 20),
       ('Emma Garcia', '79006667788', 5),
       ('Liam Martinez', '79007778899', 10),
       ('Sophia Rodriguez', '79008889900', 0),
       ('James Lopez', '79009990011', 25),
       ('Charlotte Gonzalez', '79001001002', 10);


INSERT INTO Cars (vin, client_id, brand, model, manufacture_year)
VALUES ('1HGCM82633A004352', 1, 'Toyota', 'Camry', 2018),
       ('2HGFA16598H001234', 2, 'Honda', 'Civic', 2020),
       ('3FAHP0HA7AR123456', 3, 'Ford', 'Focus', 2017),
       ('4T1BE46K47U765432', 4, 'Nissan', 'Altima', 2019),
       ('5YJSA1E26JF123987', 5, 'Tesla', 'Model S', 2022),
       ('6FTRX18L61C345678', 6, 'Ford', 'F-150', 2016),
       ('7NMSH73E58U987654', 7, 'Hyundai', 'Santa Fe', 2021),
       ('8T2BG22K98H456321', 8, 'Kia', 'Rio', 2018),
       ('9BWDE61JX34098765', 9, 'Volkswagen', 'Passat', 2019),
       ('10ABCDEF123456789', 10, 'BMW', 'X5', 2023);


INSERT INTO Employees (full_name, position, salary)
VALUES ('Robert Miller', 'Mechanic', 60000.00),
       ('Sophia Taylor', 'Electrician', 65000.00),
       ('James Anderson', 'Body Specialist', 55000.00),
       ('Isabella Thomas', 'Diagnostics Expert', 70000.00),
       ('Benjamin Jackson', 'Technician', 58000.00),
       ('Lucas White', 'Mechanic', 62000.00),
       ('Amelia Harris', 'Electrician', 67000.00),
       ('Mason Clark', 'Technician', 59000.00),
       ('Evelyn Lewis', 'Body Specialist', 56000.00),
       ('Daniel Young', 'Diagnostics Expert', 71000.00);


INSERT INTO Services (name, price)
VALUES ('Oil Change', 2500.00),
       ('Brake Replacement', 8000.00),
       ('Battery Replacement', 6000.00),
       ('Engine Diagnostics', 4500.00),
       ('Tire Balancing', 3000.00),
       ('Air Filter Replacement', 1500.00),
       ('Wheel Alignment', 4000.00),
       ('Transmission Repair', 12000.00),
       ('AC Recharge', 3500.00),
       ('Headlight Adjustment', 2000.00);


INSERT INTO Orders (client_id, car_vin, order_date, total_price)
VALUES (1, '1HGCM82633A004352', '2025-09-10 10:00:00', 10500.00),
       (2, '2HGFA16598H001234', '2025-09-12 12:00:00', 4500.00),
       (3, '3FAHP0HA7AR123456', '2025-09-14 15:00:00', 8000.00),
       (4, '4T1BE46K47U765432', '2025-09-18 09:30:00', 6000.00),
       (5, '5YJSA1E26JF123987', '2025-09-20 14:15:00', 11000.00),
       (6, '6FTRX18L61C345678', '2025-09-22 16:45:00', 3500.00),
       (7, '7NMSH73E58U987654', '2025-09-23 11:30:00', 7600.00),
       (8, '8T2BG22K98H456321', '2025-09-25 13:15:00', 9000.00),
       (9, '9BWDE61JX34098765', '2025-09-27 17:00:00', 4000.00),
       (10, '10ABCDEF123456789', '2025-09-28 10:30:00', 13000.00),
       (1, '1HGCM82633A004352', '2025-09-29 09:00:00', 7000.00),
       (3, '3FAHP0HA7AR123456', '2025-10-01 12:00:00', 5000.00),
       (5, '5YJSA1E26JF123987', '2025-10-03 11:00:00', 7500.00);


INSERT INTO Order_Service (order_id, service_id, employee_id, quantity, price, date)
VALUES (1, 1, 1, 1, 2500.00, '2025-09-10 11:00:00'),
       (1, 4, 4, 1, 4500.00, '2025-09-10 11:30:00'),
       (2, 5, 5, 1, 3000.00, '2025-09-12 12:30:00'),
       (3, 2, 2, 1, 8000.00, '2025-09-14 16:00:00'),
       (4, 3, 3, 1, 6000.00, '2025-09-18 10:00:00'),
       (5, 1, 1, 1, 2500.00, '2025-09-20 14:30:00'),
       (5, 2, 2, 1, 8000.00, '2025-09-20 15:00:00'),
       (6, 6, 6, 1, 1500.00, '2025-09-22 17:00:00'),
       (7, 7, 7, 1, 4000.00, '2025-09-23 12:00:00'),
       (8, 8, 8, 1, 12000.00, '2025-09-25 14:00:00'),
       (9, 9, 9, 1, 3500.00, '2025-09-27 18:00:00'),
       (10, 10, 10, 1, 2000.00, '2025-09-28 11:00:00'),
       (11, 4, 3, 1, 4500.00, '2025-09-29 10:00:00'),
       (12, 5, 2, 1, 3000.00, '2025-10-01 12:30:00'),
       (13, 8, 4, 1, 12000.00, '2025-10-03 12:00:00');


INSERT INTO SpareParts (name, price, quantity)
VALUES ('Oil Filter', 500.00, 50),
       ('Brake Pads Set', 3500.00, 30),
       ('Car Battery 60Ah', 7500.00, 15),
       ('Spark Plug', 400.00, 200),
       ('Tire 17inch', 6500.00, 25),
       ('Air Filter', 700.00, 40),
       ('Wiper Blade', 900.00, 60),
       ('Coolant 1L', 800.00, 80),
       ('Headlight Bulb', 1200.00, 50),
       ('Fuse Set', 300.00, 100);


INSERT INTO Order_SpareParts (order_id, part_id, amount)
VALUES (1, 1, 1),
       (2, 5, 2),
       (3, 2, 1),
       (4, 3, 1),
       (5, 4, 4),
       (6, 6, 2),
       (7, 7, 1),
       (8, 8, 3),
       (9, 9, 2),
       (10, 10, 5),
       (11, 1, 2),
       (12, 2, 1),
       (13, 3, 1);
