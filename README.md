Welcome to your new dbt project!

### Using the starter project

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

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
