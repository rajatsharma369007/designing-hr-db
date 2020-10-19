/* Following DDL SQL commands will help you to create a physical database 
   for managing the employee's data on a DBMS supporting posgres. */
   

/* Creating Education table (primary key - education id) */

CREATE table Education(
    edu_id SERIAL primary key,
    edu_level varchar(50)
);


/* Creating Employee table (primary key - employee id) */

CREATE table Employee(
    emp_id varchar(10) primary key,
    emp_nm varchar(50),
    email varchar(50),
    hire_dt date,
    edu_id int references Education(edu_id)
);


/* Creating Job table (primary key - job id) */

CREATE table Job(
    job_id serial primary key,
    job_title varchar(50)
);


/* Creating Department table (primary key - department id) */

CREATE table Department(
    depart_id serial primary key,
    depart_nm varchar(50)
);


/* Creating Location table (primary key - location id id) */

CREATE table Location(
    loc_id serial primary key,
    loc_nm varchar(50)
);


/* Creating State table (primary key - state id) */

CREATE table State(
    state_id serial primary key,
    state_nm varchar(50),
    loc_id int references Location(loc_id)
);


/* Creating City table (primary key - city id) */

CREATE table City(
    city_id serial primary key,
    city_nm varchar(50),
    state_id int references State(state_id)
);


/* Creating Address table (primary key - address id) */

CREATE table Address(
    addr_id serial primary key,
    addr_nm varchar(50),
    city_id int references City(city_id)
);


/* Creating Salary table so as to provide 
   flexibility in provisioning security (primary key - salary id) */
   
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
    addr_id int references Address(addr_id),
    salary_id int references Salary(salary_id)
);


/* Creating primary key in EmployeeStatus table (primary key - [employee id, job id]) */

ALTER table EmployeeStatus
    ADD CONSTRAINT employeestatus_pk
        primary key (emp_id, job_id);
        
        
        
