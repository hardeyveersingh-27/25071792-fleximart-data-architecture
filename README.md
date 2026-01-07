# FlexiMart Data Architecture Project

**Student Name:** Hardeyveer Singh  
**Student ID:** 25071792  
 **Course:** Data for Artificial Intelligence  
**Assignment:** AI Data Architecture Design and Implementation  

## Project Overview
I have built a complete data solution for FlexiMart retail. The project includes building an ETL pipeline using Python and MySQL (Part 1), analyzing complex product data using MongoDB (Part 2), and creating a Star Schema Data Warehouse for analytics (Part 3).

## Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── Fleximart_schema_documentation.md
│   ├── Fleximart_business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md

## Technologies Used
- **Languages:** Python 3.x, SQL, JavaScript
- **Libraries:** pandas, mysql-connector-python
- **Databases:** MySQL 8.0, MongoDB 6.0
- **Tools:** VS Code, MySQL Workbench

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







