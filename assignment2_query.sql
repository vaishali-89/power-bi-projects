create database emp;
use emp;

create table if not exists employee_data
(
EmployeeID int primary key,
Name varchar(30),
Department varchar(30),
Role varchar(30),
HireDate date
);

create table if not exists performance_metrics
(
metric_id int primary key,
EmployeeID int references employee_data(EmployeeID),
ProjectCompletionRate int,
TotalTasksCompleted int,
AverageTrainingHours int,
EmployeeSatisfactionStore float,
PerformanceReviewScore date
);

create table if not exists Training
(
TrainingID int primary key,
EmployeeID int references employee_data(EmployeeID),
TrainingProgram varchar(30),
TrainingHours int,
CompletionDate date
);

create table if not exists Feedback
(
FeedbackID int primary key,
EmployeeID int references employee_data(EmployeeID),
FeedbackDate date,
FeedbackType varchar(10),
Comments varchar(50)
);




