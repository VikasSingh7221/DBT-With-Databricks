SELECT  
    quantity,
    unit_price,
    ROUND({{ multiply("quantity", "unit_price") }},2) AS gross_amount
FROM {{ ref("bronze_sales") }}
