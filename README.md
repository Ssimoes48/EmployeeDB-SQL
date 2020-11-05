# SQL Challenge

![SQL](Images/sql.png)

## Table of contents
* [About the Project](#about-the-project)
* [Data Modeling](#data-modeling)
* [Data Engineering](#data-engineering)
* [Data Analysis](#data-analysis)
* [Salary Analysis](#salary-analysis)
* [Conclusion](#conclusion)
* [Resources](#resources)
* [Contact](#contact)

## About the Project


## Data Modeling

To visualize my data, I used an Entity Relational Database called [Quick Database Diagrams]( https://app.quickdatabasediagrams.com/#/) . First, I reviewed my 6 different `csv` files

* [employees.csv](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/Resources/employees.csv)
* [dept_emp.csv](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/Resources/dept_emp.csv)
* [dept_manager.csv](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/Resources/dept_manager.csv)
* [salaries.csv](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/Resources/salaries.csv)
* [titles.csv](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/Resources/titles.csv)
* [departments.csv](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/Resources/departments.csv)

After reviewing the data, I was able to determine what columns would be Primary Keys for when comparing my data files. I then created tables for each `csv` file and included the details for the data going into each column. For example, numbers were assigned as `INTEGERS` and names and personal information were assigned as `VARCHAR` . 

Once my tables were created in the mapping tool, I then linked the tables on Primary keys and other data relationships. I linked `employee_id` and other `id` information. 

![ERD Map](Images/ERD_map_update.PNG)

Below is what the code looks like in the data mapping tool. Once I completed organizing the data, I exported this into a file to use in `PostgreSQL` . 

![ERD Code](Images/ERD_code_update.PNG)


## Data Engineering

After exporting the [schemata](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/ERDexport.sql) from the data mapping tool, I used the code to create my tables in `pgAdmin4` . The code exported with `" "` around the variables, so I deleted them when transferring the information to easier manipulate the information later. 

The code includes the `CREATE TABLE` command and then includes one line per column of data. Each column has `syntax` for the type of data included in the cells and the command `NOT NULL` to only include cells with information included and not blank cells. The end `syntax` refers to the `Primary Key` which I set to be the `Employee_ID` .

Employee Table: 

![Employee Table](Images/employee_table.PNG)

Department Table: includes `Department_ID` and `Department_Name`

![department Table](Images/department_table.PNG)

Department Manager Table: includes `Department_ID` and manager `Employee_ID` 

![manager Table](Images/manager_table.PNG)

Employee Department Table: includes `Employee_ID` and `Department_ID` 

![Employee department Table](Images/employee_department.PNG)

Job Title Table: includes `Title_ID` and `Title`

![Job Title Table](Images/job_title_table.PNG)

Salary Table: includes `Employee_ID` and `Salary` amount

![SalaryTable](Images/salary_table.PNG)

By mapping my data tables in the mapping tool, I created `CONSTRAINTS` ,  `PRIMARY KEYS` , and `FOREIGN KEYS` . These criteria help my data tables interact when combining information into one `queries` . 

![Table Constraints](Images/constraints.PNG)



## Data Analysis

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

Query : To show this view, I used an `INNER JOIN` on the `Employee` and `Salaries` tables. I `joined` the data on the `Employee_ID` . 

![Question 1](Images/question1.PNG)

Data Output: 

![Question Data 1](Images/question1_data.PNG)

2. List first name, last name, and hire date for employees who were hired in 1986.

![Question 2](Images/question2.PNG)

Data Output: 

![Question Data 2](Images/question2_data.PNG)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![Question 3](Images/question3.PNG)

Data Output: 

![Question Data 3](Images/question3_data.PNG)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![Question 4](Images/question4.PNG)

Data Output: 

![Question Data 4](Images/question4_data.PNG)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![Question 5](Images/question5.PNG)

Data Output: 

![Question Data 5](Images/question5_data.PNG)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![Question 6](Images/question6.PNG)

Data Output: 

![Question Data 6](Images/question6_data.PNG) ![Question 7](Images/question7.PNG)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![Question Data 7](Images/question7_data.PNG)

Data Output: 

![Question Data 7](Images/question7_data.PNG)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![Question 8](Images/question8.PNG)

Data Output: 

![Question Data 8](Images/question8_data.PNG)


## Salary Analysis

BONUS 

## Conclusion


## Resources

Link to [Jupyter Notebook]( https://github.com/Ssimoes48/SQL_Challenge/blob/main/employee_db.ipynb)

Link to [SQL Employee Database](https://github.com/Ssimoes48/SQL_Challenge/blob/main/Employee_SQL/employee_db.sql)

## Contact
Sara Simoes
