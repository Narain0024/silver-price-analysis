USE silver_market_analysis;

-- Basic validation
SELECT COUNT(*) FROM silver_prices;

SELECT MIN(trade_date), MAX(trade_date)
FROM silver_prices;

-- Descriptive statistics
SELECT
    ROUND(AVG(close_price), 2) AS avg_close,
    MIN(close_price) AS min_close,
    MAX(close_price) AS max_close
FROM silver_prices;

-- Yearly trend analysis
SELECT
    YEAR(trade_date) AS year,
    ROUND(AVG(close_price), 2) AS avg_yearly_price
FROM silver_prices
GROUP BY year
ORDER BY year;

-- Monthly trend analysis
SELECT
    YEAR(trade_date) AS year,
    MONTH(trade_date) AS month,
    ROUND(AVG(close_price), 2) AS avg_monthly_price
FROM silver_prices
GROUP BY year, month
ORDER BY year, month;

-- High volatility days
SELECT
    trade_date,
    ROUND(high_price - low_price, 2) AS daily_volatility
FROM silver_prices
ORDER BY daily_volatility DESC
LIMIT 10;

-- High volume trading days
SELECT
    trade_date,
    volume
FROM silver_prices
ORDER BY volume DESC
LIMIT 10;

-- Daily price change
SELECT
    trade_date,
    close_price,
    close_price - LAG(close_price) OVER (ORDER BY trade_date) AS daily_change
FROM silver_prices;

-- Rolling 30-day average
SELECT
    trade_date,
    close_price,
    ROUND(
        AVG(close_price) OVER (
            ORDER BY trade_date
            ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
        ), 2
    ) AS rolling_30_day_avg
FROM silver_prices;

-- Index for performance
CREATE INDEX idx_trade_date ON silver_prices(trade_date);
