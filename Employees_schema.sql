-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/9Qvbzx
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- CREATE TABLE "departments" (
--     "dept_no" CHAR(4)  NOT NULL ,
--     "dept_name" VARCHAR  NOT NULL ,
--     CONSTRAINT "pk_departments" PRIMARY KEY (
--         "dept_no"
--     )
-- );

-- CREATE TABLE "dept_emp" (
--     "emp_no" INT  NOT NULL ,
--     "dept_no" CHAR(4)  NOT NULL ,
--     "from_date" DATE  NOT NULL ,
--     "to_date" DATE  NOT NULL 
-- );

-- CREATE TABLE "dept_manager" (
--     "dept_no" CHAR(4)  NOT NULL ,
--     "emp_no" INT  NOT NULL ,
--     "from_date" DATE  NOT NULL ,
--     "to_date" DATE  NOT NULL 
-- );

-- CREATE TABLE "employees" (
--     "emp_no" INT  NOT NULL ,
--     "birth_date" DATE  NOT NULL ,
--     "first_name" VARCHAR  NOT NULL ,
--     "last_name" VARCHAR  NOT NULL ,
--     "gender" CHAR(1)  NOT NULL ,
--     "hire_date" DATE  NOT NULL ,
--     CONSTRAINT "pk_employees" PRIMARY KEY (
--         "emp_no"
--     )
-- );

-- CREATE TABLE "salaries" (
--     "emp_no" INT  NOT NULL ,
--     "salary" INT  NOT NULL ,
--     "from_date" DATE  NOT NULL ,
--     "to_date" DATE  NOT NULL 
-- );

-- CREATE TABLE "titles" (
--     "emp_no" INT  NOT NULL ,
--     "title" VARCHAR  NOT NULL ,
--     "from_date" DATE  NOT NULL ,
--     "to_date" DATE  NOT NULL 
-- );

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_emp" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no_dept_no" FOREIGN KEY("emp_no", "dept_no")
REFERENCES "dept_manager" ("emp_no", "dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_emp" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "titles" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no");

