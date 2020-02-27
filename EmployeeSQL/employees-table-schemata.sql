CREATE TABLE "departments" (
    "dept_noID" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_noID"
     )
);

CREATE TABLE "dept_emp" (
    "emp_noID" INTEGER   NOT NULL,
    "dept_noID" VARCHAR(30)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_noID" VARCHAR(30)   NOT NULL,
    "emp_noID" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "employees" (
    "emp_noID" INTEGER   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "gender" VARCHAR(10)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_noID"
     )
);

CREATE TABLE "salaries" (
    "emp_noID" INTEGER   NOT NULL,
    "salary" MONEY   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "titles" (
    "emp_noID" INTEGER   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_noID" FOREIGN KEY("dept_noID")
REFERENCES "departments" ("dept_noID");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_noID" FOREIGN KEY("dept_noID")
REFERENCES "departments" ("dept_noID");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");
