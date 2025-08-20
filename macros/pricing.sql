{% macro cents_to_dollars(column_name, scale=2) %}
    ({{ column_name }} / 100)::numeric(16, {{ scale }})
{% endmacro %}

{% macro format_currency(column_name, scale=2) %}
    '$' || to_char({{ column_name }}::numeric(16, {{ scale }}), 'FM9999999999999999.00')
{% endmacro %}

{% macro format_date(column_name) %}
    to_char({{ column_name }}, 'YYYY-MM-DD')
{% endmacro %}

{% macro format_timestamp(column_name) %}
    to_char({{ column_name }}, 'YYYY-MM-DD HH24:MI:SS')
{% endmacro %}

{% macro discount_amount(extended_price, discount_rate, scale=2) %}
    (-1 * {{ extended_price }} * {{ discount_rate }})::decimal(16,{{scale}})
{% endmacro %}