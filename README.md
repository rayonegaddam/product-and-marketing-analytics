
# Product & Marketing Analytics Portfolio

This repository contains a targeted collection of data analysis projects focused on product performance, marketing optimization, and user behavior. The primary objective is to translate raw application event layers, customer profiles, and marketplace metrics into actionable business strategies.

---

## 🛠️ Tech Stack & Core Competencies
* **SQL Querying:** Relational schema design, multi-table indexing, CTEs, window functions, and set operations.
* **Python Core:** Data cleaning, data profiling, and statistical exploratory analysis (Pandas, NumPy, Seaborn, Matplotlib).
* **Domain Focus:** User retention tracking, localization mapping, campaign ROI, and customer risk segmentation.

---

## 📂 Repository Structure

### 1. 📈 [Instagram User Engagement Analytics](./instagram-user-analytics/)
* **The Goal:** Analyze platform transactional logs to evaluate user activity patterns and safeguard system health.
* **The Execution:** Designed a 7-table normalized relational schema. Wrote an analytical query suite using left outer joins, date transformations, and aggregate filters to profile dormant accounts, map registration velocity, and flag potential bot activity.
* **Business Value:** Generated targeted user cohorts for automated re-engagement marketing and optimized push-notification scheduling windows.

### 2. 🛍️ [E-Commerce User Behavior & Market Profiling](./ecommerce-product-analysis/)
* **The Goal:** Audit platform data hygiene, track device adaptation, and map global supply-demand footprints.
* **The Execution:** Wrote structured queries to audit e-commerce demographic data. Profiled system tool usage flags (iOS vs. Android) and balanced geographic buyer-to-seller ratios across international boundaries using conditional aggregation.
* **Business Value:** Identified core regional market imbalances and isolated stagnant user segments (inactivity thresholds >= 100 days) for retention modeling.


### 3. 🛡️ [Insurance Customer Risk & Retention EDA](./insurance-customer-eda/)
* **The Goal:** Segment an insurance customer base to isolate variables driving policy longevity and premium stability.
* **The Execution:** Executed an end-to-end Exploratory Data Analysis (EDA) inside a Python Jupyter Notebook. Implemented outlier treatment, missing data strategies, and correlation matrices between customer demographics and policy longevity.
* **Business Value:** Structured a clean risk-retention matrix enabling customer success teams to deploy optimized premium adjustments prior to core policy lapse windows.
