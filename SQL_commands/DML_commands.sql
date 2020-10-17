/* Following DML SQL commands will help you to populate the physical database 
   which is being created for managing the employee's data on a DBMS supporting 
   posgres. */


/* Populating Employee table */

INSERT into Employee(emp_id, emp_nm, email, hire_dt, edu_level)
    SELECT DISTINCT Emp_ID, Emp_NM, Email, hire_dt, education_lvl
    FROM proj_stg;
    
    
/* Populating Job table */    
    
INSERT into Job(job_title)
    SELECT DISTINCT job_title
    FROM proj_stg;
    
    
/* Populating Department table */
    
INSERT into Department(depart_nm)
    SELECT DISTINCT department_nm
    FROM proj_stg;
    

/* Populating Location table */

INSERT into Location(loc_nm, addr, city, state)
    SELECT DISTINCT location, address, city, state
    FROM proj_stg;
    

/* Populating Salary table */

INSERT into Salary(amount)
    SELECT DISTINCT salary
    FROM proj_stg;
    
    
/* Populating EmployeeStatus table */
    
INSERT into EmployeeStatus(emp_id, job_id, depart_id, manager_id, start_dt, end_dt, loc_id, salary_id)
    SELECT emp.emp_id, job.job_id, dep.depart_id, 
           (SELECT emp_id from Employee WHERE emp_nm = s.manager), 
           s.start_dt, s.end_dt, loc.loc_id, sal.salary_id
    FROM proj_stg as s
    JOIN Employee as emp
    ON s.Emp_ID = emp.emp_id
    JOIN Job as job
    ON s.job_title = job.job_title
    JOIN Department as dep
    ON s.Department_nm = dep.depart_nm
    JOIN Location as loc
    ON s.location = loc.loc_nm
    JOIN Salary as sal
    ON s.salary = sal.amount;



