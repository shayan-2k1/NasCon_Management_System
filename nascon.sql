create table category
(
category_id int IDENTITY primary key ,
_name varchar(20),
faculty_mentor_id int,--FK
student_executive_id int,--FK
);

create table [event]
(
event_id int IDENTITY primary key,
_name varchar(20),
participants_count int,
price float,
start_time time,
end_time time,
venue varchar(20),
_date date,
faculty_mentor_id int,--FK(event_mentor)
student_executive_id int,--FK(event head)
);


create table team
(
team_id int IDENTITY primary key,
team_name varchar(20),
order_no int,
deal_id int,--foreign key(can be null if the team take no food deal)
);

create table participant
(
participant_id int IDENTITY primary key,
participant_name varchar(20),
participant_email varchar(20),
participant_cnic varchar(20),
contact varchar(20),
);

--relationship table 
create table event_team
(
event_id int,
team_id int,
ticket_no int IDENTITY,
);
create table team_participant
(
team_id int,
participant_id int,
);
create table foodReg
(
deal_id int IDENTITY primary key,
deal_desc varchar(50),
);
create table company
(
company_id int IDENTITY primary key,
company_name varchar(20),
);
create table sponsor
(
sponsor_id int IDENTITY primary key,
sponsor_name varchar(20),
);
create table sponsor_company_event
(
company_id int,
sponsor_id int,
event_id int,
);
create table Faculty_mentor
(
faculty_mentor_id int IDENTITY(1,1) primary key,
_name varchar(20),
[password] int,
);
create table student_executive
(
student_executive_id int IDENTITY primary key,
_name varchar(20),
roll_no int unique,
batch int,
event_id int,--FK(if a student is assigned a duty in an event)
_role varchar(20),
management_flag int,--if management flag is on then student executive works for a management department
department_id int,
President_flag int,
VicePresident_flag int,
[password] int,
);
create table department
(
department_id int IDENTITY primary key,
department_name varchar(20),
student_executive_id int,--FK(department head)
)
create table [admin](
admin_id varchar(20) primary key,
[password] int,
);
alter table category 
add FOREIGN KEY (faculty_mentor_id) REFERENCES Faculty_mentor(faculty_mentor_id),
FOREIGN KEY (student_executive_id) REFERENCES student_executive(student_executive_id);

alter table [event]
add FOREIGN KEY (faculty_mentor_id) REFERENCES Faculty_mentor(faculty_mentor_id),
FOREIGN KEY (student_executive_id) REFERENCES student_executive(student_executive_id);

alter table team
add FOREIGN KEY (deal_id) REFERENCES foodReg(deal_id);

alter table event_team
add FOREIGN KEY (event_id) REFERENCES [event](event_id),
FOREIGN KEY (team_id) REFERENCES team(team_id);

alter table team_participant
add FOREIGN KEY (team_id) REFERENCES team(team_id),
FOREIGN KEY (participant_id) REFERENCES participant(participant_id);

alter table sponsor_company_event
add FOREIGN KEY (company_id) REFERENCES company(company_id),
FOREIGN KEY (sponsor_id) REFERENCES sponsor(sponsor_id),
FOREIGN KEY (event_id) REFERENCES [event](event_id);

alter table student_executive
add FOREIGN KEY (event_id) REFERENCES [event](event_id);

alter table department
add FOREIGN KEY (student_executive_id) REFERENCES student_executive(student_executive_id);
