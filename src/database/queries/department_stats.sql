-- Query to get department statistics
SELECT 
    d.name as department_name,
    d.total_staff,
    COUNT(doc.id) as total_doctors,
    COUNT(DISTINCT a.id) as total_appointments
FROM 
    departments d
    LEFT JOIN doctors doc ON d.id = doc.department_id
    LEFT JOIN appointments a ON doc.id = a.doctor_id
GROUP BY 
    d.id, d.name, d.total_staff;