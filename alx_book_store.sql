

CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE IF NOT EXISTS
    Books (
        book_id INT PRIMARY KEY,
        title VARCHAR(130) NOT NULL,
        author_id VARCHAR(255) NOT NULL,
        price DOUBLE NOT NULL,
        publication_date DATE
    );

CREATE TABLE IF NOT EXISTS
    Authors (
        author_id INT PRIMARY KEY,
        author_name VARCHAR(215) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    Customers (
        customer_id INT PRIMARY KEY,
        customer_name VARCHAR(215) NOT NULL,
        email VARCHAR(215) NOT NULL,
        address TEXT NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    Orders (
        order_id INT PRIMARY KEY,
        customer_id INT NOT NULL,
        order_date DATE NOT NULL,
        FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    );

CREATE TABLE IF NOT EXISTS
    Orders_Details (
        orderdetailid INT PRIMARY KEY,
        order_id INT NOT NULL,
        book_id INT NOT NULL,
        quantity DOUBLE NOT NULL,
        FOREIGN KEY (order_id) REFERENCES Orders(order_id),
        FOREIGN KEY (book_id) REFERENCES Books(book_id)
    );
