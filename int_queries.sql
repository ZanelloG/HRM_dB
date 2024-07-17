/* Set out Employees, adding their Departements and various projects their working on.*/
SELECT E.Emp_id, E.Name, E.Surname, D.Name AS Department, P.Name AS Project
FROM Employee E
JOIN Assigned_To AT ON E.Emp_id = AT.Emp_id
JOIN Dipartiment D ON AT.Dip_id = D.Dip_id
JOIN Working_On WO ON E.Emp_id = WO.Emp_id
JOIN Project P ON WO.Pro_id = P.Pro_id;

/*Specific skills regarding a specific Employee.*/
SELECT E.Emp_id, E.Name, E.Surname, S.Name AS Skill
FROM Employee E
JOIN Able_To AT ON E.Emp_id = AT.Emp_id
JOIN Skill S ON AT.Skill_id = S.Skill_id
WHERE E.Emp_id = <specific_employee_id>;

/*Evaluated Employees in a given period of time.*/
SELECT E.Emp_id, E.Name, E.Surname, Ev.Ev_date, Ev.Score
FROM Employee E
JOIN Valued V ON E.Emp_id = V.Emp_id
JOIN Evaluation Ev ON V.Ev_id = Ev.Ev_id AND V.Ev_date = Ev.Ev_date
WHERE Ev.Ev_date BETWEEN 'start_date' AND 'end_date';

/*Total Budget set for Projects according to a certain Departement.*/
SELECT D.Name AS Department, SUM(P.Budget) AS Total_Budget
FROM Dipartiment D
JOIN Assigned_To AT ON D.Dip_id = AT.Dip_id
JOIN Employee E ON AT.Emp_id = E.Emp_id
JOIN Working_On WO ON E.Emp_id = WO.Emp_id
JOIN Project P ON WO.Pro_id = P.Pro_id
WHERE D.Dip_id = <specific_department_id>
GROUP BY D.Name;

/*Projects that require a specific skill by an Employee.*/
SELECT P.Name AS Project, S.Name AS Required_Skill, E.Name AS Employee, E.Surname
FROM Project P
JOIN Require R ON P.Pro_id = R.Pro_id
JOIN Skill S ON R.Skill_id = S.Skill_id
JOIN Able_To AT ON S.Skill_id = AT.Skill_id
JOIN Employee E ON AT.Emp_id = E.Emp_id
WHERE S.Skill_id = <specific_skill_id>;
