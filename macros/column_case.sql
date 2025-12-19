{% macro select_snake_case_columns(relation) %}
    {%- set cols = adapter.get_columns_in_relation(relation) -%}

    {%- for col in cols %}
        {{ col.name }} AS {{ col.name | lower | replace(' ', '_') }}
        {%- if not loop.last %},{% endif %}
    {%- endfor %}
{% endmacro %}
