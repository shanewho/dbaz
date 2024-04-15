{% macro synapse__create_external_table(source_node) %}
    {% do return (sqlserver__create_external_table(source_node)) %}
{% endmacro %}
