/* hrm database creation
*/

create database HRM_dB;
use HRM_dB;

create table Employee (
    Emp_id int primary key,
    Name varchar(100),
    Surname varchar(100),
    BDate date not null,
    EntryDate date not null,
    Dipart_role varchar(50),
    Project_role varchar(50)
)

create table Dipartiment (
    Dip_id int primary key,
    Name varchar(50),
    Description varchar(200)
)

create table Assigned_To (
    Emp_id int,
    Dip_id int,
    foreign key (Emp_id) references Employee(Emp_id),
    foreign key (Dip_id) references Dipartiment(Dip_id)
)

create table Skill (
    Skill_id int primary key,
    Name varchar(50),
    Description varchar(200)
)

create table Able_To (
    Skill_id int,
    Emp_id int,
    foreign key (Skill_id) references Skill(Skill_id),
    foreign key (Emp_id) references Employee(Emp_id)
)

create table Project (
    Pro_id int primary key,
    Name varchar(50) unique,
    Budget int,
    date_start date not null,
    date_stop date
)

create table Require (
    Pro_id int,
    Skill_id int,
    foreign key (Pro_id) references Project(Pro_id),
    foreign key (Skill_id) references Skill(Skill_id)
)

create table Working_On (
    Emp_id int,
    Pro_id int,
    foreign key (Emp_id) references Employee(Emp_id),
    foreign key (Pro_id) references Project(Pro_id)
)

create table Evaluation (
    Ev_id int primary key,
    Ev_date date primary key,
    Score int not null
)

create table Valued (
    Ev_id int,
    Emp_id int,
    Ev_date date,
    foreign key (Ev_id) references Evaluation(Ev_id),
    foreign key (Emp_id) references Employee(Emp_id),
    foreign key (Ev_date) references Evaluation(Ev_date)
)

