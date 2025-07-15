SELECT
    Region,
    COUNT(DISTINCT Property_ID) AS Properties_Tracked,
    ROUND(AVG(Occupancy_Rate), 2) AS Avg_Occupancy_Rate,
    SUM(CASE WHEN Underutilized = 1 THEN 1 ELSE 0 END) AS Underutilized_Count,
    ROUND(SUM(Revenue_At_Risk), 0) AS Total_Revenue_At_Risk,
    ROUND(AVG(Renewal_Probability), 2) AS Avg_Renewal_Probability
FROM
    lease_utilization
GROUP BY
    Region
ORDER BY
    Avg_Occupancy_Rate ASC;
