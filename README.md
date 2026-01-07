# FlexiMart Data Architecture Project

**Student Name:** Hardeyveer Singh  
**Student ID:** 25071792  
 **Course:** Data for Artificial Intelligence  
**Assignment:** AI Data Architecture Design and Implementation  

---

## Project Overview

This project implements a complete end-to-end data architecture solution for FlexiMart, an e-commerce platform. It includes an ETL pipeline to clean and load raw CSV data into a relational database, NoSQL analysis using MongoDB for flexible product data, and a data warehouse built using a star schema to support analytical reporting.

---

## Repository Structure

---
fleximart-data-architecture/
├── README.md
│
├── part1-database-etl/
│ ├── README.md
│ ├── etl_pipeline.py
│ ├── fleximart_schema.sql
│ ├── fleximart_business_queries.sql
│ ├── schema_documentation.md
│ └── data_quality_report.txt
│
├── part2-nosql/
│ ├── README.md
│ ├── nosql_analysis.md
│ ├── mongodb_operations.js
│ └── products_catalog.json
│
└── part3-datawarehouse/
├── README.md
├── star_schema_design.md
├── warehouse_schema.sql
├── warehouse_data.sql
└── analytics_queries.sql
---




---

## Technologies Used

- Python 3.x  
- pandas  
- mysql-connector-python  
- MySQL 8.0  
- MySQL Workbench  
- MongoDB  
- SQL  
- Markdown  

---

## Setup Instructions

### Relational Database Setup (MySQL)

```bash
# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Business Queries
mysql -u root -p fleximart < part1-database-etl/fleximart_business_queries.sql

mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql
mongosh < part2-nosql/mongodb_operations.js






