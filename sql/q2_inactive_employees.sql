-- PURPOSE:
-- To identify employees who have never processed an order.
-- This helps detect inactive, retired, or non-operational staff records that could distort performance analysis.

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
One employee — Adam West (EmployeeID 10) — has no recorded orders. His employee notes (“An old chum”) do not give his role,
and the data does not say whether he is inactive. Counting him lowers average orders per employee from 21.8 to 19.6.


RECOMMENDATION: 
Confirm Adam’s current employment status with HR.
If he’s retired or inactive, update his status or archive his record to avoid skewing KPIs.
If he holds an advisory or honorary role, document this so future analyses don’t mistakenly classify him as underperforming.
*/
