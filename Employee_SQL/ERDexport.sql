﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employee" (
    "Employee_ID" INTEGER   NOT NULL,
    "Employee_Title_ID" VARCHAR   NOT NULL,
    "Employee_Bday" VARCHAR   NOT NULL,
    "First_Name" VARCHAR(100)   NOT NULL,
    "Last_Name" VARCHAR(100)   NOT NULL,
    "Sex" VARCHAR(5)   NOT NULL,
    "Hire_Date" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "Employee_ID"
     )
);

CREATE TABLE "Employee_Department" (
    "Employee_ID" INTEGER   NOT NULL,
    "Department_ID" VARCHAR(15)   NOT NULL,
    CONSTRAINT "pk_Employee_Department" PRIMARY KEY (
        "Employee_ID"
     )
);

CREATE TABLE "Managers" (
    "Department_ID" VARCHAR(15)   NOT NULL,
    "Employee_ID" INTEGER   NOT NULL,
    CONSTRAINT "pk_Managers" PRIMARY KEY (
        "Employee_ID"
     )
);

CREATE TABLE "Saleries" (
    "Employee_ID" INTEGER   NOT NULL,
    "Salary" INTEGER   NOT NULL,
    CONSTRAINT "pk_Saleries" PRIMARY KEY (
        "Employee_ID"
     )
);

CREATE TABLE "Job_Title" (
    "Title_ID" VARCHAR(20)   NOT NULL,
    "Title" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Job_Title" PRIMARY KEY (
        "Title_ID"
     )
);

CREATE TABLE "Departments" (
    "Department_ID" VARCHAR(15)   NOT NULL,
    "Department_Name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Department_ID"
     )
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_Employee_ID" FOREIGN KEY("Employee_ID")
REFERENCES "Saleries" ("Employee_ID");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_Employee_Title_ID" FOREIGN KEY("Employee_Title_ID")
REFERENCES "Job_Title" ("Title_ID");

ALTER TABLE "Employee_Department" ADD CONSTRAINT "fk_Employee_Department_Employee_ID" FOREIGN KEY("Employee_ID")
REFERENCES "Employee" ("Employee_ID");

ALTER TABLE "Employee_Department" ADD CONSTRAINT "fk_Employee_Department_Department_ID" FOREIGN KEY("Department_ID")
REFERENCES "Departments" ("Department_ID");

ALTER TABLE "Managers" ADD CONSTRAINT "fk_Managers_Department_ID" FOREIGN KEY("Department_ID")
REFERENCES "Departments" ("Department_ID");

ALTER TABLE "Managers" ADD CONSTRAINT "fk_Managers_Employee_ID" FOREIGN KEY("Employee_ID")
REFERENCES "Employee" ("Employee_ID");

