# Northwind Database — Employee Performance & Sales Analysis

## Executive Summary

This analysis reveals significant workload concentration, retention dependency on high-performing employees, and geographic supplier clustering that may expose the business to operational and supply chain risk.

Using structured SQL analysis, the project surfaces operational inefficiencies and strategic vulnerabilities rather than raw performance numbers.

---

## Performance Snapshot
- Top 3 employees handle 52% of total orders
- 6.7x workload gap between highest and lowest active employees
- 42% of customers managed by a single employee
- 82% of supplier co-location concentrated in USA & Europe

---

## Objective

The analysis was designed to determine:
- Whether workload imbalance creates operational or retention risk
- Whether inactive employee records distort performance reporting
- The relationship between order volume and customer retention
- Whether supplier geography introduces concentration risk

---

## Business Context

The Northwind dataset simulates a wholesale distribution company where employees manage customer orders and supplier relationships across multiple regions.

For a business operating in this environment, understanding how workload is distributed, which employees drive customer retention, and where supply chain dependencies are concentrated is critical for sustainable operations.

This analysis evaluates performance imbalance, data quality issues affecting reporting accuracy, and geographic risks that could disrupt supply continuity.

---

## Business Questions

1. Is order processing workload distributed evenly across the team?
2. Are there employee records distorting performance metrics?
3. Which employees drive the strongest customer retention?
4. Does supplier geography create concentration risk?
5. What does consolidated order data reveal about employee and customer dependency?

---

## Analysis Approach

The analysis was conducted using structured SQL queries across employee, order, customer, and supplier tables.

Each business question was translated into:
- Aggregation analysis to measure workload and customer coverage per employee
- Left Join filtering to surface inactive records with no associated transactions
- Multi-table Join operations to link employees, customers, and orders relationally
- Self-join logic to identify supplier pairs sharing the same geography
- Filtering and casting to handle data quality inconsistencies

Query outputs were interpreted to derive operational meaning beyond headcount and order counts.

---

## Key Findings

- Margaret Peacock processed 40 orders — approximately 20% of total volume — while Anne Dodsworth handled only 6. The top three employees processed 102 of 196 total orders, indicating heavy workload concentration.
- One employee, Adam West (EmployeeID 10), has no recorded orders. His employee notes and age profile suggest an inactive or non-operational role, making his inclusion in performance reporting misleading.
- Employees with higher order volumes also served significantly more unique customers. Margaret covered 31 of 74 customers, while Anne served 6 with no repeat orders — suggesting retention performance tracks closely with workload and experience.
- 17 of 29 supplier pairs are co-located within the same country. The USA accounts for 6 pairs (35.3%) and Europe accounts for 8 pairs (47.1%), meaning over 82% of co-located supplier relationships sit within two regions.

---

## Business Implications

- A 6.7x workload gap between the highest and lowest performing employees indicates task distribution is not systematic — this creates burnout risk for top performers and underutilisation of lower-volume staff.
- Adam West's unfiltered inclusion in team-wide KPIs inflates headcount and distorts average performance metrics, making the team appear less efficient than it is.
- The correlation between order volume and customer retention suggests retention is driven by individual employee relationships, not company-wide process — making the business vulnerable if high performers leave.
- With 82% of co-located supplier relationships concentrated in the USA and Europe, any regional disruption — trade policy changes, logistics delays, or political instability — could affect the majority of the supplier base simultaneously.

---

## Recommendations

1. Review the order assignment process to determine whether workload imbalance is structural or incidental before redistributing tasks.
2. Confirm Adam West's employment status with HR and archive or update his record to prevent it from affecting operational reporting.
3. Document the customer relationship behaviours of top performers and use them as the foundation for team-wide training and onboarding standards.
4. Target 20–25% of future supplier relationships from Asia-Pacific markets within 18 months to reduce regional concentration risk.
5. Integrate the consolidated order query into routine monthly reporting for Sales and Customer Success to track retention trends and flag workload imbalance early.

---

## Methodology & Tools

### 🛠️ Technologies Used
- SQL (MySQL syntax)
- Northwind Database (W3Schools)
- TablePlus
- GitHub for version control and documentation

---

### 🛠️ SQL Skills Demonstrated
- INNER JOIN across multiple tables
- LEFT JOIN for inactive record detection
- Self-join for geographic pair matching
- COUNT with DISTINCT for unique customer coverage
- CONCAT for full name construction
- GROUP BY and ORDER BY
- Handling data quality inconsistencies

---

### 📁 Project Structure
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
│   └── q5_order_employee_customer_details.sql
│
├── results/
│   ├── query1_employee_orders.pdf
│   ├── query2_inactive_employees.pdf
│   ├── query3_unique_customers.pdf
│   ├── query4_supplier_pairs.pdf
│   └── query5_order_details.pdf
│
└── docs/
    └── summary.md
```

### 📄 Query Output Files
All exported query results are available in the /results directory.

---

### 📝 Data Quality Notes
Text fields contain trailing whitespace in some records.
Queries account for this intentionally where filters are applied.
Employee records are not filtered by active status — Adam West (EmployeeID 10) appears in the full employee table despite having no order history.

---

## Contact

Taofeek Salami  
LinkedIn: https://www.linkedin.com/in/taofeek-salami-460a93245/  
GitHub: https://github.com/HarjiiBoss  
Email: salamitaofeek92@gmail.com

---

## License
This project is licensed under the MIT License.
