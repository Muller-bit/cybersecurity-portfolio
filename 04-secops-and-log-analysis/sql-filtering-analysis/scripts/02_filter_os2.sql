-- Task 2: Retrieve machines running OS 2 for patching
SELECT device_id, operating_system 
FROM machines 
WHERE operating_system = 'OS 2';