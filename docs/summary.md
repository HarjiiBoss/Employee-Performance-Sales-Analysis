# Northwind Employee Performance & Sales Analysis — Summary Report

Findings from the five SQL queries, in report form. Each figure comes from the matching result in `results/`; derived figures are listed with their calculations in `.figures-allow`.

---

## 1. Orders by Employee

**Finding:** Margaret Peacock processed 40 of the 196 orders (20.4%) and Anne Dodsworth 6, a 6.7× gap. The top three employees, Margaret Peacock, Janet Leverling and Nancy Davolio, processed 100 orders (51%). Margaret alone handled more orders than the three lowest-volume employees combined (31).

**What it means:** order volume is uneven across the team. The data does not show hours worked, start dates or order complexity, so it cannot say why.

**Next step:** check how orders are assigned, and whether low-volume employees are new or part-time, before changing workloads.

---

## 2. Employees With No Orders

**Finding:** one employee record, Adam West (EmployeeID 10), has no orders. His record's notes read "An old chum" and give no role.

**What it means:** the data does not say whether he is inactive. Counting him lowers average orders per employee from 21.8 to 19.6.

**Next step:** confirm his status and, if he does not process orders, exclude him from workload averages.

---

## 3. Customers Served by Employee

**Finding:** Margaret Peacock served 31 of the 74 customers who ordered (41.9%); 9 of her 40 orders went to customers she had already served. Anne Dodsworth served 6 customers, none of them more than once.

**What it means:** employees with more orders served more customers, which partly follows from order volume itself. Retention per employee was not measured.

**Next step:** measure retention per employee over time before using high-volume employees as benchmarks.

---

## 4. Supplier Pairs in the Same Country

**Finding:** the 17 same-country supplier pairs sit mostly in the USA (6 pairs, 35.3%) and Europe (8 pairs, 47.1%), together 82%. Asia and Australia have one pair each (11.8% combined), and Canada one.

**What it means:** most co-located suppliers are in two regions, so a disruption in either could affect several suppliers at once.

**Next step:** assess whether adding suppliers outside the USA and Europe would reduce that concentration.

---

## 5. Full Order List

**Finding:** 196 orders between 4 July 1996 and 12 February 1997. 52 of the 74 customers (70%) placed more than one order; Ernst Handel placed the most (10).

**What it means:** most customers reordered within the period.

**Next step:** use this query in regular reporting to follow repeat orders and workload over time.

---

## Data Quality Notes

- Some text fields contain trailing spaces; the queries match them exactly.
- Employee records are not marked active or inactive, so Adam West appears in the full employee list.
