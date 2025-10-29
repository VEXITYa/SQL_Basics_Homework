CREATE SCHEMA IF NOT EXISTS car_service;
SET search_path TO car_service;


CREATE TABLE Clients
(
    client_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100)       NOT NULL,
    phone     VARCHAR(15) UNIQUE NOT NULL,
    discount  SMALLINT CHECK (discount BETWEEN 0 AND 100) DEFAULT 0
);


CREATE TABLE Cars
(
    vin              VARCHAR(17) PRIMARY KEY,
    client_id        INT         NOT NULL REFERENCES Clients (client_id) ON DELETE CASCADE,
    brand            VARCHAR(50) NOT NULL,
    model            VARCHAR(50) NOT NULL,
    manufacture_year SMALLINT CHECK (manufacture_year BETWEEN 1900 AND EXTRACT(YEAR FROM CURRENT_DATE))
);


CREATE TABLE Employees
(
    employee_id SERIAL PRIMARY KEY,
    full_name   VARCHAR(100) NOT NULL,
    position    VARCHAR(50),
    salary      NUMERIC(10, 2) CHECK (salary >= 0)
);


CREATE TABLE Services
(
    service_id SERIAL PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    price      NUMERIC(10, 2) CHECK (price >= 0)
);


CREATE TABLE Orders
(
    order_id    SERIAL PRIMARY KEY,
    client_id   INT         REFERENCES Clients (client_id) ON DELETE SET NULL,
    car_vin     VARCHAR(17) REFERENCES Cars (vin) ON DELETE SET NULL,
    order_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price NUMERIC(10, 2) CHECK (total_price >= 0)
);


CREATE TABLE Order_Service
(
    order_id        INT NOT NULL REFERENCES Orders (order_id) ON DELETE CASCADE,
    service_id      INT NOT NULL REFERENCES Services (service_id) ON DELETE CASCADE,
    employee_id     INT REFERENCES Employees (employee_id) ON DELETE SET NULL,
    quantity        SMALLINT DEFAULT 1 CHECK (quantity > 0),
    price           NUMERIC(10, 2) CHECK (price >= 0),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (order_id, service_id)
);


CREATE TABLE SpareParts
(
    part_id  SERIAL PRIMARY KEY,
    name     VARCHAR(100) NOT NULL UNIQUE,
    price    NUMERIC(10, 2) CHECK (price >= 0),
    quantity INT DEFAULT 0 CHECK (quantity >= 0)
);


CREATE TABLE Order_SpareParts
(
    order_id INT REFERENCES Orders (order_id) ON DELETE CASCADE,
    part_id  INT REFERENCES SpareParts (part_id) ON DELETE CASCADE,
    amount   INT DEFAULT 1 CHECK (amount > 0),
    PRIMARY KEY (order_id, part_id)
);