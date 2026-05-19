-- Total records
SELECT COUNT(*) AS total_records
FROM analytics_table;

-- Top categories
SELECT category, COUNT(*) AS total
FROM analytics_table
GROUP BY category
ORDER BY total DESC;

-- KPI trend example
SELECT
    event_date,
    COUNT(*) AS total_events
FROM analytics_table
GROUP BY event_date
ORDER BY event_date;

-- Average metric example
SELECT
    AVG(metric_value) AS average_metric
FROM analytics_table;

-- Example filter query
SELECT *
FROM analytics_table
WHERE event_date >= current_date - interval '7' day;
