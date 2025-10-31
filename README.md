# 🍕 Pizza Sales Analysis Project

![Excel Dashboard](https://github.com/BananiIITM/Pizza-Sales-Analysis/blob/main/Pizza%20sales%20excel%20Dashboard.png)

---

## 📘 Project Overview
The **Pizza Sales Analysis** project aims to analyze transactional sales data from a pizza store to uncover **key business insights, trends, and KPIs**.  
The analysis focuses on identifying **top-performing pizzas, customer behavior, and time-based sales patterns** to help management make data-driven decisions for marketing, menu optimization, and operations.

---

## 🎯 Business Objectives
- Measure total **revenue, orders, and pizzas sold**.  
- Determine **sales distribution** by category, size, and type.  
- Identify **top and bottom-performing pizzas**.  
- Analyze **daily, hourly, and monthly sales trends**.  
- Calculate **Average Order Value (AOV)** and **Average Pizzas per Order**.  
- Build **interactive dashboards** for performance monitoring.

---

## 🧮 Dataset Information
**Dataset Name:** `pizza_sales.csv`  
**Rows:** 48,620  
**Columns:** 9  
**Source:** Point-of-Sale transactional data  

| Column Name | Description |
|--------------|-------------|
| order_id | Unique identifier for each order |
| pizza_id | Unique identifier for each pizza |
| pizza_name | Name of the pizza sold |
| pizza_category | Category (Classic, Supreme, Veggie, Chicken) |
| pizza_size | Size (S, M, L, XL) |
| quantity | Quantity of pizzas sold per order |
| total_price | Total revenue for that transaction |
| order_date | Date of the order |
| order_time | Time of order placement |

---

## 🧰 Tools & Technologies
| Tool | Purpose |
|------|----------|
| **Excel** | Quick KPIs and Pivot Dashboards |
| **SQL (MySQL)** | Data extraction, cleaning, KPI computation |
| **Python (Pandas, Matplotlib)** | Validation, analysis, and visual trend detection |
| **Power BI** | Interactive visualization and executive dashboard |
| **GitHub** | Project versioning and documentation |

---

## 🧮 SQL Analysis Summary
**Database:** `pizzadb`  

| KPI | SQL Query Result |
|------|------------------|
| Total Revenue | ₹817,860.05 |
| Total Orders | 21,350 |
| Total Pizzas Sold | 49,574 |
| Average Order Value | ₹38.31 |
| Avg. Pizzas per Order | 2.32 |

**Additional Analysis**
- Friday & Saturday → highest sales days  
- Large pizzas → most revenue (~47%)  
- Classic pizzas → most popular category  
- Top 5 pizzas → Classic Deluxe, BBQ Chicken, Hawaiian, Pepperoni, Thai Chicken  
- Bottom 5 pizzas → Brie Carre, Mediterranean, Calabrese, Spinach Supreme, Soppressata  

---

## 🐍 Python Analysis
Validated SQL outputs and visualized time-based trends using **Pandas, Matplotlib, and Seaborn**.

**Highlights:**
- Daily and hourly analysis confirmed Friday–Saturday evening peaks (6–8 PM).  
- Automated consistency checks between SQL and Power BI KPIs.  
- Generated correlation charts for order volume and revenue growth.  

---

## 📊 Power BI Dashboard

![Power BI Dashboard](https://github.com/BananiIITM/Pizza-Sales-Analysis/blob/main/PIZZA%20SALES%20DB.png)

**Dashboard Features:**
- KPI Cards: Total Revenue, Orders, AOV, and Avg Pizzas / Order  
- Trend Charts: Daily, Monthly, Hourly patterns  
- Category & Size Sales: Bar / Donut visualizations  
- Top / Bottom 5 pizzas: Horizontal bar charts  
- Interactive Filters by Category, Size, Month  

**Key Insights:**
- Classic & Large pizzas drive majority of revenue.  
- Seasonal peaks during December – January.  
- Veggie category underperforming → menu optimization opportunity.  

---

## 📈 Excel Dashboard Overview

![Excel Dashboard](https://github.com/BananiIITM/Pizza-Sales-Analysis/blob/main/Pizza%20sales%20excel%20Dashboard.png)

**Insights:**
- Total Revenue: ₹8.17 L | Orders: 21,350 | AOV: ₹38.3  
- Classic pizzas → highest sales volume  
- Large size → top contributor  
- Top 5 pizzas: Classic Deluxe, BBQ Chicken, Hawaiian, Pepperoni, Thai Chicken  
- Friday & Saturday → busiest days  

---

## 💡 Business Recommendations
- Focus marketing on **Classic & Large pizzas**.  
- Offer **weekday discounts** to balance traffic.  
- Review or redesign **low-selling pizzas**.  
- Optimize **staff scheduling** for weekend peaks.  
- Continuously monitor **KPIs via Power BI** for real-time decisions.

---

## 🚀 Future Scope
- Automate reports using Python schedulers or SQL jobs.  
- Add customer-level analytics for loyalty insights.  
- Build **sales forecasting model** using ML.  
- Create **real-time dashboards** connected to live data.  

---

## 📚 Project Deliverables
- ✅ `Pizza Sales.ipynb` – Python analysis notebook  
- ✅ `Pizza Sales.sql` – SQL queries and KPIs  
- ✅ `PIZZA SALES DB.pbix` – Power BI dashboard  
- ✅ `Business Requirements Document.docx` – BRD  
- ✅ `pizza_sales.csv` – Dataset  
- ✅ `README.md` – Documentation  

---

## 👩‍💻 Author
**Banani Mallick**  
📧 [Bananiiitm2025@gmail.com](mailto:Bananiiitm2025@gmail.com)  
🔗 [GitHub Profile](https://github.com/BananiIITM) | [LinkedIn](https://www.linkedin.com/in/banani-mallick-155320235/)  
🎓 *Diploma in Data Science – IIT Madras*  

---

### 🏁 **Final Note**
> This project demonstrates a complete data analytics pipeline — from **data to decision**, blending SQL precision, Python automation, and Power BI storytelling for effective business intelligence.

---
