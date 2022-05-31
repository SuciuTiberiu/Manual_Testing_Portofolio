# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com/

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/

**The final project will be split into 3 sections: [Testing section](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/README.md#1-testing-section), [SQL section](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/README.md#2-sql-section) and [API Testing](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/README.md#3-api-testing).**

Tools used: Jira with Zephire for test management, Chrome DevTools, Lightshot and MySQL.

# Functional specifications

The below Story was created in JIRA and describes the functional specifications of the Vacancies module, for which the final project is performed.

![image](https://user-images.githubusercontent.com/43067041/170828947-a207e233-fd8a-41a0-93ec-5e700fa8e4bc.png)

# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the Recruitment\Vacancies module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated
   
   - Project manager - Mihai Popescu
   - Product owner - Ioana Crisan
   - Software developer - Catalin Chitu
   - QA Engineer - Viorel-Tiberiu Suciu

#### 1.1.2 Entry criteria defined

   - functional specifications are defined
   - roles needed for the project are allocated
   - initial project risks were detected and mitigated
   - test environment, test data and test tool are set

#### 1.1.3 Exit criteria defined

   - number of unresolved bugs is insignificant or they have low priority
   - all tests have been executed
   - all resolved bugs have been re-tested and approved by the QA team
   - deadline was reached
   - exploratory regression testing must be performed on the Recruitment module, which includes the Vacancies section

#### 1.1.4 Test scope

* __Tests in scope:__ All the feature of Vacancies module which were defined in software requirement specs need to be tested: functional testing and GUI testing.
* __Tests not in scope:__ Performance testing, integrations of the Recruitment module with other modules, compatibility testing with multiple browsers

#### 1.1.5 Risks detected

* Project risks: lack of experience of the QA team, short deadline of Zephyr Squad trial, unavailability of test environment, disappearing of the section
* Product risks: validation constraints on the fields might be too restrictive to the end-user

#### 1.1.6 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 

## 1.2 Test Monitoring and Control

Various periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken. The following status report was generated after 50% of the test cases were executed, on 18/05/2022:

![Test Execution chart 05 18 2022](https://user-images.githubusercontent.com/43067041/170312322-3db821d3-819c-4fae-8157-2308d5cacf1a.jpg)

## 1.3 Test Analysis

The testing process will be executed based on the above requirements for the Vacancies module. The following test conditions were found:
 * Enter data only for mandatory fields and check that the vacancy is created
 * Enter data for all available fields and check that the vacancy is created
 * Leave mandatory fields empty and check that the vacancy cannot be created
 * Edit data in any available fields and check if the vacancy can be updated.
 * View all vacancies in a list
 * Search for available vacancy
 * Check all validation constraints for the fields
 
## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are: boundary value analysis, equivalence partitioning, use case testing.

**Test cases:**

![test cases](https://user-images.githubusercontent.com/43067041/170319243-e9a0b78a-b08a-420e-b322-48bd20387e46.jpg)


The test cases with steps can be viewed here: [test_cases.pdf](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/Vacancies%20Test%20Steps.pdf)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

 * Testing environment is up and running: [https://opensource-demo.orangehrmlive.com/](https://opensource-demo.orangehrmlive.com/)
 * Access to the testing environment is given: Username : Admin | Password : admin123
 * Cycle summary was created
 * Test cases were added to the cycle summary

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [cycle_summary_execution.pdf](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/Vacancies%20cycle%20summary%20execution.pdf)
* Bugs have been created based on the failed tests. The complete bug reports can be found here: [created_bugs.pdf](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/created_bugs.pdf)
    * [Vacancies] Hiring Manager is missing from the Vacancy posted jobs
    * [Vacancies] The vacancies page is not properly aligned
    * [Vacancies] Job Title and Vacancy are not in line with the below correspondent
    * [Vacancies][Edit] An extra attachment field with an Add button is display
    * [Vacancies][Add] Leaving the Add Job Vacancy page without saving pop-up is missing
    * [Vacancies][Add] Hiring Manager field doesn't accept any names - 1 defect
    * [Vacancies][Add] Save button is active by default - 1 defect
    * [Vacancies][Add] White space can be inserted into number of positions field - 1 defect
    * [Vacancies] Reset button reloads the page - 1 defect
    * [Vacancies][Add] Edit job vacancy page is displayed after after saving a new job vacancy - 1 defect
    * [Vacancies][Add] More than 500 characters can be written in description - 1 defect
    * [Vacancies][Add] 56 characters can be inserted into Vacancy Name field - 1 defect
    * [Vacancies][Edit] Extra step to click an edit button to actual reach the editable page - 1 defect
    

## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability_matrix.csv](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/Traceability%20matrix.xlsx)

![image](https://user-images.githubusercontent.com/43067041/170878935-aafcaccf-eac5-434b-875c-22a4f4837a6d.png)


* Test execution chart was generated, the final report shows a total number of 10 test faild out of 52 tests.
* A number of 52 tests were planed for execution and all of them were executed.
* A number of 13 total issues were found, 8 from executing test cases and 5 while executing test cases, from which 1 is highest, 5 are high, 4 are midium and 3 are low

![Test execution chart](https://user-images.githubusercontent.com/43067041/170879438-60430fd9-8b0b-4ec2-a803-1d92a06c2c79.jpg)

# 2 SQL section

Created a database named 'orangehrm' and a table named 'vacancies' with all the columns needed to search for data per specifications. Performed different queries inside the sql file: [vacancies.sql](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/vacancies.sql). The following queries where perferomed:
 * [select * from vacancies;](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/select%20from.png)

 * [select * from vacancies where hiringManager = 'Razvan Dumitrescu';](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/select%20from%20where%20equals.png)

 * [select * from vacancies where hiringManager like '%escu';](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/select%20from%20where%20like.png)

 * [select count(*) from vacancies;](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/select%20count.png)

 * [select vacancy from vacancies where jobTitle like '%QA%';](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/select%20vacancy%20where%20like.png)

 * [select hiringManager, count(*) from vacancies group by hiringManager order by hiringManager asc;](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/select%20count%20group%20by%20order%20by.png)

 * [update vacancies set jobTitle = 'Sales Representative QA' where hiringManager = 'Alina Man';](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/update%20jobTitle.png)

 * [select * from vacancies where jobTitle like '%QA' OR  '%QA%' OR 'QA%' group by hiringManager;](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/select%20where%20like%20OR%20group%20by.png)

 * [delete from vacancies where vacancy_id = 4](https://github.com/SuciuTiberiu/Manual_Testing_Portofolio/blob/main/Final%20Project/screen_shots/delete.png)

# 3 API Testing

   For API Testing I chose to test Projects sub-section from Time module since there were no documentation for Vacancies section.
   * Postman collection with the dependents API methods was created
   * Authorization token was created for accessing the API
