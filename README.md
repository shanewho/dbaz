### Using the project

Try running the following commands:
- dbt run
- dbt test

# Generate the external table references in Sql Server
## iterate through all source nodes, create if missing, refresh metadata
```
dbt run-operation stage_external_sources
```

## iterate through all source nodes, create or replace (+ refresh if necessary)
```
dbt run-operation stage_external_sources --vars "ext_full_refresh: true"
```

### Details
This is a POC that can use our Azure Synapse with DBT. It makes use of dbt-external-tables package to manage (create/update) external tables in Azure Synapse Dedicated SQL Pool. Then DBT can map to those external tables easily to work like normal. The external tables query the Azure Data Lake Storage Gen 2 and then the materialized models and views are created using the typical DBT flow. The end result has the final transformed data materialized as tables in the Dedicated SQL instance.
