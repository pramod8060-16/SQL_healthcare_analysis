use etl1;
select * from healthcare.healthcare;

-- 1. Retrieve the names of all patients in the database.
select name from healthcare.healthcare;

-- 2. List the unique medical conditions present in the dataset.
select distinct medical_condition from healthcare.healthcare;

-- 3. Find the total number of doctors in the healthcare system.
select count(doctor) from healthcare.healthcare;

-- 4. Retrieve the details of all female patients.
select * from healthcare.healthcare where gender ='Female';

-- 5. what is the average age of all patients in the database.
select avg(age) from healthcare.healthcare;

-- 6. Identify the patients who have more than one medical condition.
select name from healthcare.healthcare group by name
 having count(medical_condition) >1;
 
 -- 7. List the names of all doctors.
 select doctor from healthcare.healthcare;
 
 -- 8.Identify the most common medical condition among patients.
 select medical_condition from healthcare.healthcare group by medical_condition
 order by count(medical_condition) desc limit 1;
 
 -- 9.Find the patients who are older than 60 years and have diabetes.
 select name from healthcare.healthcare where age>60 and medical_condition ='Diabetes';
 
 -- 10.Calculate the total revenue generated by the healthcare system.
 select sum(billing_amount) from healthcare.healthcare;
 
 -- 11.Find the doctor with the oldest patient.
 select doctor from healthcare.healthcare order by age desc limit 1;
 
 -- 12.Calculate the average duration of medical visits.
 select avg(duration) from healthcare.healthcare;
 
 -- 13.Give the names of patients whose name starts with A.
 select name from healthcare.healthcare where name like 'a%';
 
 -- 14.How many male and female patients are there in the dataset.
 select gender, count(gender) from healthcare.healthcare group by gender;
 
-- 15.how many patients are normal.
 select count(*) from healthcare.healthcare where medical_condition = 'Normal';
 
 -- 16.how many patients are abnormal or Inconclusive. 
 select count(*) from healthcare.healthcare where medical_condition in('abnormal','inconclusive');
 
 -- 17.how many patients of blood group AB+ are there of age above 52.
 select count(*) from healthcare.healthcare where blood_type = 'AB+VE' and age >52;
 
 -- 18. how many patients have paid the bill above 24890.
 select count(*) as patient_bill from healthcare.healthcare where billing_amount >24890;
 
 -- 19. what are the names of the patients having Asthma.
 select name from healthcare.healthcare where medical_condition = 'Asthma';
 
 -- 20. how many patients have cancer.
 select count(name) from healthcare.healthcare where medical_condition = 'Cancer';
 
 -- 21. what are the names and blood groups of the patients admitted to room no. 292.
 select name, blood_type from healthcare.healthcare  where room_number = 292;
 
 -- 22. how many males have Arthritis.
 select count(*),gender from healthcare.healthcare where gender= 'male' and medical_condition = 'Arthritis';
 
 -- 23. How many patients were admitted to Harris and Sons hospital.
 select count(*) from healthcare.healthcare where hospital = 'Harris and Sons';
 
 -- 24. what are the names of the patients whose Insurance Provider is Cigna.
 select name from healthcare.healthcare where insurance_provider = 'Cigna';
 
 -- 25. Name the Medical Condition of the patients whose ages are greater than the average age.
 select medical_condition from healthcare.healthcare where age > 
 (select avg(age) from healthcare.healthcare);