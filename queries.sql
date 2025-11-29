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

















