CREATE DATABASE IF NOT EXISTS website;

USE website;

-- USER TABLE --

CREATE TABLE IF NOT EXISTS users (
user_id INT PRIMARY KEY,
user_name VARCHAR(50),
user_mobile VARCHAR(50),
user_email VARCHAR(100),
user_address VARCHAR(225),
user_designation VARCHAR (10),
user_password VARCHAR (20)
);

DESCRIBE seller;

-- SELLER TABLE --

CREATE TABLE IF NOT EXISTS seller (
seller_id INT PRIMARY KEY,
seller_name VARCHAR(50),
seller_mobile VARCHAR(50),
seller_email VARCHAR(100),
seller_address VARCHAR(225),
seller_designation VARCHAR (10),
seller_password VARCHAR (20)
);

-- WISHLIST TABLE --

CREATE TABLE IF NOT EXISTS wishlist (
product_id VARCHAR (10) PRIMARY KEY,
user_id VARCHAR (10),
name VARCHAR (25),
current_price int);

-- ORDER LIST TABLE ( USERS ) --

CREATE TABLE IF NOT EXISTS order_list (
order_id VARCHAR (10),
user_id VARCHAR (10),
seller_id VARCHAR (10),
product_id VARCHAR (10),
order_status VARCHAR (30));

-- ORDERS ( SELLER ) --

CREATE TABLE IF NOT EXISTS orders (
order_id VARCHAR (10),
user_id VARCHAR (10),
seller_id VARCHAR (10),
product_id VARCHAR (10),
order_status VARCHAR (30));

-- PRODUCTS TABLE --

CREATE TABLE IF NOT EXISTS products (
product_id VARCHAR (10) PRIMARY KEY,
product_name VARCHAR(30),
actual_price INT ,
current_price INT,  
discount_percent INT,
seller_id VARCHAR (10)
);

