{% macro limit_data_in_dev(date_column, days_limit = 3) -%}
{%- if target.name == 'default' -%}
where {{date_column}} >= dateadd('day', -{{days_limit}}, current_timestamp)
{%- endif -%}
{%- endmacro -%}