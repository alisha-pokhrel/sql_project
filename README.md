# Data Analyst Skills & Salary Analysis

## Introduction

This project analyzes **Data Analyst job postings** to understand which skills are associated with higher salaries and which skills are most in demand.

The goal of this project is to explore the relationship between **salary, skill demand, and job opportunities** using real-world job posting data.

#### SQL QUERIES?
Check them out here: [View Project 1](./project_1)

## Background

As someone learning Data Analytics, I wanted to answer questions such as:

* What are the **top-paying skills** for Data Analyst jobs?
* What are the **top 5 most demanded skills**?
* Which skills are associated with **top-paying jobs**?
* Which skills have **high salaries and high demand**?

To answer these questions, I analyzed data from three tables:

* `job_postings_fact`
* `skills_dim`
* `company_dim`
* `skills_job_dim`

## Tools I Used

* **PostgreSQL** – Data analysis and querying
* **SQL** – Joins, CTEs, subqueries, aggregations, filtering, and grouping
* **GitHub** – Project documentation and portfolio

## Tables Used

| Table               | Description                                                                           |
| ------------------- | ------------------------------------------------------------------------------------- |
| `job_postings_fact` | Job posting information, including salary, job title, location, and other job details |
| `skills_dim`        | Information about skills associated with job postings                                 |
| `company_dim`       | Information about companies                                                           |
| `skills_job_dim`    | Contains skill_id and job_id
## Analysis

### 1. Top-Company Paying Data Analyst Jobs

**Analysis:**
Identified the highest-paying Data Analyst positions from the dataset.

**Key Insights:**

* **Mantys** has the highest salary at **$650K**.
* **Meta** ranks next with **$336.5K**.
* Most top-paying roles are in the **United States** and are **Full-time / Anywhere** positions.

**Result In Chart:**

![Top Paying Data Analyst Jobs](https://github.com/user-attachments/assets/e1aa746f-01fa-4dff-a4e7-e4ff07b7ebf8)

#### Overall Insight

The query shows that the highest-paying Data Analyst positions in this dataset are predominantly full-time and categorized as anywhere/remote, with the majority of top-paying positions coming from the United States. The results also highlight significant salary variation among Data Analyst roles.

### 2. Skills For Data Analysts Jobs 

**Analysis:**
Identified the most frequently required skills across the job postings.

**Key Insights:**

* **Excel** appears as one of the most frequently required skills across high-paying roles.
* **Python and SQL** are commonly required for Data Analyst and Data Analytics positions.
* **R** and **Tableau** also appear frequently, showing demand for both programming/statistical and data visualization skills.
* The results show that employers often look for a **combination of technical, analytical, and visualization skills** rather than a single skill.

### Result
| Skill   | Job Role                         | Salary | Company                      |
| ------- | -------------------------------- | -----: | ---------------------------- |
| Excel   | Director of Safety Data Analysis |  $375K | Torc Robotics                |
| Python  | Data Analyst                     |  $350K | Anthropic                    |
| SQL     | Data Analyst                     |  $350K | Anthropic                    |
| R       | Head of Data Analytics           |  $350K | Care.com                     |
| Tableau | HC Data Analyst, Senior          |  $375K | Illuminate Mission Solutions |

This helped me understand which skills employers are requesting most often.

### 3. Most In-Demand Skills for Data Analysts

**Analysis:**
Identified the most frequently required skills across Data Analyst job postings.

**Result:**

| Skill    | Job Postings |
| -------- | -----------: |
| SQL      |       92,628 |
| Excel    |       67,031 |
| Python   |       57,326 |
| Tableau  |       46,554 |
| Power BI |       39,468 |

**Key Insights:**

* **SQL** is the most in-demand skill, followed by **Excel** and **Python**.
* **Tableau** and **Power BI** are also highly requested for data visualization and reporting.
* The results highlight the importance of both **technical and visualization skills** for Data Analyst roles.

### 4. Highest-Paying Skills for Data Analysts

**Analysis:**
Analyzed the average annual salary associated with each skill to identify the highest-paying skills among Data Analyst roles.

**Key Insights:**

* **SVN** has the highest average salary at **$400,000**.
* **Solidity** and **Couchbase** follow with average salaries of **$179,000** and **$160,515**.
* The results show that specialized skills such as **DataRobot, Golang, MXNet, and Dplyr** are associated with higher-paying Data Analyst roles.
* These results reflect **salary averages within the available job postings**, not guaranteed salaries for each skill.


### 5. Skills Based on High Salary and High Demand

Finally, I compared **salary and demand together** to identify skills that performed well on both measures.

This provides a better understanding of the job market because a skill can have:

* High salary but low demand
* High demand but lower salary
* Both high salary and high demand

**Key Insights:**

* **PyTorch** stands out with a high average salary of **$125,226** and **20 job postings**.
* **Perl** also shows a strong combination of salary (**$124,686**) and demand (**20 postings**).
* **Jenkins** and **Spring** have higher demand, with **21 and 22 postings**, respectively.
* The results show that some specialized technical skills can provide a **good balance between earning potential and job availability**.


## What I Learned

Through this project, I learned how to:

* Analyze real-world job posting data using SQL
* Combine multiple tables using `JOIN`
* Use **CTEs** to organize complex queries
* Use `GROUP BY`, `HAVING`, and aggregate functions
* Use subqueries for deeper analysis
* Compare **salary and job demand**
* Turn raw data into meaningful insights
* Approach SQL from a **data analyst perspective**

Most importantly, I learned that **salary alone is not enough to evaluate a skill**. Looking at both salary and demand gives a better understanding of the job market.

## Conclusion

This project helped me understand the relationship between **skills, salary, and demand** in the Data Analyst job market.

The analysis showed that specialized technical skills can be associated with higher salaries, while commonly requested skills tend to appear in more job postings.

Overall, this project helped me strengthen my **SQL skills** and gain a better understanding of how SQL can be used to answer real-world data analytics questions.

## My Learning Journey

This project is part of my ongoing journey into **Data Analytics**, where I am building my skills in:

`Excel` → `SQL` → `Power BI` → `Python`

More projects coming soon!

 
