# Data Analyst Skills & Salary Analysis

## Introduction

This project analyzes **Data Analyst job postings** to understand which skills are associated with higher salaries and which skills are most in demand.

The goal of this project is to explore the relationship between **salary, skill demand, and job opportunities** using real-world job posting data.

#### SQL QUERIES?
Check them out here: [project_sql_folder]

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

### 1. Top-Paying Skills

I analyzed the average salary associated with different skills to identify the **highest-paying skills** in Data Analyst job postings.

The analysis showed that some specialized technical skills were associated with significantly higher average salaries.

### 2. Top 5 Most Demanded Skills

I identified the **five skills that appeared most frequently** in Data Analyst job postings.

This helped me understand which skills employers are requesting most often.

### 3. Skills for Top-Paying Jobs

I analyzed the skills associated with the **highest-paying Data Analyst jobs**.

This helped identify the technical skills that appear in higher-paying opportunities.

### 4. Top Skills Based on Salary

I compared different skills based on their **average salary** to identify skills associated with higher-paying opportunities.

One important observation was that **high salary does not always mean high demand**. Some skills had high average salaries but appeared in fewer job postings.

### 5. Skills Based on High Salary and High Demand

Finally, I compared **salary and demand together** to identify skills that performed well on both measures.

This provides a better understanding of the job market because a skill can have:

* High salary but low demand
* High demand but lower salary
* Both high salary and high demand

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

 
