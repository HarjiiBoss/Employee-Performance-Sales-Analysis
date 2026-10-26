# Northwind Database — Employee Performance & Sales Analysis

## Executive Summary

This analysis reveals significant workload concentration, customer coverage concentrated in a few employees, and geographic supplier clustering that may expose the business to operational and supply chain risk.

Using structured SQL analysis, the project surfaces operational inefficiencies and strategic vulnerabilities rather than raw performance numbers.

---

## Performance Snapshot

- Top 3 employees handle 51% of total orders (100 of 196)
- 6.7x workload gap between highest and lowest active employees
- One employee served 42% of customers (31 of 74)
- 82% of same-country supplier pairs are in the USA & Europe

---

## Objective

The analysis was designed to determine:
- Whether workload is evenly distributed across the team
- Whether inactive employee records distort performance reporting
- The relationship between order volume and customer coverage
- Whether supplier geography introduces concentration risk

---

## Business Context

The Northwind dataset simulates a wholesale distribution company where employees manage customer orders and supplier relationships across multiple regions.

For a business operating in this environment, understanding how workload is distributed, how customers are spread across employees, and where supply chain dependencies are concentrated is critical for sustainable operations.

This analysis evaluates performance imbalance, data quality issues affecting reporting accuracy, and geographic risks that could disrupt supply continuity.

---

## Business Questions

1. Is order processing workload distributed evenly across the team?
2. Are there employee records distorting performance metrics?
3. Which employees serve the most customers?
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

- Margaret Peacock processed 40 orders — approximately 20% of total volume — while Anne Dodsworth handled only 6. The top three employees processed 100 of 196 total orders (51%).
- One employee, Adam West (EmployeeID 10), has no recorded orders. His employee notes and age profile suggest an inactive or non-operational role, making his inclusion in performance reporting misleading.
- Employees with higher order volumes also served significantly more unique customers. Margaret covered 31 of 74 customers, while Anne served 6 with no repeat orders. Retention per employee was not measured.
- The 29 suppliers form 17 same-country pairs. The USA accounts for 6 pairs (35.3%) and Europe accounts for 8 pairs (47.1%), meaning over 82% of co-located supplier relationships sit within two regions.

---

## Business Implications

- A 6.7x workload gap between the highest and lowest performing employees may indicate uneven task distribution; the data does not show hours worked or order complexity, so the cause needs checking.
- Adam West's unfiltered inclusion in team-wide KPIs inflates headcount and distorts average performance metrics, making the team appear less efficient than it is.
- Customer coverage is concentrated in a few high-volume employees, so the business could be exposed if they leave. Whether they also retain customers better was not measured.
- With 82% of co-located supplier relationships concentrated in the USA and Europe, any regional disruption — trade policy changes, logistics delays, or political instability — could affect the majority of the supplier base simultaneously.

---

## Recommendations

1. Review the order assignment process to determine whether workload imbalance is structural or incidental before redistributing tasks.
2. Confirm Adam West's employment status with HR and archive or update his record to prevent it from affecting operational reporting.
3. Document the customer relationship behaviours of top performers and use them as the foundation for team-wide training and onboarding standards.
4. Assess whether adding suppliers outside the USA and Europe would reduce regional concentration risk.
5. Integrate the consolidated order query into routine monthly reporting for Sales and Customer Success to track retention trends and flag workload imbalance early.

---

## Methodology & Tools

### Technologies Used
- SQL (MySQL syntax)
- Northwind Database (W3Schools)
- TablePlus
- GitHub for version control and documentation

---

### SQL Skills Demonstrated
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
