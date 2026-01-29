-- Use database
USE silver_market_analysis;

-- Import data (done via MySQL Workbench Table Data Import Wizard)
-- CSV File: silver_prices_data.csv
-- Rows Imported: 3768

-- Verify data
SELECT COUNT(*) AS total_records FROM silver_prices;
