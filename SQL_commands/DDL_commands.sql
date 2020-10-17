/* Following DDL SQL commands will help you to create a physical database 
   for managing the employee's data on a DBMS supporting posgres. */
   

/* Creating Employee table */

CREATE table Employee(
    emp_id varchar(10) primary key,
    emp_nm varchar(50),
    email varchar(50),
    hire_dt date,
    edu_level varchar(50)
);


/* Creating Job table */

CREATE table Job(
    job_id serial primary key,
    job_title varchar(50)
);


/* Creating Department table */

CREATE table Department(
    depart_id serial primary key,
    depart_nm varchar(50)
);


/* Creating Location table */

CREATE table Location(
    loc_id serial primary key,
    loc_nm varchar(50),
    addr varchar(50),
    city varchar(50),
    state varchar(50)
);


/* Creating Salary table so as to provide 
   flexibility in provisioning security */
   
CREATE table Salary(
    salary_id serial primary key,
    amount int
);


/* Creating EmployeeStatus table as there is 
   many to many relationship across emp_id and 
   job_id. So this table acts as pivot point */
   
CREATE table EmployeeStatus(
    emp_id varchar(10) references Employee(emp_id),
    job_id int references Job(job_id),
    depart_id int references Department(depart_id),
    manager_id varchar(10) references Employee(emp_id),
    start_dt date,
    end_dt date,
    loc_id int references Location(loc_id),
    salary_id int references Salary(salary_id)
);


/* Creating primary key in EmployeeStatus table */

ALTER table EmployeeStatus
    ADD CONSTRAINT employeestatus_pk
        primary key (emp_id, job_id);
        
        
        
