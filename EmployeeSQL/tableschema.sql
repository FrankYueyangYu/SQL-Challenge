create table employee(
    emp_no int PRIMARY KEY,
    birth_date date,
    first_name varchar(20) not null,
    last_name varchar(20) not null, 
    gender varchar(1),
    hire_date date
);

create table department(
    dept_no varchar(4) PRIMARY KEY,
    dept_name varchar(25) not null
);

create table title(
    emp_no INT not null,
    title varchar(25) not null,
    from_date date,
    to_date date,
    titleid serial primary key,
    foreign KEY (emp_no) REFERENCES employee(emp_no)
);

create table salary(
    emp_no int not null,
    salary INT not null,
    from_date date,
    to_date date,
    salaryid serial primary key,
    foreign key (emp_no) REFERENCES employee(emp_no)
);


create table dept_emp(
    emp_no int not null,
    dept_no varchar(4) not null,
    from_date date,
    to_date date,
    dept_empid serial primary key,
    foreign key (emp_no) REFERENCES employee(emp_no),
    foreign key (dept_no) REFERENCES department(dept_no)
);

create table dept_manager(
    dept_no varchar(4) not null,
    emp_no int not null,
    from_date date,
    to_date date,
    dept_mngid serial primary key,
    foreign key (dept_no) REFERENCES department(dept_no),
    foreign key (emp_no) REFERENCES employee(emp_no)
);