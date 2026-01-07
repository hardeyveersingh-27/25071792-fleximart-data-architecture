# FlexiMart Database Schema Documentation

## Database Name: fleximart

This document describes the relational database schema designed for the FlexiMart e-commerce platform.  
The database stores customer details, product information, customer orders, and order line items.  
The schema is designed following normalization principles to ensure data integrity and avoid redundancy.

## Entity-Relationship Description

### ENTITY: customers
**Purpose:**  
Stores information about customers registered on the FlexiMart platform.

**Attributes:**
- customer_id: Unique identifier for each customer (Primary Key)
- first_name: Customer's first name
- last_name: Customer's last name
- email: Customer's email address (must be unique)
- phone: Customer contact number
- city: City where the customer resides
- registration_date: Date when the customer registered

**Relationships:**
- One customer can place MANY orders (One-to-Many relationship with orders table)

---

### ENTITY: products
**Purpose:**  
Stores details of products available for sale on the FlexiMart platform.

**Attributes:**
- product_id: Unique identifier for each product (Primary Key)
- product_name: Name of the product
- category: Product category (e.g., Electronics, Fashion)
- price: Price of the product
- stock_quantity: Available stock quantity

**Relationships:**
- One product can appear in MANY order items (One-to-Many relationship with order_items table)

---

### ENTITY: orders
**Purpose:**  
Stores order-level information for customer purchases.

**Attributes:**
- order_id: Unique identifier for each order (Primary Key)
- customer_id: Identifier of the customer who placed the order (Foreign Key)
- order_date: Date when the order was placed
- total_amount: Total monetary value of the order
- status: Order status (Completed, Pending, Cancelled)

**Relationships:**
- One order belongs to ONE customer (Many-to-One with customers)
- One order can contain MANY order items (One-to-Many with order_items)

---

### ENTITY: order_items
**Purpose:**  
Stores detailed line-item information for each order.

**Attributes:**
- order_item_id: Unique identifier for each order item (Primary Key)
- order_id: Identifier of the associated order (Foreign Key)
- product_id: Identifier of the purchased product (Foreign Key)
- quantity: Number of units purchased
- unit_price: Price per unit at time of purchase
- subtotal: Total cost for the line item (quantity × unit_price)

**Relationships:**
- Each order item belongs to ONE order
- Each order item refers to ONE product

## Normalization Explanation (Third Normal Form - 3NF)

The FlexiMart database schema is designed following Third Normal Form (3NF) principles to ensure data integrity, reduce redundancy, and prevent data anomalies.

Each table in the schema represents a single entity with attributes that are fully dependent on the primary key. In the customers table, all non-key attributes such as first_name, last_name, email, phone, city, and registration_date depend only on customer_id. There are no partial or transitive dependencies.

The products table stores product-specific details where attributes like product_name, category, price, and stock_quantity depend solely on product_id. No product attribute depends on another non-key attribute, ensuring the table satisfies 3NF.

The orders table separates order-level data from order line items. Attributes such as order_date, total_amount, and status depend only on order_id. Customer details are not repeated in this table and are referenced using a foreign key, which avoids update and insertion anomalies.

The order_items table resolves the many-to-many relationship between orders and products. Each record depends entirely on order_item_id and references both order_id and product_id using foreign keys. This structure prevents data duplication and ensures referential integrity.

By separating customers, products, orders, and order_items into individual tables and using foreign keys, the design avoids update anomalies (changing data in one place), insert anomalies (adding incomplete data), and delete anomalies (accidental loss of related data). This confirms that the schema adheres to Third Normal Form.

## Sample Data Representation

### Customers Table

| customer_id | first_name | last_name | email                  | phone        | city       | registration_date |
|-------------|-----------|-----------|------------------------|--------------|------------|-------------------|
| 1           | Amit      | Sharma    | amit.sharma@test.com   | 9876543210   | Delhi      | 2024-01-01        |
| 2           | Rahul     | Verma     | rahul.verma@gmail.com  | 9123456789   | Bangalore  | 2024-01-10        |

---

### Products Table

| product_id | product_name | category     | price     | stock_quantity |
|------------|--------------|--------------|-----------|----------------|
| 1          | Laptop       | Electronics  | 55000.00  | 10             |
| 2          | Headphones   | Electronics  | 1999.00   | 50             |

---

### Orders Table

| order_id | customer_id | order_date  | total_amount | status     |
|----------|-------------|-------------|--------------|------------|
| 1        | 1           | 2024-01-15  | 45999.00     | Completed  |
| 2        | 2           | 2024-02-01  | 1999.00      | Completed  |

---

### Order_Items Table

| order_item_id | order_id | product_id | quantity | unit_price | subtotal |
|---------------|----------|------------|----------|------------|----------|
| 1             | 1        | 1          | 1        | 45999.00   | 45999.00 |
| 2             | 2        | 2          | 1        | 1999.00    | 1999.00  |
