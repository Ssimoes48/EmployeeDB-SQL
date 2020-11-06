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

CREATE TABLE Salaries (
    Employee_ID INTEGER   NOT NULL,
    Salary INTEGER   NOT NULL,
    CONSTRAINT pk_Saleries PRIMARY KEY (
        Employee_ID
     )
);

SELECT * FROM Salaries

ALTER TABLE Employee ADD CONSTRAINT fk_Employee_Employee_ID FOREIGN KEY(Employee_ID)
REFERENCES Saleries (Employee_ID);

ALTER TABLE Employee ADD CONSTRAINT fk_Employee_Employee_Title_ID FOREIGN KEY(Employee_Title_ID)
REFERENCES Job_Title (Title_ID);

ALTER TABLE Employee_Department ADD CONSTRAINT fk_Employee_Department_Employee_ID FOREIGN KEY(Employee_ID)
REFERENCES Employee (Employee_ID);

ALTER TABLE Employee_Department ADD CONSTRAINT fk_Employee_Department_Department_ID FOREIGN KEY(Department_ID)
REFERENCES Departments (Department_ID);

ALTER TABLE Managers ADD CONSTRAINT fk_Managers_Department_ID FOREIGN KEY(Department_ID)
REFERENCES Departments (Department_ID);

--Question 1
SELECT e.Employee_ID, e.Last_Name, e.First_Name, e.Sex, s.Salary 
FROM Employee e
INNER JOIN Salaries s
ON (e.Employee_ID = s.Employee_ID);


--Question 2
SELECT First_Name, Last_Name, Hire_Date
FROM Employee
WHERE Hire_Date LIKE '%1986%'

--Question 3
SELECT d.Department_ID, d.Department_Name, e.Employee_ID, e.Last_Name, e.First_Name
FROM Employee e
INNER JOIN Managers m
ON m.Employee_ID = e.Employee_ID
INNER JOIN Departments d
ON d.Department_ID = m.Department_ID

--Question 4
SELECT e.Employee_ID, e.Last_Name, e.First_Name, d.Department_Name
FROM Employee e
INNER JOIN Employee_Department g
ON g.Employee_ID = e.Employee_ID
INNER JOIN Departments d
ON d.Department_ID = g.Department_ID

--Question 5
SELECT First_Name, Last_Name, Sex
FROM Employee
Where First_Name = 'Hercules' AND Last_Name LIKE '%B%'

--Question 6
SELECT e.Employee_ID, e.Last_Name, e.First_Name, d.Department_Name
FROM Employee e
INNER JOIN Employee_Department g
ON g.Employee_ID = e.Employee_ID
INNER JOIN Departments d
ON d.Department_ID = g.Department_ID
WHERE d.Department_Name = 'Sales'

--Question 7
SELECT e.Employee_ID, e.Last_Name, e.First_Name, d.Department_Name
FROM Employee e
INNER JOIN Employee_Department g
ON g.Employee_ID = e.Employee_ID
INNER JOIN Departments d
ON d.Department_ID = g.Department_ID
WHERE d.Department_Name = 'Sales' OR d.Department_Name = 'Development'

--Question 8
SELECT Last_Name, COUNT(Last_Name) AS "Frequency"
FROM Employee
GROUP BY Last_Name
ORDER BY Last_Name DESC

--Bonus Jupyter Notebook Code
SELECT e.Employee_ID, t.title, s.Salary 
FROM Employee e
INNER JOIN Salaries s
ON (e.Employee_ID = s.Employee_ID)
INNER JOIN Job_Title t
ON (e.Employee_title_id = t.title_id)

--Look up Employee_ID 499942
SELECT e.Employee_ID, e.Last_Name, e.First_Name, s.Salary 
FROM Employee e
INNER JOIN Salaries s
ON (e.Employee_ID = s.Employee_ID)
WHERE (e.Employee_ID = 499942)








