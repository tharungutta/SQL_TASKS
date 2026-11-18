USE cdg_jfs_hyd_059;                

CREATE TABLE events (
    event_id INT,
    event_code VARCHAR(15),
    event_name VARCHAR(150),
    venue VARCHAR(150),
    city VARCHAR(80),
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    capacity INT,
    registration_fee INT,
    event_type VARCHAR(20),
    event_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE events;
SHOW CREATE TABLE events;

INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-JAVA-01','Java Developer Meetup','Tech Hall','Bengaluru','2026-10-10','2026-10-10',250,500,'OFFLINE','OPEN');
INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-CLOUD-02','Cloud Fundamentals Webinar','Online Platform','Online','2026-10-12','2026-10-12',1000,0,'ONLINE','OPEN'),
    ( 'EVT-DATA-03','Data Engineering Summit','Convention Centre','Hyderabad','2026-11-05','2026-11-06',600,2500,'HYBRID','PLANNED');

INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-UI-04','UI Design Workshop','Creative Hub','Chennai','2026-10-20','2026-10-20',80,1200,'OFFLINE','PLANNED');
INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-OLD-05','Cancelled Training Event','Test Venue','Pune','2026-10-01','2026-10-01',30,100,'OFFLINE','CANCELLED');



UPDATE events 
SET 
    capacity = capacity + 750
WHERE
    event_name = 'Data Engineering Summit';
UPDATE events 
SET 
    event_status = 'OPEN'
WHERE
    event_code = 'EVT-UI-04';
UPDATE events 
SET 
    registration_fee = registration_fee + (registration_fee * 0.10)
WHERE
    event_type = 'OFFLINE';
 UPDATE events 
SET 
    start_date = '2026-10-13',
    end_date = '2026-10-13'
WHERE
    event_code = 'EVT-CLOUD-02'; 
UPDATE events 
SET 
    end_date = '2026-11-05'
WHERE
    event_code = 'EVT-DATA-03';
    
    
    
DELETE FROM events 
WHERE
    event_code = 'EVT-OLD-05';
INSERT INTO 
    events(event_code) 
VALUES
     ('EVT-TEMP-99');
DELETE FROM events 
WHERE
    event_code = 'EVT-TEMP-99';
DELETE FROM events 
WHERE
    registration_fee = 0
    AND event_TYPE = 'ONLINE'
    AND event_status = 'OPEN';

SELECT 
    event_id,
    event_code,
    event_name,
    venue,
    city,
    start_date,
    end_date,
    capacity,
    registration_fee,
    event_type,
    event_status,
    created_at
FROM
    events;