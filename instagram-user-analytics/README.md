# Instagram User Analytics

## 📌 Project Overview
This project simulates the core relational database backbone of a multi-user social media application like Instagram. 
The objective was to design a clean, fully normalized schema that mirrors essential production environments and write comprehensive analytical scripts to evaluate application growth, identify system drop-offs, and track content engagement.
---
## 🛠️ Tech Stack & Schema Architecture
* **Database Engine:** MySQL
* **Key Components:** Declarative relational constraints,  primary keys, and index-optimized foreign keys to handle high-frequency data insertion.

## 💾 Dataset Profile
* **Database Size:** 100 unique user profiles, tracking a network sample of core user metrics.
* **Relational Volume:** Evaluated over 2,000 application events across relational boundaries (likes, comments, follows, photo tags).

The normalized schema consists of 7 operational tables managing system layers:
* **`users`**: System entry registry tracking account creation timestamps.
* **`photos`**: Image asset metadata linked to user profiles via foreign keys.
* **`comments`**: Textual interactions mapping users to specific image assets.
* **`likes`**: A dedicated table using composite primary keys `(user_id, photo_id)` to enforce unique interactions and optimize indexing performance.
* **`follows`**: A self-referencing relationship table tracking asymmetrical user connections (follower/followee pairings).
* **`tags` & `photo_tags`**: A decoupled junction table design used to implement scalable hashtag tracking and prevent data duplication.
---
## 📊 Core Queries & Business Logic Demonstrated

This repository contains the end-to-end SQL logic required to isolate operational variables and extract critical metrics:

### 1. Inactive User Profiling (Dormant Accounts)
* **The Goal:** Provide the marketing automation team with a targeted list of users who have signed up but have never committed an image post to the application.
* **SQL Technique:** Left Outer Joins identifying `NULL` key fields across the operational boundary.

### 2. User Engagement Velocity
* **The Goal:** Analyze peak system registration windows to identify exactly what days of the week experience the highest volume of sign-ups for targeted push notifications.
* **SQL Technique:** Advanced Date/Time transformations and aggregate distributions.

### 3. Systematic Content Classification
* **The Goal:** Identify trending and heavily utilized platform hashtags to optimize discovery feeds and ad placement logic.
* **SQL Technique:** Aggregate metric computation utilizing multi-table junction mappings (`photo_tags` $\rightarrow$ `tags`).

### 4. Spam Detection Logic (Platform Integrity)
* **The Goal:** Identify artificial bot behaviors by targeting accounts that have liked every single photo uploaded to the network.
* **SQL Technique:** Subqueries paired with `HAVING` filters matching aggregate counts against total platform assets.

---

## 🚀 How to Execute the Scripts
1. Run the database initialize script to spin up the relational framework:
```sql
   SOURCE instagram_user_schema.sql;
