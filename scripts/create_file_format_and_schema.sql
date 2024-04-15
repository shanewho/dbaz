CREATE MASTER KEY ENCRYPTION BY PASSWORD = '[password goes here]';

DROP DATABASE SCOPED CREDENTIAL ADLSCredential
CREATE DATABASE SCOPED CREDENTIAL ADLSCredential
WITH
    IDENTITY = 'user',
    SECRET = '[secret goes here]'
;

drop external data source AzureDataLakeStorage;
CREATE EXTERNAL DATA SOURCE AzureDataLakeStorage
WITH (
    TYPE = HADOOP,
    LOCATION = 'abfss://bwshanedbttestfs@bwshanedbttest.dfs.core.windows.net'
    , CREDENTIAL=ADLSCredential
);

drop external file format CSV_COMMA_WITH_HEADER;
CREATE EXTERNAL FILE FORMAT CSV_COMMA_WITH_HEADER
WITH (FORMAT_TYPE = DELIMITEDTEXT,
      FORMAT_OPTIONS(
          FIELD_TERMINATOR = ',',
          --STRING_DELIMITER = '"',
          FIRST_ROW = 2,
          USE_TYPE_DEFAULT = True)
);
drop external table test1;
CREATE EXTERNAL TABLE test1
(
    year varchar(20),
    miles varchar(20),
    price varchar(100)
)
WITH (
    --LOCATION = '/bwshanedbttestfs/a.csv',
    --LOCATION = 'abfss://bwshanedbttestfs@bwshanedbttest.dfs.core.windows.net',
    LOCATION = '/ford_escort.csv',
    DATA_SOURCE = AzureDataLakeStorage,
    FILE_FORMAT = skipHeader_CSV
)

create table test124 ( a int )

select top 4 * from test1

select * from fords;

select * from ams_customers
