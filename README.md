# 📊 Optimized SharePoint Data Retrieval for Power BI

## 📋 Overview

In today’s fast-paced, data-driven environment, timely and efficient access to data is essential for making informed decisions.  
This project provides a robust solution for retrieving data from SharePoint lists using the **SharePoint REST API** in **Power BI**, improving performance and ensuring reliable dataset refreshes—especially when combined with slower, on-premises data sources like **SQL Server**.

---

## 🚩 Problem Statement

Previously, data was pulled into Power BI using the **SharePoint connector** and merged with an on-premises **SQL Server**.  
Due to the complexity and volume of the dataset, refresh operations in the Power BI service **exceeded one hour**.  
This caused the SharePoint connection to **expire mid-refresh**, resulting in **data loss** and **failed updates**.

---

## 🔑 Key Features

### ⚡ Efficient Data Retrieval
Utilizes the **SharePoint REST API with pagination** to handle large datasets seamlessly, ensuring faster access and scalability.

### 🔗 Stable Connection
The REST API connection remains **active throughout the refresh process**, preventing timeout issues even with long-running operations.

### ⏱ Reduced Refresh Time
Significantly **speeds up refresh times** in the Power BI Service, improving overall dashboard performance—especially when combining data from multiple sources.

---
