# 🚗 CarDekho-Vehicle-Sales-Analysis
Data Analytics project using Python, SQL and Power BI to analyze used vehicle sales data.

## 📊 CarDekho Used Vehicle Data Analysis using Python, SQL & Power BI

---

## 📌 Recommended Structure and Order

1. Project Overview
2. Tech Stack
3. Data Source
4. Data Cleaning & Transformation
5. Key Features / Highlights
6. SQL Analysis
7. Power BI Dashboard
8. Key Insights
9. Dashboard Preview
10. Conclusion

---

## 1. Project Overview

This project presents an end-to-end analysis of used vehicle data from CarDekho, focusing on vehicle pricing, brand popularity, fuel preferences, transmission types, ownership patterns, and vehicle usage.

The objective is to transform raw vehicle data into meaningful business insights using **Python, SQL, and Power BI**.

The project includes data cleaning and feature engineering using Python, analytical SQL queries for business insights, and an interactive Power BI dashboard for data visualization and storytelling.

---

## 2. Tech Stack

- **Python:** Data cleaning, transformation, and exploratory data analysis
- **Pandas & NumPy:** Data manipulation and analysis
- **MySQL / SQL:** Data querying and analytical analysis
- **Power BI:** Interactive dashboard development and data visualization
- **MS Excel / CSV:** Dataset storage and validation
- **Jupyter Notebook:** Python-based analysis

---

## 3. Data Source

The dataset contains used vehicle records with information about vehicle details, pricing, usage, fuel type, seller type, transmission, and ownership.

### Key Attributes

- **Vehicle Details:** Vehicle Name, Brand, Manufacturing Year
- **Pricing:** Selling Price
- **Usage:** Kilometers Driven
- **Fuel:** Diesel, Petrol, CNG, LPG, Electric
- **Seller Type:** Individual, Dealer, Trustmark Dealer
- **Transmission:** Manual, Automatic
- **Ownership:** First Owner, Second Owner, etc.

### Dataset Size

- **Original Records:** 4,340
- **Original Columns:** 8
- **Cleaned Records:** 3,577

---

## 4. Data Cleaning & Transformation

Python and Pandas were used to prepare the dataset for analysis.

### Major Data Preparation Steps

- Checked the dataset structure and data types
- Checked for missing values
- Identified and removed duplicate records
- Extracted **Brand** from the vehicle name
- Created **Vehicle Age** from the manufacturing year
- Converted selling price into **Lakh** for easier analysis
- Validated the cleaned dataset before importing it into Power BI

### Feature Engineering

**Vehicle Age:**

```text
Vehicle Age = 2026 - Manufacturing Year
```
**Selling Price in Lakh:**



```text
Selling Price (Lakh) = Selling Price / 100000
```

## 5. Key Features / Highlights

- Performed data cleaning and preprocessing using Python
- Conducted exploratory data analysis to identify important patterns
- Used SQL queries to analyze vehicle pricing, brands, fuel types, transmission, and ownership
- Developed an interactive Power BI dashboard
- Created KPI cards for key business metrics
- Analyzed the top vehicle brands by number of listings
- Analyzed vehicle distribution by fuel type
- Studied the relationship between vehicle age and selling price
- Added interactive slicers for Year, Brand, Fuel Type, Transmission, Owner, and Seller Type
- Designed a user-friendly dashboard for data-driven decision making
