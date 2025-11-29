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
