USE cdg_jfs_hyd_059;

CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    manager_name VARCHAR(100),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    created_at VARCHAR(10)
); 

DESCRIBE warehouses;

SHOW CREATE TABLE warehouses;

INSERT INTO 
	warehouses(warehouse_id,warehouse_code, warehouse_name, city, state,capacity_units,occupied_units,manager_name,  temperature_controlled,  operational_status, created_at  ) 
VALUES 
	(1, 'WH-BLR-01','Bengaluru Central','Bengaluru','Karnataka',10000,6400,'Ajay Nair',0,'ACTIVE', '2026-11-18');
    
INSERT INTO 
	warehouses(warehouse_id,warehouse_code, warehouse_name, city, state,capacity_units,occupied_units,manager_name,  temperature_controlled,  operational_status, created_at  ) 
VALUES 
	(2, 'WH-HYD-02', 'Hyderabad North', 'Hyderabad', 'Telangana',8000, 7900, 'Sana Reddy', 1, 'ACTIVE', '2026-11-18'),
    (3, 'WH-MUM-03', 'Mumbai Port Store', 'Mumbai', 'Maharashtra',15000, 9000, 'Rohit Shah', 0, 'MAINTENANCE', '2026-11-18');
    
INSERT INTO 
	warehouses(warehouse_id,warehouse_code, warehouse_name, city, state,capacity_units,occupied_units,manager_name,  temperature_controlled,  operational_status, created_at  ) 
VALUES 
	(4, 'WH-KOC-04', 'Kochi Cold Hub', 'Kochi', 'Kerala',6000, 3200, 'Meera Varma', 1, 'ACTIVE', '2026-11-18'),
    (5, 'WH-OLD-05', 'Training Closed Store', 'Pune', 'Maharashtra',2000, 0, 'Test Manager', 0, 'CLOSED', '2026-11-18');
    
INSERT INTO 
	warehouses(warehouse_id,warehouse_code, warehouse_name, city, state,capacity_units,occupied_units,manager_name,  temperature_controlled,  operational_status, created_at  ) 
VALUES 
	(6, 'WH-CHN-06', 'Chennai South Hub', 'Chennai', 'Tamil Nadu',12000, 7500, 'Vijay Kumar', 1, 'ACTIVE', '2026-11-18');
    

    
UPDATE warehouses 
SET 
    occupied_units = occupied_units + 500
WHERE
    warehouse_code = 'WH-BLR-01';

UPDATE warehouses 
SET 
    occupied_units = occupied_units - 1000
WHERE
    warehouse_code = 'WH-HYD-02';
    
UPDATE warehouses 
SET 
    operational_status = 'ACTIVE'
WHERE
    warehouse_code = 'WH-MUM-03';
    
UPDATE warehouses 
SET 
    capacity_units = capacity_units + 1000
WHERE
    temperature_controlled = 1;
    
UPDATE warehouses
SET 
    occupied_units = 12000
WHERE 
    warehouse_code = 'WH-BLR-01';

SELECT 
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    manager_name,
    temperature_controlled,
    operational_status,
    created_at
FROM
    warehouses
Where 
    warehouse_code = 'WH-BLR-01';
    

SELECT 
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    manager_name,
    temperature_controlled,
    operational_status,
    created_at
FROM
    warehouses
WHERE 
    warehouse_code = 'WH-OLD-05'
AND
	operational_status = 'CLOSED';

DELETE FROM warehouses 
WHERE
    warehouse_code = 'WH-OLD-05'
    AND operational_status = 'CLOSED';
INSERT INTO 
	warehouses(warehouse_id,warehouse_code, warehouse_name, city, state,capacity_units,occupied_units,manager_name,  temperature_controlled,  operational_status, created_at  ) 
VALUES 
	(7, 'WH-TMP-99', 'Temporary Empty Warehouse', 'Hyderabad','Telangana', 5000, 0, 'Temporary Manager', 0,'ACTIVE', '2026-11-18');

DELETE FROM warehouses 
WHERE
    warehouse_code = 'WH-TMP-99';
    
SELECT 
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    manager_name,
    temperature_controlled,
    operational_status,
    created_at
FROM
    warehouses
WHERE 
   operational_status = 'ACTIVE'
AND 
    occupied_units < capacity_units / 2;
    
DELETE FROM warehouses 
WHERE
    operational_status = 'ACTIVE'
    AND occupied_units < capacity_units / 2;
    
SELECT
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    manager_name,
    temperature_controlled,
    operational_status,
    created_at
FROM warehouses;

