/* Question 1: Return a list of employees with Job Titles and Department Names */

SELECT emp.emp_nm, job.job_title, dep.depart_nm
    FROM EmployeeStatus as es
    JOIN Employee as emp
    ON es.emp_id = emp.emp_id
    JOIN Job as job
    ON es.job_id = job.job_id
    JOIN Department as dep
    ON es.depart_id = dep.depart_id;
    
    
/* Question 2: Insert Web Programmer as a new job title */

INSERT into Job (job_title)
    VALUES ('Web Programmer');
    
    
/* Question 3: Correct the job title from web programmer to web developer */

UPDATE Job
    SET job_title = 'Web Developer'
    WHERE job_title = 'Web Programmer';
    
    
/* Question 4: Delete the job title Web Developer from the database */

DELETE from Job
    WHERE job_title = 'Web Developer';
    
    
/* Question 5: How many employees are in each department? */

SELECT dep.depart_nm, count(emp.emp_nm)
    FROM EmployeeStatus as es
    JOIN Employee as emp
    ON es.emp_id = emp.emp_id
    JOIN Department as dep
    ON es.depart_id = dep.depart_id
    GROUP BY dep.depart_nm;
    
    
/* Question 6: Write a query that returns current and past jobs (include 
   employee name, job title, department, manager name, start and end date 
   for position) for employee Toni Lembeck. */
   
SELECT emp.emp_nm, job.job_title, dep.depart_nm, 
       (SELECT emp_nm from Employee WHERE emp_id = es.manager_id),
       es.start_dt, es.end_dt
    FROM EmployeeStatus as es
    JOIN Employee as emp
    ON es.emp_id = emp.emp_id
    JOIN Job as job
    ON es.job_id = job.job_id
    JOIN Department as dep
    ON es.depart_id = dep.depart_id
    WHERE emp.emp_nm = 'Toni Lembeck';
    
    

