-- CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- SALES REPRESENTATIVES TABLE
CREATE TABLE sales_reps (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    rep_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

-- ORDER ITEMS TABLE (RESOLVES MANY-TO-MANY)
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- INSERT INTO CUSTOMERS
INSERT INTO customers VALUES
(1, 'Rahul', 'Mumbai'),
(2, 'Anita', 'Delhi'),
(3, 'Kiran', 'Bangalore'),
(4, 'Sneha', 'Mumbai'),
(5, 'Arjun', 'Chennai');

-- INSERT INTO PRODUCTS
INSERT INTO products VALUES
(1, 'Laptop', 50000),
(2, 'Mobile', 20000),
(3, 'Tablet', 15000),
(4, 'Headphones', 2000),
(5, 'Keyboard', 1000);

-- INSERT INTO SALES REPS
INSERT INTO sales_reps VALUES
(1, 'Ramesh'),
(2, 'Suresh'),
(3, 'Priya'),
(4, 'Amit'),
(5, 'Neha');

-- INSERT INTO ORDERS
INSERT INTO orders VALUES
(1, 1, 1, '2024-01-10'),
(2, 2, 2, '2024-01-11'),
(3, 3, 3, '2024-01-12'),
(4, 4, 4, '2024-01-13'),
(5, 5, 5, '2024-01-14');

-- INSERT INTO ORDER ITEMS
INSERT INTO order_items VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 3),
(4, 4, 4, 5),
(5, 5, 5, 4);
