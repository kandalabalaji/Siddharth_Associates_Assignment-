WITH supplier_years AS (
    SELECT supplier_name, year
    FROM shipments
    GROUP BY supplier_name, year
),
active_2025 AS (
    SELECT supplier_name FROM supplier_years WHERE year = 2025
),
historical AS (
    SELECT supplier_name FROM supplier_years WHERE year < 2025
)
SELECT
    h.supplier_name,
    CASE 
        WHEN a.supplier_name IS NOT NULL THEN 'ACTIVE'
        ELSE 'CHURNED'
    END AS status
FROM historical h
LEFT JOIN active_2025 a
ON h.supplier_name = a.supplier_name;

