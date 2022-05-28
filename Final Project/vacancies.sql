create database orangehrm;

use orangehrm;

create table vacancies(
	vacancy_id int primary key auto_increment,
    vacancy char(55) not null,
    jobTitle char(55) not null,
    hiringManager char(55) not null,
    status char(6) not null
    );
    
insert into vacancies (vacancy, jobTitle, hiringManager, status) values
('Assosiate IT Manager', 'IT Manager', 'Mihai Ionescu', 'active'),
('Senior QA Lead', 'QA Lead', 'Razvan Dumitrescu', 'active'),
('Sales Representative', 'Sales Representative', 'Alina Man', 'active'),
('Junior QA', 'Junior QA', 'Razvan Dumitrescu', 'active'),
('Junior Account Assistant', 'Account Assistant', 'Mihai Ionescu', 'active'),
('Senior Support Specialist', 'Support Specialist', 'Razvan Dumitrescu', 'active'),
('Software Engineer', 'Software Engineer', 'Razvan Dumitrescu', 'active'),
('Senior QA', 'Senior QA', 'Razvan Dumitrescu', 'active');

select * from vacancies;

select * from vacancies where hiringManager = 'Razvan Dumitrescu';

select * from vacancies where hiringManager like '%escu';

select count(*) from vacancies;

select vacancy from vacancies where jobTitle like '%QA%';

select hiringManager, count(*) from vacancies group by hiringManager order by hiringManager asc;

update vacancies 
set jobTitle = 'Sales Representative QA' 
where hiringManager = 'Alina Man';

select * from vacancies where jobTitle like '%QA' OR  '%QA%' OR 'QA%' group by hiringManager;

delete from vacancies where vacancy_id = 4;
