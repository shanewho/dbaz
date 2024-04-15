{% macro synapse__create_external_schema(source_node) %}
    {% do return (sqlserver__create_external_schema(source_node)) %}
{% endmacro %}
