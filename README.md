![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Status](https://img.shields.io/badge/Status-Complete-success)

# Northwind Database - Employee Performance and Sales Analysis

## 📊 Project Overview
This project analyzes employee performance, workload distribution, and reporting structure using the Northwind database available on W3Schools. 
Through SQL analysis of 196 orders across 7.3 months, I identify performance disparities, customer retention patterns, 
and supply chain concentration risks to provide actionable recommendations for sales operations optimization.

**Project:** Northwind Database - Employee Performance and Sales Analysis  
**Author:** Taofeek Salami  
**Date:** November 2025  
**Database:** Northwind (W3Schools)

---

## 🎯 Business Objectives
- Analyze employee workload based on number of orders handled  
- Identify top-performing employees based on sales involvement  
- Detect imbalance in work distribution among staff  
- Provide insight for staffing and training decisions  

---

## 🛠️ Technologies Used
- SQL (MySQL syntax)  
- Northwind Database (W3Schools)  
- TablePlus  
- GitHub for version control and documentation  

---

## 🛠️ SQL Skills Demonstrated
- JOIN operations 
- GROUP BY and aggregate functions (COUNT, SUM)  
- Subqueries for deeper analysis  
- ORDER BY and ranking  
- Handling text-based fields  
- Filtering for performance insights  

---

## 📁 Project Structure
```
Employee-Performance-Sales-Analysis/
│
├── README.md
│
├── sql/
│   ├── q1_employee_orders_count.sql
│   ├── q2_inactive_employees.sql
│   ├── q3_employee_unique_customers.sql
│   ├── q4_suppliers_pair_by_country.sql
│   ├── q5_order_employee_customer_details.sql
│   └── ...
│
├── results/
│   ├── query1_employee_orders_count.pdf
│   ├── query2_inactive_employees.pdf
│   ├── query3_employee_unique_customers.pdf
│   ├── query4_suppliers_pair_by_country.pdf
│   ├── query5_order_employee_customer_details.pdf
│   └── ...
│
└── docs/
    └── summary.md
```

---

## 📄 Query Output Files
All exported query results in PDF or CSV format are stored inside the `/results` directory.

---

## 🔍 Key Analysis Questions (High-Level Summary)

### 1. Which employees handled the most orders?
A small group of employees consistently handled the majority of orders.

### 2. Is the workload evenly distributed across staff?
There is a clear imbalance, with some employees carrying significantly more workload than others.

### 3. Which employees are linked to the most customers?
Some employees serve a higher number of unique customers, indicating higher engagement.

### 4. Are there underutilized employees?
A number of employees appear to be less engaged in workload compared to their peers.

---

## 💡 Key Insights (Summary)
- Workload is not evenly distributed among employees  
- A few high performers account for most sales activity  
- Some employees may be overworked  
- Others may benefit from additional responsibilities or training  

---

## 🎯 Business Recommendations (Summary)
1. Redistribute workload more evenly among staff  
2. Reward and retain top-performing employees  
3. Provide additional training to underutilized staff  
4. Review team structure to improve efficiency  
5. Use insights to plan future hiring decisions  

---

## 📝 Data Quality Notes
Some text fields contain trailing whitespace, for example `'Germany '` instead of `'Germany'`.  
Queries intentionally account for this issue:

```sql
WHERE Country = 'Germany '
```

Some ID fields are stored as text strings. Sorting and calculations were handled carefully in queries.

---

## 👨‍💻 Author
**Taofeek Salami**  
Data Analyst | SQL Enthusiast  
November 2025  

- LinkedIn: https://www.linkedin.com/in/taofeek-salami-460a93245/  
- GitHub: https://github.com/HarjiiBoss  
- Email: salamitaofeek92@gmail.com  

---

## 📄 License
This project is open source and available for educational and portfolio purposes.

---

*This analysis uses the W3Schools Northwind sample database strictly for learning and demonstration.*
