{% macro synapse__get_external_build_plan(source_node) %}
    {% do return (sqlserver__get_external_build_plan(source_node)) %}
{% endmacro %}
