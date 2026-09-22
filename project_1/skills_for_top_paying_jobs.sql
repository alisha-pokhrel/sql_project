/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for those roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
  helping job seekers understand which skills to develop that align with top salaries.
*/

with job_and_company as (
							select  jpf.job_id, 
									jpf.job_title ,
									jpf.salary_year_avg,
									jpf.job_country,
									jpf.job_location,
									cd."name" 
							from job_postings_fact jpf 
							inner join company_dim cd 
							on jpf.company_id =cd.company_id
							where jpf.job_title_short ='Data Analyst' and jpf.salary_year_avg is not null
							order by jpf.salary_year_avg desc limit 10
							)
select  j.job_title ,
		j.salary_year_avg ,
		j.job_country,
		j."name" as company_name,
		sd.skills 
from job_and_company j
inner join skills_job_dim sjd 
on j.job_id =sjd.job_id 
inner join skills_dim sd 
on sjd.skill_id =sd.skill_id ;