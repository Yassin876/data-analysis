# 🎓 Student Performance Analysis & Visualization

A comprehensive project for analyzing student habits and their impact on exam results using:  
**SQL + Python + Power BI**

---

## 🧰 Tools Used

| Tool      | Purpose                                             |
|-----------|-----------------------------------------------------|
| **SQL**   | Data extraction, cleaning, filtering, and grouping  |
| **Python**| Statistical analysis, correlation visualization     |
| **Power BI** | Building interactive dashboards                   |

---

## 📁 Project Structure

```
student-performance-analysis/
│
├── data/
│   └── student_habits_performance.csv
│
├── sql/
│   └── SQLQuery1.sql
│
├── outputs/
│   └── query_results.csv         ← Output of SQL queries
│
├── python/
│   ├── heatmap_analysis.py
│   ├── column_analysis.py
│   └── requirements.txt
│
├── powerbi/
│   └── student dash pord.pbix   ← Final Power BI dashboard
│
├── images_visual/
│   └── dashboard_overview.png   ← Screenshots of the Power BI dashboard
│
├── README.md
```

---

## 🔍 Description of Each Folder and File

| Folder/File         | Description |
|---------------------|-------------|
| `data/`             | Original dataset (CSV format) |
| `sql/`              | SQL query used to clean and aggregate data |
| `outputs/`          | Query results exported from SQL |
| `python/`           | Python scripts for visualization and analysis |
| `powerbi/`          | Power BI dashboard project file |
| `images_visual/`    | Screenshots of the dashboard views |
| `README.md`         | Full documentation for the project |

---

## 1️⃣ Workflow Summary

### 🔹 1. Data Preparation using SQL

```sql
SELECT 
    gender,
    AVG(study_hours_per_day) AS avg_study,
    AVG(exam_score) AS avg_score
FROM students
GROUP BY gender;
```

> Result is exported to `outputs/query_results.csv`

---

### 🔹 2. Data Analysis using Python

#### 📌 `heatmap_analysis.py`
- Generates a correlation heatmap to show factors highly related to `exam_score`.
- Uses: `pandas`, `seaborn`, `matplotlib`.

```bash
python heatmap_analysis.py
```

#### 📌 `column_analysis.py`
- Exploratory analysis for any column:
  - Numerical: outputs mean, median, std, and plots histograms & boxplots.
  - Categorical: value counts + countplot.

```bash
python column_analysis.py
```

#### 🧾 `requirements.txt`
```
pandas
matplotlib
seaborn
numby
```

---

### 🔹 3. Dashboard Building using Power BI

#### Dashboard includes:
- Impact of:
  - Study hours, sleep, social media, exercise, mental health
- Comparisons based on:
  - Gender, Internet quality, part-time jobs, extracurricular activities
- Python Visual for correlation heatmap

#### 📸 Screenshots are saved in `images_visual/`

---

## 🎯 Questions Answered

- Which factors are most correlated with exam scores?
- Does lack of sleep or too much social media usage affect performance?
- Are there performance differences between males and females?
- How do exercise and mental health relate to student performance?

---

## ✅ How to Run the Project

1. Open `student dash pord.pbix` using Power BI Desktop.
2. Run Python scripts from the `python/` folder for optional deep analysis.
3. Explore `images_visual/` for visual overview of the dashboard.
4. Upload everything to GitHub using this README.

---
itHub if you’d like to connect!

