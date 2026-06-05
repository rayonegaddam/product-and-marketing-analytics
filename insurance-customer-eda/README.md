# Insurance Customer Risk & Retention Exploratory Data Analysis (EDA)

## 📌 Project Overview
This project involves conducting a comprehensive, programmatic Exploratory Data Analysis (EDA) on an enterprise insurance policyholder database. The primary objective was to build an analytical data pipeline in Python to audit data cleanliness, evaluate demographic distributions, isolate underlying risk variables, and establish correlation matrices tracking policy longevity and premium spending behavior.

---

## 🛠️ Tech Stack & Library Configurations
* **Language Environment:** Python (Jupyter Notebook Environment)
* **Data Manipulation:** Pandas, NumPy
* **Statistical Visualization:** Seaborn, Matplotlib

---

## ⚙️ Programmatic Engineering & EDA Phases

The analysis workflow is structured into logical blocks ensuring strict data hygiene before extracting statistical insights:

### 1. Data Integrity & Preprocessing Pipeline
* **Structural Profiling:** Evaluated matrix shape configurations, data layer boundaries (`.info()`), and statistical variance markers across policyholder records.
* **Missing Value Management:** Audited column-wise null concentrations and executed systematic imputation/removal strategies to prevent downstream mathematical bias.
* **Data Type Rectification:** Converted object text formats into categorical and numeric structures to optimize memory allocation and pipeline throughput.

### 2. Outlier Identification & Distribution Auditing
* **Anomalous Boundary Scanning:** Used interquartile range (IQR) scanning and box-plot evaluations to capture extreme anomalies and skewness across high-variance features (such as annual premium values and customer ages).
* **Feature Distribution Profiles:** Built histograms and kernel density estimate (KDE) overlays to track continuous distributions, isolating structural skews within individual customer segments.

### 3. Bivariate & Multivariate Feature Correlations
* **Statistical Association Matrices:** Generated Pearson/Spearman correlation heatmaps to quantify linear relationships across numeric factors (e.g., matching coverage sizes and claim frequencies against policyholder age metrics).
* **Categorical Cross-Tabulations:** Used segmented bar matrices and pair-plot grids to isolate how qualitative variables (such as policy types, vehicle use parameters, or regional zones) impact underlying retention metrics.

---

## 📊 Strategic Business Insights Isolated
* **Premium Variance Thresholds:** Statistical distributions clearly isolate historical pricing inflection points where specific high-premium cohorts exhibit accelerated drop-off rates, highlighting target lines for pricing restructuring.
* **Retention Risk Demographics:** Correlation tracking maps strong historical linkages between specific customer age/tenure combinations and elevated policy lapse rates, providing an explicit demographic matrix for customer success prioritization.
* **Claim Density Clusters:** Cross-tabulating geographic and coverage attributes surfaces high-frequency operational risk zones, outlining distinct parameters for automated risk underwriting corrections.

---

## 🚀 Execution & Verification
To open the visualization framework and replicate the data cleaning execution pipeline locally:
1. Ensure your local virtual runtime environment contains the required dependency layers:
   ```bash
   pip install pandas numpy seaborn matplotlib jupyter
