-- =====================================================
-- PROJECT: Northwind Database - Employee Performance & Sales Analysis
-- AUTHOR: Taofeek Salami
-- DATE: November 2025
-- DATABASE: Northwind (W3Schools)
-- =====================================================

-- BUSINESS CONTEXT:
-- The Sales Operations team requires an analysis of employee workload, customer assignment, 
-- and team structure to optimize performance and inform future staffing and training decisions.


-- =====================================================
-- DATA QUALITY NOTES
-- =====================================================

-- ISSUE: Text fields contain trailing whitespace (e.g., 'Germany ' not 'Germany')
-- WORKAROUND: All queries include trailing spaces in filter conditions
-- Example: WHERE Country = 'Germany ' (note the space before closing quote)


-- =====================================================
-- QUESTION 1: Which employees have processed orders, and how many orders has each employee handled?
-- =====================================================
SELECT 
	Employees.EmployeeID,
	CONCAT(Employees.FirstName,' ',Employees.LastName) AS 'Employee Name',
    COUNT(Orders.OrderID) AS 'Number of Order'
FROM
	Employees
INNER JOIN 
	Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY 
    Employees.EmployeeID, Employees.FirstName, Employees.LastName
ORDER BY 
    COUNT(Orders.OrderID) DESC;

/* 
INSIGHT: 
Nine employees handled a total of 196 orders. Margaret Peacock leads with 40 orders (about one-fifth of all orders), while Anne Dodsworth processed only six. 
Margaret’s workload is more than six times that of Anne, and she alone handled more orders than the bottom three employees combined.

This suggests a clear imbalance in how orders are distributed across the team.

RECOMMENDATION: 
Before adjusting staffing or shifting workloads, confirm what might explain the gap:
(1) Check whether low-volume employees (like Anne) are new hires or part-time.
(2) Review the order assignment process to confirm whether tasks are automatically assigned or manually picked.
(3) Compare order complexity; high-volume employees may be handling simpler, quicker requests.
(4) If the workload imbalance is confirmed, introduce rotation policies or pair lower-volume employees with high performers for mentorship.
*/

-- =====================================================
-- QUESTION 2: Are there any employees who have never processed an order?
-- =====================================================

SELECT 
    Employees.EmployeeID,
    CONCAT(Employees.FirstName, ' ', Employees.LastName) AS 'Employee Name'
FROM
    Employees
LEFT JOIN 
    Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID IS NULL
ORDER BY Employees.EmployeeID;

/* 
INSIGHT: 
One employee — Adam West (EmployeeID 10) — has no recorded orders. He’s also much older than the rest of the team and his employee notes (“An old chum”) do not clarify his role. 
This hints that he may be inactive, retired, or assigned to a function unrelated to order processing.


RECOMMENDATION: 
Confirm Adam’s current employment status with HR.
If he’s retired or inactive, update his status or archive his record to avoid skewing KPIs.
If he holds an advisory or honorary role, document this so future analyses don’t mistakenly classify him as underperforming.
*/



-- =====================================================
-- QUESTION 3: Which employee has processed orders for the most unique customers?
-- =====================================================

SELECT 
    Employees.EmployeeID,
    CONCAT(Employees.FirstName, ' ', Employees.LastName) AS 'Employee Name',
    COUNT(DISTINCT Customers.CustomerID) AS 'Unique Customer'
FROM
    ((Orders
INNER JOIN 
    Employees ON Employees.EmployeeID = Orders.EmployeeID)
INNER JOIN 
	Customers ON Customers.CustomerID = Orders.CustomerID)
GROUP BY 
	Employees.EmployeeID, Employees.FirstName, Employees.LastName
ORDER BY COUNT(DISTINCT Customers.CustomerID) DESC;

/* 
INSIGHT:
Margaret Peacock again stands out, serving the highest number of unique customers (31 out of 74). She also shows strong customer loyalty indicators, with 9 repeat orders.

Anne Dodsworth has zero repeat customers, which might mean she’s new or still building her customer management skills.

A pattern emerges among the top performers: higher order volume tends to align with higher repeat-customer activity.


RECOMMENDATION:
	•	Use top employees like Margaret and Janet as internal case studies for customer-relationship best practices.
	•	Pair new or low-retention employees (like Anne) with high performers for coaching.
	•	Consider formalizing the behaviors that drive Margaret’s strong retention into a training guide.
	•	Run a follow-up analysis to determine whether Anne’s results are due to limited tenure or skill gaps.
*/

-- =====================================================
-- QUESTION 4: Which pairs of suppliers are located in the same Country?
-- =====================================================

SELECT 
	A.SupplierName AS 'SupplierName 1',
	B.SupplierName AS 'SupplierName 2',
	A.Country
FROM 
	Suppliers A, 
	Suppliers B
WHERE 
	A.Country = B.Country
AND 
	A.SupplierID < B.SupplierID
ORDER BY A.Country;

/* 
INSIGHT:
There are 17 pairs of suppliers located in the same country, the majority sit in the USA and Europe. 
USA dominates with 6 pairs (35.3% of all co-located suppliers), followed by Europe with 8 pairs total (47.1% - led by France and Germany with 3 pairs each).

Asia and Australia are severely underrepresented with only 1 pair each (5.9% combined), indicating limited supply chain diversification in these regions. 

This concentration exposes Northwind to regional disruptions: trade policy changes, shipping delays, natural disasters, or political instability in the USA or Europe 
could impact over 82% of co-located supplier relationships simultaneously.
 

RECOMMENDATION:
Develop a geographic diversification strategy targeting Asia-Pacific suppliers to reduce regional concentration risk. 

Immediate actions:
(1) Conduct market research for reliable suppliers in China, India, Singapore, and Southeast Asia
(2) Set a target of 20-25% of supplier pairs in Asia-Pacific within 18 months
(3) Evaluate trade agreements and shipping costs from Asian markets vs current USA/Europe costs
(4) For critical product categories currently sourced only from USA/Europe, identify backup suppliers in different continents to mitigate single-region dependency

Monitor geopolitical developments in USA and Europe closely, as 82% of co-located suppliers could be affected by regional trade disputes or policy changes.
*/

-- =====================================================
-- QUESTION 5: Show all orders with employee full name, customer name, and order date.
-- =====================================================

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




