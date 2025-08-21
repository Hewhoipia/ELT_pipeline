SELECT
*
FROM
    {{ ref('fct_orders') }}
WHERE
    item_sales_after_discount_amount > 0