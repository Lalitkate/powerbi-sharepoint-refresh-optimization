📊 Optimized SharePoint Data Retrieval for Power BI
Overview
In today’s fast-paced, data-driven environment, timely and efficient access to data is essential for making informed decisions. This project provides a robust solution for retrieving data from SharePoint lists using the SharePoint REST API in Power BI, improving performance and ensuring reliable dataset refreshes—especially when combined with slower, on-premises data sources like SQL Server.

🚩 Problem Statement
Previously, data was pulled into Power BI using the SharePoint connector and merged with an on-premises SQL Server. Due to the complexity and volume of the dataset, refresh operations in the Power BI service exceeded one hour. This caused the SharePoint connection to expire mid-refresh, resulting in data loss and failed updates.

🔑 Key Features
⚡ Efficient Data Retrieval
Utilizes REST API with pagination to handle large datasets seamlessly.

🔗 Stable Connection
REST API prevents timeout issues by maintaining an active connection throughout the refresh.

⏱ Reduced Refresh Time
Significantly speeds up refresh time in the Power BI Service, even when merged with slower data sources.
