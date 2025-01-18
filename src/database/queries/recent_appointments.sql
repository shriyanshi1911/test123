-- Query to get recent appointments with patient and doctor details
SELECT 
    a.id,
    p.name as patient_name,
    d.name as doctor_name,
    d.specialization,
    a.appointment_date,
    a.appointment_time,
    a.status
FROM 
    appointments a
    JOIN patients p ON a.patient_id = p.id
    JOIN doctors d ON a.doctor_id = d.id
WHERE 
    a.appointment_date >= CURDATE()
ORDER BY 
    a.appointment_date ASC, a.appointment_time ASC
LIMIT 10;