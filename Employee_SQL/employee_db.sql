CREATE TABLE Employee (
    Employee_ID INTEGER   NOT NULL,
    Employee_Title_ID VARCHAR   NOT NULL,
    Employee_Bday VARCHAR   NOT NULL,
    First_Name VARCHAR(100)   NOT NULL,
    Last_Name VARCHAR(100)   NOT NULL,
    Sex VARCHAR(5)   NOT NULL,
    Hire_Date VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Employee PRIMARY KEY (
        Employee_ID
     )
);

SELECT * FROM Employee

CREATE TABLE Departments (
    Department_ID VARCHAR(15)   NOT NULL,
    Department_Name VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Department_ID
     )
);

SELECT * FROM Departments

CREATE TABLE Managers (
    Department_ID VARCHAR(15)   NOT NULL,
    Employee_ID INTEGER   NOT NULL,
    CONSTRAINT pk_Managers PRIMARY KEY (
        Employee_ID
     )
);

SELECT * FROM Managers

CREATE TABLE Employee_Department (
    Employee_ID INTEGER   NOT NULL,
    Department_ID VARCHAR(15)   NOT NULL
    --CONSTRAINT pk_Employee_Department PRIMARY KEY (
        --Employee_ID, Department_ID)
     --)
);

SELECT * FROM Employee_Department

CREATE TABLE Job_Title (
    Title_ID VARCHAR(20)   NOT NULL,
    Title VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_Job_Title PRIMARY KEY (
        Title_ID
     )
);

SELECT * FROM Job_Title

CREATE TABLE Saleries (
    Employee_ID INTEGER   NOT NULL,
    Salary INTEGER   NOT NULL,
    CONSTRAINT pk_Saleries PRIMARY KEY (
        Employee_ID
     )
);

SELECT * FROM Saleries

