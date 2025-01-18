-- Sample Data for Hospital Management System

USE hospital_management;

-- Insert Departments
INSERT INTO departments (name, total_staff) VALUES
('Cardiology', 15),
('Neurology', 12),
('Pediatrics', 20),
('Orthopedics', 10),
('Emergency', 25);

-- Insert Doctors
INSERT INTO doctors (name, department_id, specialization, contact_number, email) VALUES
('Dr. John Smith', 1, 'Cardiologist', '123-456-7890', 'john.smith@hospital.com'),
('Dr. Sarah Johnson', 2, 'Neurologist', '123-456-7891', 'sarah.j@hospital.com'),
('Dr. Michael Brown', 3, 'Pediatrician', '123-456-7892', 'michael.b@hospital.com'),
('Dr. Emily Davis', 4, 'Orthopedic Surgeon', '123-456-7893', 'emily.d@hospital.com'),
('Dr. James Wilson', 5, 'Emergency Medicine', '123-456-7894', 'james.w@hospital.com');

-- Insert Patients
INSERT INTO patients (name, age, gender, contact_number, email, address) VALUES
('Alice Thompson', 45, 'female', '987-654-3210', 'alice.t@email.com', '123 Main St'),
('Bob Anderson', 32, 'male', '987-654-3211', 'bob.a@email.com', '456 Oak Ave'),
('Carol White', 28, 'female', '987-654-3212', 'carol.w@email.com', '789 Pine Rd'),
('David Miller', 50, 'male', '987-654-3213', 'david.m@email.com', '321 Elm St'),
('Eva Garcia', 35, 'female', '987-654-3214', 'eva.g@email.com', '654 Maple Dr');

-- Insert Appointments
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status, notes) VALUES
(1, 1, CURDATE(), '10:00:00', 'scheduled', 'Regular checkup'),
(2, 3, CURDATE(), '11:30:00', 'scheduled', 'Follow-up appointment'),
(3, 2, CURDATE(), '14:00:00', 'scheduled', 'Initial consultation'),
(4, 4, CURDATE(), '15:30:00', 'scheduled', 'Post-surgery checkup'),
(5, 5, CURDATE(), '16:45:00', 'scheduled', 'Emergency consultation');

-- Insert Staff
INSERT INTO staff (name, department_id, role, contact_number, email) VALUES
('Mary Johnson', 1, 'Nurse', '555-123-4567', 'mary.j@hospital.com'),
('Peter Parker', 2, 'Technician', '555-123-4568', 'peter.p@hospital.com'),
('Susan Storm', 3, 'Nurse', '555-123-4569', 'susan.s@hospital.com'),
('Tony Stark', 4, 'Administrator', '555-123-4570', 'tony.s@hospital.com'),
('Bruce Banner', 5, 'Nurse', '555-123-4571', 'bruce.b@hospital.com');