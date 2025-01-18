-- Query for analytics dashboard
SELECT 
    COUNT(DISTINCT p.id) as total_patients,
    COUNT(DISTINCT d.id) as total_doctors,
    COUNT(DISTINCT a.id) as total_appointments,
    COUNT(DISTINCT s.id) as total_staff,
    COUNT(DISTINCT dep.id) as total_departments,
    (SELECT COUNT(*) FROM appointments WHERE status = 'scheduled' AND appointment_date = CURDATE()) as today_appointments
FROM 
    patients p,
    doctors d,
    appointments a,
    staff s,
    departments dep;