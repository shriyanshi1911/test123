-- Query to get all staff members with their departments
SELECT 
    s.*,
    d.name as department_name
FROM 
    staff s
    JOIN departments d ON s.department_id = d.id
ORDER BY 
    s.name;