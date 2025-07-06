

CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE IF NOT EXISTS
    Books (
        book_id PRIMARY KEY,
        title VARCHAR(130) NOT NULL,
        author_id VARCHAR(255) NOT NULL,
        price DOUBLE NOT NULL,
        publication_date DATE
    );

CREATE TABLE IF NOT EXISTS
    Authors (
        author_id PRIMARY KEY,
        author_name VARCHAR(215) NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    Customers (
        customer_id PRIMARY KEY,
        customer_name VARCHAR(215) NOT NULL,
        email VARCHAR(215) NOT NULL,
        address TEXT NOT NULL
    );

CREATE TABLE IF NOT EXISTS
    Orders (
        orderdetailid PRIMARY KEY,
        order_id ,
        book_id INT NOT NULL,
        quantity DOUBLE NOT NULL
    );
