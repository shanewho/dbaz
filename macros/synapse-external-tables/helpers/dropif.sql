{% macro synapse__dropif(node) %}
    {% do return (sqlserver__dropif(node)) %}
{% endmacro %}
