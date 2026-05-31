# Sales Performance Dashboard
<img width="1316" height="372" alt="image" src="https://github.com/user-attachments/assets/4df04aff-ed2a-426c-8d2c-d0a31787f6ea" />

An end-to-end data analysis project built with Excel, SQL, and Python. The same 150-row sales dataset is analyzed across three tools to demonstrate how each handles data cleaning, aggregation, visualization, and reporting.

---

## Project Overview

| Tool | Purpose | Key Skills Demonstrated |
|------|---------|------------------------|
| **Excel** | Quick exploration and stakeholder-ready dashboards | Tables, PivotTables, charts, calculated columns |
| **MySQL** | Structured querying, relational logic, complex aggregations | JOINs, GROUP BY, window functions, CASE statements |
| **Python** | Reproducible analysis, automation, and visualization | pandas, matplotlib, data pipelines, export automation |

---

## Dataset

**Source:** Self-generated synthetic sales data  
**Size:** 150 rows, 8 columns  
**Time Period:** Full year 2024  
**Fields:**

| Column | Description |
|--------|-------------|
| OrderID | Unique order identifier |
| OrderDate | Transaction date |
| Region | Sales region (North, South, East, West) |
| Category | Product category (Electronics, Clothing, Home & Garden, Sports) |
| Product | Specific product name |
| Quantity | Units sold per order |
| UnitPrice | Price per unit |
| Revenue | Calculated: Quantity × UnitPrice |

---

## Repository Structure
<img width="566" height="361" alt="image" src="https://github.com/user-attachments/assets/fc75cad2-fa98-4bdc-a7cf-c087ddcf82e1" />
<img width="615" height="310" alt="image" src="https://github.com/user-attachments/assets/9a3c8d72-fd41-4bf4-b92b-00e4de1fd943" />


---

## Key Analyses Performed

### 1. Revenue by Region
- **Excel:** PivotTable with sum of Revenue
- **SQL:** `GROUP BY Region` with `SUM(Revenue)`
- **Python:** `df.groupby('Region')['Revenue'].sum()`

### 2. Revenue by Category with Ranking
- **SQL:** `RANK() OVER (ORDER BY SUM(Revenue) DESC)`
- **Python:** `sort_values(ascending=False)` with index as rank

### 3. Region × Category Cross-Tabulation
- **Excel:** PivotTable with rows and columns
- **Python:** `pd.crosstab(values=Revenue, aggfunc='sum', margins=True)`

### 4. Monthly Trend Analysis
- **SQL:** `DATE_FORMAT(OrderDate, '%Y-%m')` with `GROUP BY`
- **Python:** `dt.to_period('M')` with line chart

### 5. Performance vs. Target (Manager Lookup)
- **SQL:** `JOIN` with `regions` table + `CASE` with multiple `WHEN` conditions
- **Python:** `merge()` with `apply()` function for tiered performance status

---

## Tools & Technologies

- **Excel:** Tables, PivotTables, charts, XLOOKUP
- **MySQL:** Server, Workbench, SQL queries
- **Python 3.x:** pandas, matplotlib, openpyxl, mysql-connector-python
- **Jupyter Notebook:** Interactive analysis environment

---

## What I Learned

| Insight | Application |
|---------|-------------|
| Excel is fastest for quick exploration | Stakeholder previews, ad-hoc questions |
| SQL handles relationships and scale | Production databases, complex joins |
| Python enables automation and repeatability | Scheduled reports, data pipelines |
| No single tool replaces the others | Each has a role in the analyst's workflow |

---

## How to Run This Project

### Excel
1. Open `excel/Sales_Dashboard.xlsx`
2. Explore pivot tables in the `Excel_Analysis` sheet
3. Modify data in `Raw_Data` and refresh pivots

### SQL
1. Install MySQL Server and MySQL Workbench
2. Run `sql/01_create_database.sql` to create the database
3. Import `data/sales_data.csv` using the Table Data Import Wizard
4. Execute queries in `sql/03_analysis_queries.sql` and `sql/04_advanced_queries.sql`

### Python
1. Install dependencies: `pip install pandas matplotlib openpyxl`
2. Open `python/analysis.ipynb` in Jupyter Notebook
3. Run cells sequentially from top to bottom
4. Or run the standalone script: `python python/analysis.py`

---

## Sample Output

**Revenue by Region (Python/matplotlib):**

![Revenue by Region](outputs/revenue_by_region.png)

**Monthly Trend (Python/matplotlib):**

![Monthly Trend](outputs/monthly_trend.png)

---

## Future Enhancements

- [ ] Add Power BI or Tableau dashboard
- [ ] Implement predictive forecasting with scikit-learn
- [ ] Connect Python directly to MySQL for live data pipeline
- [ ] Build a Streamlit web app for interactive exploration

---

## About Me

Aspiring data analyst learning by building. I rotate between Excel, SQL, and Python to stay engaged and see how each tool solves the same problem differently.

**Connect with me:** [Your LinkedIn URL]

---

## License

This project is for educational purposes. Feel free to fork, modify, and build upon it.

