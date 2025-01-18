-- Query to get all patients with their latest appointment
SELECT 
    p.*,
    MAX(a.appointment_date) as last_visit,
    COUNT(a.id) as total_visits
FROM 
    patients p
    LEFT JOIN appointments a ON p.id = a.patient_id
GROUP BY 
    p.id
ORDER BY 
    p.name;