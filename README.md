# Bank Loan Analysis Dashboard

Project Overview

This project is a comprehensive Bank Loan Analysis dashboard built with Microsoft Power BI. It provides a detailed and interactive analysis of a bank's loan portfolio, transforming raw data into actionable insights. The dashboard connects directly to a SQL Server database, ensuring that the visualized data is always up-to-date. The primary goal is to empower management and analysts to explore loan data, identify trends, assess risk, and make informed, data-driven decisions.

Features

Key Performance Indicator (KPI) Monitoring: At-a-glance cards display crucial metrics including Total Applications (39K), Total Loan Amount ($436M), Average Interest Rate, and Total Payments Received ($473.07M).

Interactive Visualizations: The dashboard includes a variety of charts to represent data effectively, such as a line chart for monthly trends, a geo-map for state-wise distribution, a donut chart for loan terms, and bar charts for loan purpose and home ownership status.

Dynamic Filtering: Users can dynamically filter the entire report using slicers for loan amount, purpose, grade, and verification status, allowing for deep-dive analysis into specific segments.

Drill-Down Capability: The report consists of two main views, an Overview page for a high-level summary and a Details page that provides a granular, table-level view of each individual loan.

Data Source

The dashboard is powered by a direct connection to a SQL Server database. This integration ensures a single source of truth and allows for real-time data analysis without the need for manual data exports or updates. Data is cleaned, transformed, and modeled using Power Query to prepare it for visualization.

Technologies Used

Power BI
SQL Server
DAX (Data Analysis Expressions)
Power Query (M Language)

Dashboard Pages

1. Overview Page: Presents a high-level summary of the entire loan portfolio. It is designed to give stakeholders a quick understanding of key metrics and overall performance.

![image](https://github.com/user-attachments/assets/fedcd6e0-340d-40ca-9163-14a59742709b)


2. Details Page: Offers a detailed, tabular view of the loan data. This page is for users who need to examine individual loan records and their specific attributes.
   
![image](https://github.com/user-attachments/assets/bb5c2a7a-741e-4273-9b6f-d32b185622cd)


How To Use

Open the Power BI file (.pbix). Interact with the dashboard by clicking on different elements within the visuals or by using the slicer panels on the left to filter the data according to your analytical needs. Navigate between the "Overview" and "Details" pages using the navigation buttons.
