# Silver Price Market Analysis (2011–2026)

## 📌 Project Overview
This project presents an end-to-end analysis of historical silver price data
from 2011 to 2026. The objective is to understand price trends, volatility,
trading activity, and seasonal patterns using Python, SQL, and Power BI.

The project follows a complete analytics pipeline:
Python for exploratory data analysis (EDA),
SQL for structured querying, and
Power BI for interactive dashboard visualization.

---

## 🛠 Tools & Technologies
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- MySQL
- SQL
- Power BI
- CSV Dataset

---

## 🧪 Python Exploratory Data Analysis (EDA)
The Python EDA notebook explores the dataset to uncover statistical patterns
and trends before visualization.

Key EDA steps include:
- Data loading and preprocessing
- Date-time conversion and sorting
- Descriptive statistics of silver prices
- Feature engineering (Year, Month, Daily Volatility)
- Visualization of price trends, volatility, and volume
- Summary of key analytical insights

Notebook location:
notebooks/silver_price_eda.ipynb

---

## 🗄 SQL Analysis
SQL was used to structure the dataset and perform analytical queries such as:
- Yearly average silver prices
- Highest and lowest price detection
- Trading volume aggregation
- Volatility analysis

SQL scripts are available in:
sql/

---

## 📊 Power BI Dashboard
An interactive Power BI dashboard was built using data sourced from MySQL.

Dashboard features:
- KPI cards (Average Price, Highest Price, Lowest Price, Trading Days)
- Long-term silver price trend (2011–2026)
- Yearly average price analysis
- Trading volume trend
- Volatility analysis
- Separate data view for raw records

Dashboard file:
powerbi/silver_price_dashboard.pbix

---

## 🖼 Dashboard Preview
![Dashboard Overview](screenshots/dashboard_overview.png)


---

## 📁 Project Structure
silver-price-analysis/
├── data/
│ └── silver_prices_data.csv
├── notebooks/
│ └── silver_price_eda.ipynb
├── sql/
│ ├── schema.sql
│ ├── import.sql
│ └── analysis_queries.sql
├── powerbi/
│ └── silver_price_dashboard.pbix
├── screenshots/
│ ├── dashboard_overview.png
│ └── data_view.png
└── README.md

---

## 📄 Dataset
Source: Kaggle – Silver Prices Dataset (2011–2026)

---

## 👤 Author
**Sai Narain**

