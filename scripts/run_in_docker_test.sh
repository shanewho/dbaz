docker run --rm -it --entrypoint bash \
--network=host \
--mount type=bind,source=/Users/shane/code/dbtazure/dbaz,target=/usr/app \
--mount type=bind,source=/Users/shane/.dbt/,target=/root/.dbt/ \
ghcr.io/dbt-labs/dbt-core:1.8.0b2
