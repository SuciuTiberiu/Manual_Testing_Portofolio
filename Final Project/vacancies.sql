create database orangehrm;

use orangehrm;

CREATE TABLE vacancies (
    vacancy_id INT PRIMARY KEY AUTO_INCREMENT,
    vacancy CHAR(55) NOT NULL,
    jobTitle CHAR(55) NOT NULL,
    hiringManager CHAR(55) NOT NULL,
    status CHAR(6) NOT NULL
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

SELECT 
    *
FROM
    vacancies;

SELECT 
    *
FROM
    vacancies
WHERE
    hiringManager = 'Razvan Dumitrescu';

SELECT 
    *
FROM
    vacancies
WHERE
    hiringManager LIKE '%escu';

SELECT 
    COUNT(*)
FROM
    vacancies;

SELECT 
    vacancy
FROM
    vacancies
WHERE
    jobTitle LIKE '%QA%';

SELECT 
    hiringManager, COUNT(*)
FROM
    vacancies
GROUP BY hiringManager
ORDER BY hiringManager ASC;

UPDATE vacancies 
SET 
    jobTitle = 'Sales Representative QA'
WHERE
    hiringManager = 'Alina Man';

SELECT 
    *
FROM
    vacancies
WHERE
    jobTitle LIKE '%QA' OR '%QA%' OR 'QA%'
GROUP BY hiringManager;

DELETE FROM vacancies 
WHERE
    vacancy_id = 4;
