/* Following DML SQL commands will help you to populate the physical database 
   which is being created for managing the employee's data on a DBMS supporting 
   posgres. */


/* Populating Education table */

INSERT into Education(edu_level)
    SELECT DISTINCT education_lvl
    FROM proj_stg;


/* Populating Employee table */

INSERT into Employee(emp_id, emp_nm, email, hire_dt, edu_id)
    SELECT DISTINCT s.Emp_ID, s.Emp_NM, s.Email, s.hire_dt, ed.edu_id
    FROM proj_stg as s
    JOIN Education as ed
    ON s.education_lvl = ed.edu_level;
    
    
/* Populating Job table */    
    
INSERT into Job(job_title)
    SELECT DISTINCT job_title
    FROM proj_stg;
    
    
/* Populating Department table */
    
INSERT into Department(depart_nm)
    SELECT DISTINCT department_nm
    FROM proj_stg;
    

/* Populating Location table */

INSERT into Location(loc_nm)
    SELECT DISTINCT location
    FROM proj_stg;
    
    
/* Populating State table */

INSERT into State(state_nm, loc_id)
    SELECT DISTINCT s.state, loc.loc_id
    FROM proj_stg as s
    JOIN Location as loc
    ON s.location = loc.loc_nm;
    

/* Populating City table */

INSERT into City(city_nm, state_id)
    SELECT DISTINCT s.city, st.state_id
    FROM proj_stg as s
    JOIN State as st
    ON s.state = st.state_nm;
    

/* Populating Address table */

INSERT into Address(addr_nm, city_id)
    SELECT DISTINCT s.address, ct.city_id
    FROM proj_stg as s
    JOIN City as ct
    ON s.city = ct.city_nm;
    
    
/* Populating Salary table */

INSERT into Salary(amount)
    SELECT DISTINCT salary
    FROM proj_stg;
    
    
/* Populating EmployeeStatus table */
    
INSERT into EmployeeStatus(emp_id, job_id, depart_id, manager_id, start_dt, end_dt, addr_id, salary_id)
    SELECT emp.emp_id, job.job_id, dep.depart_id, 
           (SELECT emp_id from Employee WHERE emp_nm = s.manager), 
           s.start_dt, s.end_dt, addr.addr_id, sal.salary_id
    FROM proj_stg as s
    JOIN Employee as emp
    ON s.Emp_ID = emp.emp_id
    JOIN Job as job
    ON s.job_title = job.job_title
    JOIN Department as dep
    ON s.Department_nm = dep.depart_nm
    JOIN Address as addr
    ON s.address = addr.addr_nm
    JOIN Salary as sal
    ON s.salary = sal.amount;
    

