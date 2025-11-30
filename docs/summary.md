# Northwind Employee Performance & Sales Analysis — Summary Report

## Overview

This document summarizes key findings, insights, and recommendations from the SQL analysis of employee performance and workload distribution in the Northwind database.  
It provides a high-level business interpretation without requiring review of the individual query files.

---

## 1. Employee Order Processing Volume

**Finding:**  
Margaret Peacock processed 40 orders, representing approximately 20 percent of total order volume, while Anne Dodsworth handled only 6 orders. 
The top three employees, Margaret, Janet, and Steven, processed 102 of the 196 total orders.

**Insight:**  
There is a significant imbalance in workload distribution across the team. Margaret’s order volume is approximately 6.7 times higher than Anne’s, 
and she alone handled more orders than the bottom three employees combined. This pattern suggests uneven task assignment rather than normal performance differences.

**Business Impact:**  
Overburdened employees face higher risk of burnout and reduced service quality, while underutilized staff represent untapped capacity. Before making staffing changes, 
confirm whether low-volume employees are part-time, newly hired, or working on different levels of task complexity. 
Consider gradual workload redistribution, rotation policies, and mentorship pairing with high performers.

---

## 2. Inactive Employee Detection

**Finding:**  
One employee, Adam West (EmployeeID 10), has no recorded orders. His notes describe him as “an old chum,” and his age is significantly higher than the rest of the team.

**Insight:**  
Adam likely holds a non-operational, inactive, or retired role. His inclusion in the employee dataset affects performance metrics and may distort analysis of team productivity.

**Business Impact:**  
Confirm Adam’s current status with HR. If inactive or retired, update or archive his record to prevent its inclusion in operational reporting. 
If he serves in an advisory capacity, clearly document this role to avoid misinterpretation in future performance reviews.

---

## 3. Customer Relationship Breadth

**Finding:**  
Margaret Peacock served 31 unique customers, representing approximately 42 percent of the total 74 customers, and is associated with 9 repeat orders. 
Anne Dodsworth served 6 customers and recorded no repeat orders. Overall, employees with higher order counts also show broader customer coverage.

**Insight:**  
Higher order volume appears to correlate with stronger customer engagement and retention. This may be driven by experience, communication skill, customer trust, 
or longevity with the company. Anne’s results may indicate limited tenure or a need for additional support in customer relationship development.

**Business Impact:**  
Use top-performing employees such as Margaret and Janet as internal benchmarks for effective customer relationship practices. 
Introduce mentoring or shadowing programs for lower-performing staff. Convert high-performing behaviors into documented training guidelines for new and existing employees.

---

## 4. Supplier Geographic Concentration Risk

**Finding:**  
Seventeen supplier pairs are co-located in the same country. The United States accounts for 6 pairs (35.3 percent), while European countries account for 8 pairs (47.1 percent). 
Asia and Australia together represent only 2 pairs (11.8 percent).

**Insight:**  
More than 82 percent of co-located supplier relationships are concentrated in the United States and Europe. This creates elevated exposure to region-specific risks, 
including trade policy changes, logistics disruptions, natural disasters, and political instability.

**Business Impact:**  
Pursue a geographic diversification strategy by identifying suppliers in Asia-Pacific regions. Target 20 to 25 percent of future supplier relationships from this region within 18 months. 
Establish backup suppliers in different continents for high-priority product categories currently dependent on the US and Europe.

---

## 5. Operational Order Monitoring

**Finding:**  
A total of 196 orders were processed between July 1996 and February 1997, covering approximately 7 months. Nearly half of all customers placed multiple orders. 
Ernst Handel recorded the highest number of orders at nine. The combined dataset reinforces the previously identified workload imbalance.

**Insight:**  
The consolidated order view confirms patterns of customer loyalty and employee dependency on a small number of high-performing individuals. 
Certain customers contribute disproportionately to overall revenue and require focused account management.

**Business Impact:**  
Integrate this query into regular reporting for Sales and Customer Service teams. Use it to track customer activity trends, identify declining accounts, 
assign high-value customers to experienced staff, and support data-driven performance evaluation and balancing.

---

## Data Quality Notes

- Some text fields contain trailing spaces, for example `"Germany "` instead of `"Germany"`.
- Queries intentionally include trailing whitespace in filters to ensure accuracy.
- Certain ID fields are stored as text and may require casting for correct numeric sorting.

---

## Conclusion

The analysis reveals three key themes:

1. Clear workload imbalance across employees  
2. Strong link between order volume and customer retention  
3. High geographic concentration risk in the supplier base  

By redistributing workload, strengthening mentorship and training, improving role clarity, and diversifying suppliers, Northwind can improve operational efficiency, 
reduce burnout risk, and increase resilience against supply chain disruptions.
