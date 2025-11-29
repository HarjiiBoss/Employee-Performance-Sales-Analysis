-- PURPOSE:
-- 
-- 

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
