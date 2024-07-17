insert into Employee (Emp_id, Name, Surname, BDate, EntryDate, Dipart_role, Project_role) values 
(1, 'John', 'Smith', '1980-10-05', '2022-01-01', 'Researcher', 'Project Manager'),
(2, 'Emily', 'Johnson', '1993-10-05', '2021-02-11', 'Laboratory Technician', 'Business Analyst'),
(3, 'Micehal', 'Brown', '1991-10-10', '2020-04-10', 'Research Scientist', 'Database Administrator'),
(4, 'Sarah', 'Davis', '1998-05-03', '2023-02-03', 'HR Manager', 'Project Coordinator'),
(5, 'David', 'Wilson', '1970-06-02', '2022-03-01', 'Researcher', 'Team Leader'),
(6, 'Laura', 'Miller', '1984-02-15', '2023-01-04', 'Product Development Manager', 'Software Developer'),
(7, 'James', 'Taylor', '1986-11-06', '2022-05-05', 'Laboratory Technician', 'UX/UI Designer'),
(8, 'Olivia', 'Anderson', '1973-01-03', '2020-08-12', 'Innovation Specialist', 'Technical Writer'),
(9, 'Robert', 'Thomas', '2000-10-16', '2021-10-11', 'Talent Acquisition SPecialist', 'Stakeholder Liaison'),
(10, 'Jessica', 'Moore', '1999-11-04', '2021-01-06', 'Laboratory Technician', 'Quality Assurance (QA) Tester');

insert into Project (Pro_id, Name, Budget, date_start, date_stop) values 
(1, 'Phoenix', 20000, '2023-02-03', '2023-10-03'),
(2, 'Green', 3000, '2023-01-01', '2024-01-01');

insert into Skill (Skill_id, Name, Description) values 
(10, 'Data Analysis', 'The ability to collect, process, and perform statistical analyses on large datasets. 
Data analysts interpret complex data to help organizations make informed business decisions, identifying trends, patterns, and anomalies.'),
(11, 'Project Management','The practice of initiating, planning, executing, controlling, and closing the work of a team to achieve specific 
goals within a specified time. Project managers ensure projects are completed on time, within budget, and to the required quality standards.'),
(12, 'Software Development', 'The process of designing, coding, testing, and maintaining software applications. Software developers write code in 
various programming languages and work on creating applications, systems, and platforms that meet user needs.'),
(13, 'Digital Marketing', 'The promotion of products or brands using electronic media, mainly on the internet. 
Digital marketers use techniques such as SEO, social media marketing, email marketing, and online advertising to reach and engage customers.');

insert into Evaluation (Ev_id, Ev_date, Score) values
(100, '2020-10-16', 27),
(100, '2021-11-10', 29);

insert into Dipartiment (Dip_id, Name, Description) values 
(100, 'R&D', 'Innovates and develops new products and processes,
transforming ideas into market-ready solutions through scientific research and experimentation.'),
(101, 'HR', 'Manages recruitment, employee relations, benefits, and training, ensuring compliance with labor laws and 
fostering a positive work environment.');