-- Create database
CREATE DATABASE IF NOT EXISTS silver_market_analysis;

-- Use database
USE silver_market_analysis;

-- Drop table if exists
DROP TABLE IF EXISTS silver_prices;

-- Create table
CREATE TABLE silver_prices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    trade_date DATE,
    close_price DECIMAL(10,2),
    high_price DECIMAL(10,2),
    low_price DECIMAL(10,2),
    open_price DECIMAL(10,2),
    volume BIGINT
);
