WITH yearly AS (
    SELECT
        year,
        SUM(total_value_inr) AS total_value,
        SUM(duty_paid_inr) AS duty,
        SUM(grand_total_inr) AS grand
    FROM shipments
    GROUP BY year
)
SELECT
    year,
    total_value,
    duty,
    grand,
    (total_value - LAG(total_value) OVER (ORDER BY year)) / NULLIF(LAG(total_value) OVER (ORDER BY year),0) * 100 AS yoy_total_value,
    (duty - LAG(duty) OVER (ORDER BY year)) / NULLIF(LAG(duty) OVER (ORDER BY year),0) * 100 AS yoy_duty,
    (grand - LAG(grand) OVER (ORDER BY year)) / NULLIF(LAG(grand) OVER (ORDER BY year),0) * 100 AS yoy_grand
FROM yearly;

