## Storage Systems

The system uses different storage systems for different types of data. A SQL database is used to store patient records because it provides accuracy and consistency. A Data Lake is used to store raw data such as ICU logs and real-time data. A Data Warehouse is used to generate reports. A Vector Database is used to enable smart search for doctors.

## OLTP vs OLAP Boundary

The SQL database is used for real-time operations like patient updates (OLTP). The Data Warehouse is used for analysis and reports (OLAP). This separation helps in better performance.

## Trade-offs

Using multiple systems increases complexity. To manage this, proper data pipelines and monitoring systems should be used.
