</> Markdown

## Anomaly Analysis

### Insert Anomaly
If a new product needs to be added but no order has been placed yet, it cannot be inserted into the table because order_id is required.
Example: Cannot add a new product "Laptop" without creating an order.

### Update Anomaly
If a customer's city is stored in multiple rows and needs to be updated, all rows must be updated.
Example: If customer "Rahul" moves from Mumbai to Delhi, multiple rows must be updated, leading to inconsistency.

### Delete Anomaly
If the only order of a product is deleted, all information about that product is lost.
Example: Deleting the last order of "Mobile Phone" removes product details permanently.



## Normalization Justification


Keeping all data in a single table may appear simple, but it leads to several issues such as redundancy, inconsistency, and anomalies. In the given dataset, customer, product, and sales representative data are repeated across multiple rows.

For example, a customer’s city appears multiple times, which increases storage usage and creates update anomalies. If a customer changes location, multiple rows must be updated, increasing the risk of inconsistency.

Normalization helps organize the data into multiple related tables, reducing redundancy and improving data integrity. By separating customers, products, and orders into different tables, each entity is stored only once. This eliminates insert, update, and delete anomalies.

Therefore, normalization is not over-engineering but a necessary step for maintaining accurate and scalable database systems.
