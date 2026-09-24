/*Question: What are the top skills based on salary?

Look at the average salary associated with each skill for Data Analyst positions
Focuses on roles with specified salaries, regardless of location
Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire or improve
*/

select sd.skills , round(avg (jpf.salary_year_avg ),0) salary_count
from job_postings_fact jpf 
inner join skills_job_dim sjd 
on jpf.job_id = sjd.job_id
inner join skills_dim sd 
on sjd.skill_id =sd.skill_id
where jpf.job_title_short ='Data Analyst' and jpf.salary_year_avg is not null
group by sd.skills 
order by salary_count desc limit 25;

/*Here is some breakdown of the findings above:
		The top salaries are driven by specialized skills: Skills like SVN, Solidity, Couchbase, and DataRobot have the highest average salaries, showing that specialized technical skills can be linked with higher-paying roles.
        The data shows different skill areas: The list includes AI/ML (PyTorch, TensorFlow), data engineering (Kafka, Airflow, Cassandra), and cloud/automation (Terraform, Ansible), suggesting that higher-paying data roles often require skills beyond traditional analysis.
		Salary alone isn't enough to identify valuable skills: SVN has the highest salary at $400K, but we need to check its number of job postings before considering it a strong market trend. A good analysis should compare salary vs. demand to identify skills that are both well-paid and widely needed.
*/
