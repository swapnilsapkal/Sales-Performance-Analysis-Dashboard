# 📊 Sales Performance Analysis Dashboard

An end-to-end data analytics project analyzing retail sales data across products, regions, and customers — built using **Excel, SQL Server (SSMS), Python, and Power BI**.

---

## 🔍 Project Overview

This project performs a full sales performance analysis on a retail dataset covering 5 years of transactions (2020–2025). The goal was to clean raw sales data, extract business insights using SQL Server queries in SSMS, explore patterns using Python, and present findings through an interactive Power BI dashboard.

> **Use case:** Helping a retail business understand which products, regions, and customers drive the most revenue and profit.

---

## 📁 Project Structure

```
sales-performance-dashboard/
│
├── data/
│   └── sales_dataset.xlsx              # Raw dataset (1,194 records)
│
├── sql/
│   └── analysis_queries.sql            # All SQL Server queries used in SSMS
│
├── notebooks/
│   └── sales_analysis.ipynb            # Python EDA notebook (pandas, matplotlib, seaborn)
│
├── dashboard/
│   ├── Sales_Dashboard.pbix            # Power BI dashboard file
│   └── Sales_Dashboard.pdf             # Dashboard export (viewable without Power BI)
│
└── README.md
```

---

## 📦 Dataset

| Property | Details |
|---|---|
| Source | Retail sales records |
| Records | 1,194 orders |
| Time period | March 2020 – March 2025 |
| Columns | 12 (Order ID, Amount, Profit, Quantity, Category, Sub-Category, PaymentMode, Order Date, CustomerName, State, City, Year-Month) |
| Categories | Electronics, Office Supplies, Furniture |
| Regions | Florida, Illinois, New York, California, Texas, Ohio |
| Payment modes | UPI, Debit Card, EMI, Credit Card, COD |

---

## 📈 Key Business Insights

| KPI | Value |
|---|---|
| 💰 Total Revenue | $61,82,639 |
| 📊 Total Profit | $16,10,697 |
| 📦 Total Orders | 1,194 |
| 📉 Profit Margin | 26.05% |
| 🏆 Top Category | Office Supplies ($20,89,510) |
| 📍 Top State | New York |
| 👤 Top Customer | Cory Evans ($28,557) |
| 🛒 Top Sub-Category | Markers |

### Findings

- **Office Supplies** generates the highest revenue despite lower average order value — driven by high order volume
- **New York** is the top-performing state, followed by California and Florida
- **UPI and Debit Card** are the most popular payment modes, together covering 60%+ of transactions
- Revenue shows a clear **peak in late Q4** (October–December) every year — indicating seasonal demand
- Profit margin is consistent across categories at ~26%, suggesting a uniform pricing strategy

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Data cleaning, Pivot Tables, KPI formulas, initial charts |
| **SQL Server (SSMS)** | Business queries — revenue by category, top customers, regional analysis, time-series trends |
| **Python** | EDA with pandas, visualizations with matplotlib and seaborn, feature engineering |
| **Power BI** | Interactive KPI dashboard with DAX measures, map visual, and slicers |

---

## ⚙️ Steps Performed

### Phase 1 — Excel
- Inspected all 12 columns for data types and quality
- Confirmed zero null values across all fields
- Added **Profit Margin %** as a derived column `= (Profit / Amount) * 100`
- Built Pivot Tables for Revenue by Category, State, and Month
- Created bar, line, and pie charts organized into a single Dashboard sheet
- Computed summary KPIs using `SUMIF`, `COUNTIF`, and `AVERAGE`

### Phase 2 — SQL Server (SSMS)
- Connected to SQL Server and imported the sales dataset as a table
- Wrote and executed queries for:
  - Total Revenue, Profit, Orders, and Average Margin
  - Revenue and Profit by Category (with margin %)
  - Top 5 Sub-Categories by revenue
  - Revenue by State with Average Order Value
  - Top 10 Customers by Total Spend
  - Monthly and Yearly revenue trends using `YEAR()` and `MONTH()`
  - Payment mode distribution
- Saved all queries as `analysis_queries.sql`

### Phase 3 — Python (EDA)
- Loaded and inspected data with `pandas`
- Cleaned column names, parsed dates, extracted Month and Year
- Created derived feature: `Profit_Margin_Pct`
- Generated visualizations:
  - Bar chart — Revenue by Category
  - Horizontal bar — Revenue by Sub-Category
  - Line chart — Monthly Revenue Trend (2020–2025)
  - Correlation heatmap (Amount, Profit, Quantity, Margin)
  - Pie chart — Payment Mode Distribution
- Summarized key business insights in markdown cells

### Phase 4 — Power BI
- Connected to Excel file as data source
- Created **DAX measures**: Total Revenue, Total Profit, Total Orders, Avg Order Value, Profit Margin %
- Built dashboard with:
  - 4 KPI cards (top row)
  - Bar chart — Revenue by Category
  - Map visual — Revenue by State (bubble size = revenue)
  - Line chart — Monthly Revenue and Profit Trend
  - Customer table — Top customers by revenue
  - Slicers — Category, State, Date range

---

## 📊 Dashboard Preview

![Sales Performance Analysis Dashboard](Sales Performance Analysis Dashboard.pdf)

> Interactive version: Open `Sales Performance Analysis Dashboard.pbix` in Power BI Desktop (free download)

**Dashboard features:**
- Filter by Category (Electronics / Office Supplies / Furniture)
- Filter by State (dropdown)
- Filter by Date range (slider)
- All visuals update dynamically when slicers are applied

---

## 💻 How to Run

### Python Notebook
```bash
# Install dependencies
pip install pandas matplotlib seaborn openpyxl

# Launch Jupyter
jupyter notebook notebooks/sales_analysis.ipynb
```

### SQL Queries (SSMS)
```
1. Open SQL Server Management Studio (SSMS)
2. Connect to your SQL Server instance
3. Create a new database: sales_db
4. Import sales_dataset.xlsx as a table named 'sales'
   (Right-click database → Tasks → Import Data → follow the wizard)
5. Open analysis_queries.sql in SSMS
6. Select all → Execute (F5)
```

### Power BI Dashboard
```
1. Download Power BI Desktop (free) from powerbi.microsoft.com
2. Open dashboard/Sales_Dashboard.pbix
3. Use slicers to explore the data interactively
```

---

## 📚 Skills Demonstrated

- ✅ Data cleaning and quality assessment
- ✅ SQL Server querying in SSMS (aggregations, GROUP BY, ORDER BY, TOP N)
- ✅ Python EDA with pandas, matplotlib, and seaborn
- ✅ Feature engineering (derived columns, date parsing)
- ✅ DAX measure creation in Power BI
- ✅ Interactive dashboard design with slicers and map visual
- ✅ Business insight extraction and communication

---

## 👤 Author

**Swapnil Sapkal**  
B.Tech — Data Science 

📧 [swapnilsapkal2004@gmail.com]  
🔗 [www.linkedin.com/in/swapnil-sapkal-315a2b290]  
🐙 [https://github.com/swapnilsapkal]  

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
