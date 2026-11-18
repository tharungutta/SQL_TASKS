USE cdg_jfs_hyd_059;

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee INT,
    delivery_mode VARCHAR(20),
    course_status VARCHAR(20),
    created_at VARCHAR(10)
); 

DESCRIBE courses;
SHOW CREATE TABLE courses;

INSERT INTO 
     courses(course_id, course_code, course_title, category,duration_hours, fee, delivery_mode, course_status, created_at) 
VALUES 
     (1, 'CRS-JAVA-101','Java Fundamentals', 'Programming', 40, 6000, 'CLASSROOM', 'ACTIVE', '2026-11-18');
     
INSERT INTO 
     courses(course_id, course_code, course_title, category,duration_hours, fee, delivery_mode, course_status, created_at) 
VALUES 
     ( 2,'CRS-SQL-102','MySQL Essentials', 'Database', 32, 4500, 'ONLINE', 'ACTIVE', '2026-11-18'),
	 (3, 'CRS-WEB-103','Responsive Web Design', 'Web Development', 28, 0, 'ONLINE', 'ACTIVE', '2026-11-18');
     
INSERT INTO 
     courses(course_id, course_code, course_title, category,duration_hours, fee, delivery_mode, course_status, created_at) 
VALUES 
     (4, 'CRS-SQL-104','Software Testing Basics', 'Testing', 24, 3500, 'HYBRID', 'ACTIVE','2026-11-18'),
	 (5, 'CRS-OLD-105','Legacy Systems Overview', 'Technology', 12, 2000, 'ONLINE', 'ARCHIVED', '2026-11-18'); 
     
INSERT INTO 
     courses(course_id, course_code, course_title, category,duration_hours, fee, delivery_mode, course_status, created_at) 
VALUES 
     ( 6,'CRS-JAVA-106','Python Fundamentals', 'Programming', 25, 5000, 'CLASSROOM', 'ACTIVE','2026-11-18');

UPDATE courses 
SET 
    fee = 6500
WHERE
    course_code = 'CRS-JAVA-101';
    
UPDATE courses 
SET 
    fee = ROUND(fee * 1.10)
WHERE
    course_status = 'ACTIVE';
    
UPDATE courses 
SET 
    course_status = 'ACTIVE',
    fee = 2500
WHERE
    course_code = 'CRS-WEB-103';
    
UPDATE courses 
SET 
    duration_hours = duration_hours + 4
WHERE
    category = 'Testing';
    
UPDATE courses 
SET 
    duration_hours = 0
WHERE
    course_code = 'CRS-JAVA-106';
    
    
    
SELECT 
    course_id,
    course_code,
    course_title,
    category,
    duration_hours,
    fee,
    delivery_mode,
    course_status,
    created_at
FROM
    courses;
    
    DELETE FROM courses 
WHERE
    course_code = 'CRS-OLD-105';
    
INSERT INTO  
    courses(course_code, course_title, category,duration_hours, fee, delivery_mode, course_status) 
VALUES 
    ('CRS-TEMP-999','Temp Fundamentals', 'Programming', 40, 6000, 'CLASSROOM', 'ACTIVE');
    
DELETE FROM courses 
WHERE
    course_code = 'CRS-TEMP-999';
    
    
    SELECT 
    course_id,
    course_code,
    course_title,
    category,
    duration_hours,
    fee,
    delivery_mode,
    course_status,
    created_at
FROM
    courses
WHERE
	category = 'Testing'AND fee <5000;
    
DELETE FROM courses 
WHERE
    category = 'Testing' AND fee < 5000;
    
SELECT 
    course_id,
    course_code,
    course_title,
    category,
    duration_hours,
    fee,
    delivery_mode,
    course_status,
    created_at
FROM
    courses;
    
    