# 📊 Optimized SharePoint Data Retrieval for Power BI

## 📋 Overview

**Supercharge your Power BI dashboards** by integrating SharePoint data the smart way.

This project delivers an **efficient and reliable method** for retrieving data from SharePoint lists using the **SharePoint REST API**, replacing the default connector. The result? ⚡ **Faster refreshes**, 🔗 **persistent connections**, and ⏱ **zero timeout issues**—even when paired with complex, on-prem SQL Server sources.

---

## 🚩 The Challenge

Power BI's native SharePoint connector wasn’t cutting it. Here’s what was going wrong:

- ❌ **Timeout Errors**: SharePoint connections expired after 1 hour during long refreshes.
- 🔄 **Failed Updates**: Combined refreshes with on-prem SQL took too long, leading to broken pipelines.
- 📉 **Data Loss Risk**: Mid-refresh timeouts caused incomplete or missing reports.

---

## ✅ The Solution

By switching to the **SharePoint REST API with pagination**, we solved all of that:

- 🔄 **Streamlined Refreshes**: REST API handles large datasets with seamless pagination.
- 🔒 **Persistent Connections**: The API stays active, even when the SQL Server takes its time.
- 🚀 **Performance Boost**: Refresh times are dramatically reduced in Power BI Service.

---

## 🔑 Key Features

### ⚡ Efficient Data Retrieval  
Uses SharePoint REST API with pagination to handle thousands of items effortlessly.

### 🔗 Stable API Connection  
No more timeout errors during refresh—connections stay live as long as needed.

### ⏱ Reduced Refresh Time  
Optimized queries = faster updates and happier end users.

---

## 🧠 Who Is This For?

This solution is perfect for:

- BI Developers working with hybrid (cloud + on-prem) data environments
- Teams using SharePoint lists as key data sources
- Anyone dealing with long Power BI refresh times or failed SharePoint connections

---

## 📁 Files Included

### 📄 `Optimized_SharePoint_Data_Retrieval_for_PowerBI.docx`  
A full documentation file detailing:
- Project overview
- Problem statement
- Implementation steps
- Key features
- Usage instructions  
Ideal for sharing with stakeholders or for internal documentation.

### 💻 `GetSharePointDataWithPagination.m`  
A Power Query (M language) script that:
- Connects to SharePoint using REST API
- Implements efficient pagination
- Converts JSON response into a structured Power BI table  
Drop this into Power BI's **Advanced Editor** to instantly pull SharePoint list data.
