/* ---------------------------------------------------
   ALX Book Store Database Schema
   --------------------------------------------------- */

-- CREATE DATABASE -----------------------------------------------------------

CREATE DATABASE IF NOT EXISTS ALX_BOOK_STORE;
USE ALX_BOOK_STORE;

-- AUTHORS -------------------------------------------------------------------

CREATE TABLE Authors (
    author_id      INT AUTO_INCREMENT PRIMARY KEY,
    author_name    VARCHAR(215) NOT NULL
);

-- BOOKS ---------------------------------------------------------------------

CREATE TABLE Books (
    book_id          INT AUTO_INCREMENT PRIMARY KEY,
    title            VARCHAR(130) NOT NULL,
    author_id        INT NOT NULL,
    price            DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id)
        REFERENCES Authors(author_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- CUSTOMERS -----------------------------------------------------------------

CREATE TABLE Customers (
    customer_id   INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email         VARCHAR(215) UNIQUE,
    address       TEXT
);

-- ORDERS --------------------------------------------------------------------

CREATE TABLE Orders (
    order_id    INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date  DATE,
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- ORDER_DETAILS -------------------------------------------------------------

CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id      INT NOT NULL,
    book_id       INT NOT NULL,
    quantity      DOUBLE NOT NULL,
    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (book_id)
        REFERENCES Books(book_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
