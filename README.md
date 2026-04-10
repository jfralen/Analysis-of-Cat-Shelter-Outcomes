Cat Shelter Outcome Analysis (SQL)

Overview

This project analyzes cat shelter data to understand how observable characteristics, **age, breed, and color**, relate to outcome probabilities:

* Adoption
* Transfer
* Return to Owner

Using SQL for data aggregation and Tableau for visualization, this project highlights patterns in shelter outcomes and identifies which factors are most associated with successful placements.

---

Objectives

* Quantify outcome probabilities by **age, breed, and color**
* Identify which traits are associated with higher adoption rates
* Compare adoption vs transfer patterns across groups
* Evaluate overall **“good outcome” rates** across categories

---

Tools Used

* **SQL** (data cleaning, aggregation, probability calculations)

---

Repository Structure

```
cat-shelter-outcome-analysis/
│
├── README.md
├── analysis.md
│
├── sql/
│   ├── color_outcomes.sql
│   ├── breed_outcomes.sql
│   └── age_outcomes.sql
│
├── outputs/
│   ├── color_outcomes.csv
│   ├── breed_outcomes.csv
│   └── age_outcomes.csv

---

Methodology

For each grouping variable (**color, breed, age**), SQL queries were used to calculate:

* Total number of animals
* Adoption count and rate
* Transfer count and rate
* Return-to-owner count and rate
* **Good outcome rate**

**Good outcome rate** is defined as the percentage of cats whose outcome was one of:

* Adoption
* Transfer
* Return to Owner

To reduce noise from very small groups, some analyses were filtered to categories with sufficient sample sizes (e.g., >30 animals for breed).

---

Key Findings

Age is the strongest predictor

* Kittens (age 0) had the highest adoption rate (**50.0%**) and very low return rates
* Cats aged 1–2 years were more likely to be **transferred (~55%) than adopted**
* Older cats showed **higher return-to-owner rates**, in some cases exceeding 40%

---

Color has limited impact (with one exception)

Most colors cluster around:

  * **41–46% adoption**
  * **44–46% transfer**
* **Gray cats** stand out:

  * Adoption rate: **20.4%**
  * Transfer rate: **57.9%**
* Most colors still have **high overall good outcome rates (~90%+)**

---

Breed shows moderate variation

* **Domestic shorthair** dominates the dataset (23k+ cats) and serves as a baseline
* Higher adoption rates observed for:

  * Manx (**56.3%**)
  * Maine Coon (**53.5%**)
  * Russian Blue (**50.7%**)
* **American shorthair** showed a high transfer rate (**51.2%**)
* Some breeds had higher return-to-owner rates, suggesting prior ownership

---

Good outcomes are consistently high

* Most groups exceed **90% good outcomes**
* Indicates strong overall placement success across the shelter system


