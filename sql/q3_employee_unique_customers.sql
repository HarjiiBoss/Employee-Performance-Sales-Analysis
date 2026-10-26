-- PURPOSE:
-- To determine which employees handle the widest range of customers by counting unique customers served.
-- This helps evaluate customer exposure, relationship management, and employee impact on customer retention.

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
Margaret Peacock again stands out, serving the highest number of unique customers (31 out of 74). Her 40 orders include 9 to customers she had already served.

Anne Dodsworth has zero repeat customers, which might mean she’s new or still building her customer management skills.

Higher order volume tends to align with more repeat orders, partly by arithmetic: more orders leave more room for repeats. Retention itself was not measured.


RECOMMENDATION:
	•	Use top employees like Margaret and Janet as internal case studies for customer-relationship best practices.
	•	Pair new or low-retention employees (like Anne) with high performers for coaching.
	•	Run a follow-up analysis to determine whether Anne’s results are due to limited tenure or skill gaps.
*/
