select count(sd.skill_id) as demanded_count, sd.skills 
from job_postings_fact jpf 
inner join skills_job_dim sjd 
on jpf.job_id =sjd.job_id 
inner join skills_dim sd 
on sjd.skill_id =sd.skill_id
where jpf.job_title_short= 'Data Analyst'
group by sd.skills 
order by demanded_count desc limit 5;