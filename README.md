# SQL E-Commerce Portfolio Project

This project demonstrates core and advanced SQL skills through a simulated e-commerce dataset. It showcases the full data workflow—from schema creation to business analytics—designed to support real-world data analyst and entry-level data science roles.

---

## Project Structure

| File | Description |
|------|-------------|
| **01_create_schema.sql** | Creates the database schema with `Customers`, `Products`, and `Orders` tables and inserts sample data |
| **02_data_manipulation.sql** | Demonstrates core SQL operations: `SELECT`, `WHERE`, `JOIN`, `GROUP BY`, `ORDER BY`, `COUNT`, and aggregations |
| **03_advanced_joins.sql** | Covers advanced joins: `RIGHT JOIN`, `FULL OUTER JOIN` (via `UNION`), `SELF JOIN`, and `CROSS JOIN` |
| **04_business_analytics.sql** | Business insight queries: top customers, sales trends, order behavior, category revenue, and customer segmentation |

---

## Skills Demonstrated

- Relational database schema design
- Data querying and transformation with SQL
- INNER, LEFT, RIGHT, FULL OUTER, CROSS, and SELF joins
- Aggregation and filtering for analytics
- Business scenario modeling in SQL
- Use of aliases and readable SQL conventions

---

## Sample Business Questions Answered

- What is the monthly sales trend?
- Who are the most valuable customers?
- Which products are underperforming?
- What is the average order size?
- Which customers are repeat buyers?
- What categories generate the most revenue?

---

## Technologies Used

- **MySQL (v9.3.0)** via command-line
- **Atom** for SQL editing
- **Git & GitHub** for version control and publishing

---

## How to Run

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/sql-ecommerce.git
   cd sql-ecommerce
   ```

2. Log into MySQL and create a database:
   ```bash
   mysql -u root -p
   CREATE DATABASE sql_portfolio;
   exit;
   ```

3. Execute each script:
   ```bash
   mysql -u root -p sql_portfolio < 01_create_schema.sql
   mysql -u root -p sql_portfolio < 02_data_manipulation.sql
   mysql -u root -p sql_portfolio < 03_advanced_joins.sql
   mysql -u root -p sql_portfolio < 04_business_analytics.sql
   ```

---

## License

This project is open-source and available for reuse with attribution.

---

## About Me

I'm a data analyst and researcher transitioning into data science. This project is part of my portfolio to demonstrate practical SQL capability and insight generation. I'm open to feedback and collaboration—feel free to connect!
