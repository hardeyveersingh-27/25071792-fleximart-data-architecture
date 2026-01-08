# FlexiMart Data Architecture Project

Student Name:Hardeyveer Singh
Student ID: 25071792
Course: Data for Artificial Intelligence
Assignment: AI Data Architecture Design and Implementation

---

## Project Overview

This project implements a complete data architecture solution for FlexiMart, an e-commerce platform. It covers data ingestion, data quality handling, relational database design, NoSQL analysis, and data warehouse analytics.

---
## Repository Structure

```text
25071792-fleximart-data-architecture/
├── README.md
├── part1-database-etl/
│   ├── README.md
│   ├── etl_pipeline.py
│   ├── fleximart_schema.sql
│   ├── fleximart_business_queries.sql
│   ├── schema_documentation.md
│   └── data_quality_report.txt
│
├── part2-nosql/
│   ├── README.md
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
│
└── part3-datawarehouse/
    ├── README.md
    ├── star_schema_design.md
    ├── warehouse_schema.sql
    ├── warehouse_data.sql
    └── analytics_queries.sql





---

## Technologies Used

- MySQL 8.0
- MySQL Workbench
- MongoDB
- SQL
- Markdown Documentation

---

## Key Features Implemented

- ETL pipeline with data cleaning and normalization
- Relational database with primary and foreign keys
- Business analytics using SQL (aggregations, HAVING, window functions)
- NoSQL analysis using MongoDB document model
- Data warehouse star schema with OLAP queries

---
## Setup Instructions
1. **Database Setup:** Use `warehouse_schema.sql` to create tables in MySQL.
2. **ETL Pipeline:** Run `etl_pipeline.py` to clean and load data.
3. **Analytics:** Run `analytics_queries.sql` to view business reports.

## Key Learnings
1. Learned how to build a robust ETL pipeline and handle data cleaning using Pandas.
2. Understood the difference between SQL (Structured) and NoSQL (Document-based) databases.
3. Mastered Dimensional Modeling (Star Schema) for efficient data warehousing.

## Challenges Faced
1. **Data Cleaning:** Standardizing phone numbers in Part 1 was tricky because of different formats. I solved it using Python Regex.
2. **Schema Design:** Deciding between Fact and Dimension tables in Part 3 was confusing initially, but the Star Schema approach clarified relationships.
## Outcome

The project successfully demonstrates end-to-end data architecture design, from raw data ingestion to advanced analytical reporting, following industry best practices.

