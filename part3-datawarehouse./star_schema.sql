-- DIMENSION TABLE: DATE
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month VARCHAR(20),
    year INT
);

-- DIMENSION TABLE: STORE
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- DIMENSION TABLE: PRODUCT
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- FACT TABLE: SALES
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- INSERT INTO DATE
INSERT INTO dim_date VALUES
(1, '2024-01-01', 'January', 2024),
(2, '2024-02-01', 'February', 2024),
(3, '2024-03-01', 'March', 2024);

-- INSERT INTO STORE
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

-- INSERT INTO PRODUCT
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Shirt', 'Clothing'),
(3, 'Milk', 'Groceries');

-- INSERT INTO FACT SALES (10 rows)
INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 100000),
(2, 1, 2, 2, 5, 6000),
(3, 2, 1, 3, 10, 600),
(4, 2, 3, 1, 1, 50000),
(5, 3, 2, 2, 3, 3600),
(6, 3, 1, 3, 8, 480),
(7, 1, 3, 2, 4, 4800),
(8, 2, 2, 1, 2, 100000),
(9, 3, 3, 3, 6, 360),
(10, 1, 1, 2, 7, 8400);
