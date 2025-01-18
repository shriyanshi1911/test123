-- Query to get all doctors with their departments
SELECT 
    d.id,
    d.name,
    d.specialization,
    d.contact_number,
    d.email,
    d.status,
    dep.name as department_name
FROM 
    doctors d
    JOIN departments dep ON d.department_id = dep.id
ORDER BY 
    d.name;