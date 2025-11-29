-- =====================================================
-- QUESTION 5: Show all orders with employee full name, customer name, and order date.
-- =====================================================

SELECT 
	Customers.CustomerName AS 'Customer Name', 
	CONCAT(Employees.FirstName,' ', Employees.LastName) AS 'Employee Name', 
	Orders.OrderID, 
	Orders.OrderDate
FROM 
	((Orders
INNER JOIN 
	Customers ON Customers.CustomerID = Orders.CustomerID)
INNER JOIN 
	Employees ON Employees.EmployeeID = Orders.EmployeeID)
ORDER by 
	Customers.CustomerName ASC;

/* 
INSIGHT:
The query returns 196 orders across roughly seven months (July 1996 to February 1997). Nearly half the customers placed more than one order, 
and a few customers (like Ernst Handel with nine orders) contribute significantly to overall volume.

This consolidated view also confirms earlier patterns: Margaret processed 40 orders across 31 customers, while Anne handled only six. 
It’s a useful snapshot for understanding both customer loyalty and employee performance.


RECOMMENDATION:
Make this query part of a routine monthly report for Sales and Customer Success teams. It can support:

(1) Customer Retention Tracking: Monitor repeat-order rates and flag accounts showing reduced activity.
(2) Customer Assignment Decisions: Ensure high-value customers are paired with experienced staff.
(3) Performance Reviews: Provide objective metrics for assessing employee workload and customer coverage.
(4) Workload Balancing: Use filters (dates, employees) to build team dashboards and identify imbalances quickly.
*/
