-- PURPOSE:
-- 
-- 

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
