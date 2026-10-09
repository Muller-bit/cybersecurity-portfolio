-- Task 4: Identify employee workstations in the South building
-- Specific workstation
SELECT * 
FROM employees 
WHERE office = 'South-109';

-- All workstations starting with 'South'
SELECT * 
FROM employees WHERE office LIKE 'South%';