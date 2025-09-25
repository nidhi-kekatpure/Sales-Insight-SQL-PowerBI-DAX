# Sales Insights Dashboard

Sales data analysis project with Power BI dashboard and SQL queries for revenue insights, customer analytics, and transaction reporting.

## Project Overview

This project provides comprehensive sales data analysis through interactive Power BI visualizations and SQL queries. It focuses on extracting meaningful business insights from sales transactions, including revenue trends, customer performance, and product analytics.

## Files Structure

- `Sales_Insights.pbix` - Power BI dashboard file with interactive visualizations
- `sales_Transactions_sql_file.sql` - SQL queries for data analysis and insights
- `README.md` - Project documentation

## Database Schema

The project works with a sales database containing the following tables:
- `sales.transactions` - Transaction records with sales amounts, currencies, and dates
- `sales.date` - Date dimension table with year and month information
- `sales.customers` - Customer information and details
- `sales.products` - Product catalog (referenced via product codes)

## Key Analysis Features

### Data Quality Checks
- Identification of invalid transactions (sales_amount <= 0)
- Currency data cleaning (handling INR/USD with carriage returns)
- Transaction count validation across different currencies

### Revenue Analysis
- Total revenue calculation for specific time periods
- Monthly revenue breakdown (January, February 2020)
- Currency-wise revenue distribution
- Year-over-year revenue comparison

### Customer Analytics
- Top 5 customers by total sales amount
- Customer revenue ranking and performance metrics
- Customer transaction patterns

### Product Performance
- Top 5 products by revenue generation
- Product-wise sales analysis
- Revenue contribution by product categories

## SQL Query Highlights

The analysis includes queries for:
1. **Data Exploration** - Basic data retrieval and structure understanding
2. **Data Cleaning** - Handling currency formatting issues and invalid records
3. **Revenue Metrics** - Time-based revenue calculations and aggregations
4. **Customer Insights** - Customer ranking and performance analysis
5. **Product Analytics** - Product performance and revenue contribution

## Getting Started

### Prerequisites
- SQL database with sales data
- Power BI Desktop for viewing the dashboard
- Database connection (MySQL/SQL Server recommended)

### Usage
1. Import your sales data into the database following the schema structure
2. Run the SQL queries in `sales_Transactions_sql_file.sql` for data analysis
3. Open `Sales_Insights.pbix` in Power BI Desktop to view interactive dashboards
4. Connect Power BI to your database for real-time insights

## Key Insights Delivered

- Revenue trends and patterns over time
- Customer segmentation and top performers
- Product performance and profitability analysis
- Currency-wise business distribution
- Data quality assessment and cleanup recommendations

## Technologies Used

- **SQL** - Data analysis and querying
- **Power BI** - Interactive dashboard and visualizations
- **Database** - Sales data storage and management

## Contributing

Feel free to fork this project and submit pull requests for improvements to the SQL queries or Power BI visualizations.

## License

This project is open source and available under the MIT License.
