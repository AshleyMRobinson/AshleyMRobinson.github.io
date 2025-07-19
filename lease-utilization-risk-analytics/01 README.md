Lease Utilization & Risk Analytics

This project simulates a real-world SQL analysis of commercial lease performance across U.S. regions. It includes occupancy trends, underutilization patterns, and financial risk forecasting using raw CSV data.

Summary Report

Using SQLiteStudio, I queried and summarized 500 properties across a 7-day window to find:
- Average occupancy rate by region
- Properties underutilized (under 40%)
- Total revenue at risk
- Renewal probability forecasting

Skills Demonstrated
- SQL: SELECT, GROUP BY, AVG(), SUM(), CASE, ROUND(), ORDER BY
- Data cleaning and grouping
- Financial risk calculation
- Local SQL database use (SQLiteStudio)

Metrics Calculated

Properties Tracked— total distinct properties per region  
Avg Occupancy Rate— average occupancy percentage  
Underutilized Count— number of properties flagged as underutilized  
Total Revenue At Risk— revenue from properties at risk of non-renewal  
Avg Renewal Probability — likelihood of lease renewal  

Query Example

SELECT
  Region,
  COUNT(DISTINCT Property_ID) AS Properties_Tracked,
  ROUND(AVG(Occupancy_Rate), 2) AS Avg_Occupancy_Rate,
  SUM(CASE WHEN Underutilized = 1 THEN 1 ELSE 0 END) AS Underutilized_Count,
  ROUND(SUM(Revenue_At_Risk), 0) AS Total_Revenue_At_Risk,
  ROUND(AVG(Renewal_Probability), 2) AS Avg_Renewal_Probability
FROM lease_utilization
GROUP BY Region
ORDER BY Avg_Occupancy_Rate ASC;

Insights:

The Northeast region had the lowest occupancy rate (49%) and highest revenue risk, highlighting urgent leasing concerns.
No region reported underutilized properties (under 40%), which could signal:
a strong market
or a need to re-check the Underutilized logic
Despite low occupancy, renewal probabilities remained moderately high (58%), which may warrant deeper behavioral analysis.

Included Files

01_region_summary.sql – SQL query
lease_utilization_data.csv – The Fictional Dataset used 
query_results_screenshot.png – SQLiteStudio output proof
