-- PURPOSE:
-- 
-- 

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
