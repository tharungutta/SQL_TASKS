USE cdg_jfs_hyd_059;

CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate INT,
    employment_type VARCHAR(20),
    is_active INT,
    joined_on VARCHAR(10),
    created_at VARCHAR(10)
);

DESCRIBE instructors;
SHOW CREATE TABLE instructors;

INSERT INTO 
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience,  hourly_rate, employment_type, is_active, joined_on, created_at) 
VALUES
    (1, 'INS-JV-001', 'Kavya', 'Menon', 'kavya.menon@example.test','Java', 8, 1500, 'FULL_TIME',1, '2021-06-14', '2026-11-18');

INSERT INTO 
     instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type,is_active, joined_on, created_at)
VALUES
     (2, 'INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@example.test', 'Databases', 12, 1800, 'CONTRACT', 1, '2019-02-01', '2026-11-18'),
     (3, 'INS-WB-003', 'Farah', 'Ali', 'farah.ali@example.test', 'Web Development', 5, 1200, 'PART_TIME', 1, '2023-08-21', '2026-11-18');
     
INSERT INTO 
	 instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type,is_active, joined_on, created_at)
VALUES
     (4, 'INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@example.test','Software Testing', 7, 1350, 'PART_TIME', 1, '2022-01-10', '2026-11-18'),
     (5, 'INS-OLD-005', 'Leela', 'Shah', 'leela.shah@example.test','Mainframe Systems', 25, 2000, 'CONTRACT', 0, '2010-05-17', '2026-11-18');
     
 INSERT INTO 
	instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on, created_at)
VALUES
    (6, 'INS-JS-006', 'Arjun', 'Reddy', 'arjun.reddy@example.test','JavaScript', 6, 1400, 'FULL_TIME', 1, '2024-03-15', '2026-11-18');
    
 UPDATE instructors 
SET 
    hourly_rate = 1500
WHERE
    instructor_code = 'INS-QA-004';
    
UPDATE instructors 
SET 
    hourly_rate = ROUND(hourly_rate * 1.08)
WHERE
    employment_type = 'CONTRACT'
        AND is_active = 1;
        
UPDATE instructors 
SET 
    specialization = 'Full-Stack Web Development'
WHERE
    instructor_code = 'INS-WB-003';
    
UPDATE instructors 
SET 
    years_experience = years_experience + 1
WHERE
    is_active = 1;
     
SELECT
    instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at
FROM 
    instructors
WHERE
    years_experience>50;

SELECT
    instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at
FROM instructors;

UPDATE instructors
SET 
    is_active = 0
WHERE 
    instructor_code = 'INS-OLD-005'
AND 
     is_active <> 0;
     
SELECT ROW_COUNT();

DELETE FROM 
   instructors
WHERE 
    instructor_code = 'INS-OLD-005'
AND 
     is_active = 0;
    

INSERT INTO 
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience,  hourly_rate, employment_type, is_active, joined_on, created_at) 
VALUES
    (7, 'INS-TEMP-99', 'Temporary', 'Trainer','temporary.trainer@example.test', 'Java', 3, 1000,'PART_TIME', 1, '2025-01-10', '2026-11-18');
    
DELETE FROM instructors
WHERE instructor_code = 'INS-TEMP-99';

SELECT
    instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at
FROM 
   instructors
WHERE 
   employment_type = 'PART_TIME'
AND 
    is_active = 1
AND years_experience < 6;

DELETE FROM 
    instructors
WHERE 
     employment_type = 'PART_TIME'
AND 
     is_active = 1
AND 
     years_experience < 6;
     
	
SELECT
    instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at
FROM instructors;