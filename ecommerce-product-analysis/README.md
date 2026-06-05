# E-Commerce User Behavior Analysis & Market Profiling

## 📌 Project Overview
This project focuses on executing an exploratory data profiling suite on a global e-commerce user database (`users_data`). The objective was to write a structured SQL script to audit data hygiene, isolate geographic buyer/seller densities, analyze device localization across operating systems, and segment behavioral patterns across consumer demographics.

---

## 🛠️ Tech Stack & Operations Used
* **Database Engine:** MySQL / Relational SQL Layer
* **Core Techniques:** Multi-attribute aggregation, group filtering (`GROUP BY / HAVING`), conditional filters, set operations (`UNION`), and record ordering limit matrices.

---

## 📊 Analytical Deep Dives & Query Logic

The script processes raw user attributes to solve explicit exploratory and operational problems:

### 1. Platform Localization & Global Footprint
* **Objective:** Determine the diversity of the global footprint to support localization strategies.
* **Approach:** Extracted distinct country and language combinations, alongside user frequency counts across language segments to evaluate localization needs.

### 2. Device Adaptation & App Ecosystem Metrics
* **Objective:** Audit user engagement across the application ecosystem to determine software development priority vectors.
* **Approach:** Evaluated true flag conditions across distinct system columns (`hasAnyApp`, `hasAndroidApp`, `hasIosApp`) to map user distribution across desktop, iOS, and Android platforms.

### 3. Geographic Transaction Densities (Buyers vs. Sellers)
* **Objective:** Map structural market imbalances by locating regions dense with buyers versus regions dominated by sellers.
* **Approach:** Segmented active buyers (`productsBought > 0`) and active sellers (`productsSold > 0`) by country, ranking them respectively to identify dominant logistical markets.

### 4. Demographic Behavior & Interaction Profiles
* **Objective:** Profile platform engagement types (wishing, liking, selling, buying) sliced across user demographics.
* **Approach:** Used set operations (`UNION`) and conditional clauses to isolate behavioral interactions (e.g., matching wishlist versus like counts for female users, or seller versus buyer frequencies for male cohorts).

### 5. Account Churn & Activity Stagnation
* **Objective:** Target dormant cohorts for re-engagement based on inactivity timelines.
* **Approach:** Filtered the database by user login recency thresholds (`daysSinceLastLogin >= 100`) combined with demographic segmentation to isolate high-risk user drop-off.

---

## 🚀 Execution Guide
1. **Database Selection:** Ensure your relational environment targets the e-commerce database:
```sql
   USE ecommerce;
