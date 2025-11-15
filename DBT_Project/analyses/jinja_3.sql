{% set inc_flag = 1 %}
{% set last_loaded = 3 %}
{% set cols_list = ["customer_sk","gross_amount","quantity","unit_price"] %}

SELECT
    {% for col in cols_list %}
        {{ col }} {% if not loop.last %},{% endif %}
    {% endfor %}
FROM {{ ref("bronze_sales") }}

{% if inc_flag == 1 %}
    WHERE date_sk > {{ last_loaded }}
{% endif %}
