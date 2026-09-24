/*
Answer: What are the most optimal skills to learn (aka it's in high demand and a high-paying skill)
- Identify skills in high demand and associated with high average salaries for Data Analyst roles
- Concentrates on remote positions with specified salaries
- Why? Targets skills that offer job security (high demand) and financial benefits (high salaries), offering strategic insights for career development in data analysis
*/

with high_paying_skills as 
							(	select sd.skills , round(avg (jpf.salary_year_avg ),0) salary_count, sjd.skill_id 
								from job_postings_fact jpf 
								inner join skills_job_dim sjd 
								on jpf.job_id = sjd.job_id
								inner join skills_dim sd 
								on sjd.skill_id =sd.skill_id
								where jpf.job_title_short ='Data Analyst' and jpf.salary_year_avg is not null
								group by sd.skills, sjd.skill_id  
								),
	high_demand as
					(	select count(sd.skill_id) as demanded_count, sd.skills, sjd.skill_id 
						from job_postings_fact jpf 
						inner join skills_job_dim sjd 
						on jpf.job_id =sjd.job_id 
						inner join skills_dim sd 
						on sjd.skill_id =sd.skill_id
						where jpf.job_title_short ='Data Analyst' and jpf.salary_year_avg is not null
						group by sd.skills, sjd.skill_id  
						)
select hd.skills, demanded_count, h.salary_count
from high_paying_skills h
inner join high_demand hd
on h.skill_id =hd.skill_id
where hd.demanded_count > 10
order by demanded_count,  h.salary_count desc; 



--More easy and precise way
select sd.skills , round(avg (jpf.salary_year_avg ),0) salary_count, count(sd.skill_id) as demanded_count
								from job_postings_fact jpf 
								inner join skills_job_dim sjd 
								on jpf.job_id = sjd.job_id
								inner join skills_dim sd 
								on sjd.skill_id =sd.skill_id
								where jpf.job_title_short ='Data Analyst' and jpf.salary_year_avg is not null 
								group by sd.skills
								having count(sd.skill_id)>10
								order by demanded_count, salary_count  desc;

