/*Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market,
  providing insights into the most valuable skills for job seekers.
*/ 

select count(sd.skill_id) as demanded_count, sd.skills 
from job_postings_fact jpf 
inner join skills_job_dim sjd 
on jpf.job_id =sjd.job_id 
inner join skills_dim sd 
on sjd.skill_id =sd.skill_id
where jpf.job_title_short= 'Data Analyst'
group by sd.skills 
order by demanded_count desc limit 5;