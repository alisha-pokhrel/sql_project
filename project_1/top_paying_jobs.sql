/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls).
*/

select jpf.job_title_short , jpf.salary_year_avg, jpf.job_country, jpf.job_location, jpf.job_schedule_type , cd."name" 
from job_postings_fact jpf 
inner join company_dim cd 
on jpf.company_id =cd.company_id 
where jpf.job_title_short ='Data Analyst' and jpf.salary_year_avg is not null and jpf.job_work_from_home = true
order by jpf.salary_year_avg desc limit 10;