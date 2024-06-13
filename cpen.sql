CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	date_of_birth DATE,
	email VARCHAR(100),
	phone VARCHAR(20)
);

CREATE TABLE fees_payments(
	payment_id SERIAL PRIMARY KEY,
	student_id INT REFERENCES students(student_id),
	amount_paid DECIMAL(10, 2),
	payment_date DATE,
	payment_method VARCHAR(50)
);

CREATE TABLE courses(
	course_id VARCHAR(20) PRIMARY KEY,
	course_name VARCHAR(50),
	credit_hours INT,
	fee DECIMAL(10, 2)
);

CREATE TABLE lectures(
	lecture_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE course_lecturer(
    course_lecturer_id SERIAL PRIMARY KEY,
    course_id VARCHAR(20) REFERENCES courses(course_id),
    lecture_id SERIAL REFERENCES lectures(lecture_id)
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id VARCHAR(20) REFERENCES courses(course_id),
    enrollment_date DATE
);

CREATE TABLE tas(
	ta_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	phone_number VARCHAR(20)
);

CREATE TABLE lectures_tas(
    id SERIAL PRIMARY KEY,
    lecture_id SERIAL REFERENCES lectures(lecture_id),
    ta_id INT REFERENCES tas(ta_id)
);

INSERT INTO students (first_name, last_name, date_of_birth, email, phone) VALUES
    ('John', 'Doe', '2000-01-01', 'john.doe@example.com', '0548519396'),
    ('Jane', 'Smith', '2001-02-02', 'jane.smith@example.com', '0268467846'),
	('Iddrisu','Tahiru','2004-01-05','iddrisutahiru@gmail.com','0546738623'),
	('Emmanuel','Edusei','2004-11-03','emmanueledusei@gmail.com','0556763199'),
	('Glenn','Money','2004-02-04','glennmoney@gmail.com','0545684522'),
	('John', 'Doe', '1990-05-15', 'john.doe@gmail.com', '1234567890'),
    ('Alice', 'Smith', '1985-09-20', 'alice.smith@email.com', '9876543210'),
    ('Michael', 'Johnson', '1978-03-10', 'michael.j@email.org', '4567890123'),
    ('Emily', 'Brown', '1995-11-25', 'emilyb@emailprovider.com', '8901234567'),
    ('David', 'Lee', '1982-07-08', 'david.lee@example.net', '2345678901'),
    ('Sarah', 'Taylor', '1989-12-30', 'sarah.t@example.com', '6789012345'),
    ('James', 'Wilson', '1972-06-18', 'james.w@example.org', '0123456789'),
    ('Jessica', 'Garcia', '1998-04-03', 'jessica.g@example.net', '3456789012');

INSERT INTO fees_payments (student_id, amount_paid, payment_date, payment_method) VALUES
     (1, 500.00, '2023-01-15', 'Credit Card'),
     (2, 300.00, '2023-02-10', 'Cash'),
	    (3, 250.00, '2023-02-28', 'Cash'),
     (4, 750.00, '2023-04-10', 'Visa'),
     (5, 350.00, '2023-05-22', 'Mobile Money'),
     (6, 600.00, '2023-07-05', 'Mobile Money'),
     (7, 800.00, '2023-08-17', 'Mobile Money'),
     (8, 400.00, '2023-09-30', 'Cash'),
     (9, 550.00, '2023-11-12', 'Vodafone Cash'),
     (10, 700.00, '2023-12-25', 'Google Pay');

INSERT INTO courses (course_id, course_name, credit_hours, fee) VALUES
    ('CpEn101', 'Database Systems', 3, 10),
    ('CpEn203', 'Software Engineering', 4, 20),
    ('CpEn204', 'Algorithms', 3, 30),
    ('CpEn205', 'Computer Architecture', 4, 10),
    ('CpEn206', 'Network Security', 5, 10),
    ('CpEn207', 'Artificial Intelligence', 4, 10);

INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
    (1, 'CpEn101', '2023-03-01'),
    (2, 'CpEn207', '2023-03-02'),
	(3, 'CpEn101','2023-03-01'),
	(4, 'CpEn204', '2023-03-01'),
	(5, 'CpEn203', '2023-03-01'),
	(6, 'CpEn203', '2023-03-01'),
	(7, 'CpEn205', '2023-03-01'),
	(8, 'CpEn101', '2023-03-01'),
	(9, 'CpEn206', '2023-03-01'),
	(10, 'CpEn101', '2023-03-01'),
	(11, 'CpEn207', '2023-03-01');

INSERT INTO lectures (first_name, last_name, email, phone) VALUES
    ('Dr. Alan', 'Turing', 'alan.turing@example.com', '0548932032'),
    ('Dr. Ada', 'Lovelace', 'ada.lovelace@example.com', '0547689321'),
    ('Prof. Grace', 'Hopper', 'grace.hopper@example.com', '0546213789'),
    ('Dr. John', 'von Neumann', 'john.vonneumann@example.com', '0549827345'),
    ('Prof. Margaret', 'Hamilton', 'margaret.hamilton@example.com', '0543789012'),
    ('Dr. Charles', 'Babbage', 'charles.babbage@example.com', '0542345678'),
    ('Prof. Katherine', 'Johnson', 'katherine.johnson@example.com', '0548901234'),
    ('Dr. Claude', 'Shannon', 'claude.shannon@example.com', '0546578901'),
    ('Prof. Alan', 'Kay', 'alan.kay@example.com', '0541234567');

INSERT INTO course_lecturer (course_id, lecture_id) VALUES
    ('CpEn101', 1),
    ('CpEn203', 2),
    ('CpEn204', 3),
    ('CpEn205', 4),
    ('CpEn206', 5),
    ('CpEn207', 6),
    ('CpEn101', 7),
    ('CpEn203', 8),
    ('CpEn204', 9);

INSERT INTO tas (first_name, last_name, email, phone_number) VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com', '0541234567'),
    ('Bob', 'Williams', 'bob.williams@example.com', '0542345678'),
    ('Charlie', 'Brown', 'charlie.brown@example.com', '0543456789'),
    ('David', 'Smith', 'david.smith@example.com', '0544567890'),
    ('Eve', 'Davis', 'eve.davis@example.com', '0545678901'),
    ('Fiona', 'Garcia', 'fiona.garcia@example.com', '0546789012'),
    ('George', 'Martinez', 'george.martinez@example.com', '0547890123'),
    ('Hannah', 'Rodriguez', 'hannah.rodriguez@example.com', '0548901234'),
    ('Ivy', 'Lopez', 'ivy.lopez@example.com', '0549012345'),
    ('Jack', 'Gonzalez', 'jack.gonzalez@example.com', '0540123456');

INSERT INTO lectures_tas (lecture_id, ta_id) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5);

-- Function to calculate outstanding fees
CREATE OR REPLACE FUNCTION calculate_outstanding_fees()
RETURNS JSON AS $$
DECLARE
    result JSON;
BEGIN
    SELECT json_agg(
        json_build_object(
            'student_id', s.student_id,
            'first_name', s.first_name,
            'last_name', s.last_name,
            'total_paid', COALESCE(ps.total_paid, 0),
            'outstanding_fees', COALESCE(tf.total_fee, 0) - COALESCE(ps.total_paid, 0)
        )
    )
    INTO result
    FROM students s
    LEFT JOIN (
        SELECT e.student_id, SUM(c.fee) AS total_fee
        FROM enrollments e
        JOIN courses c ON e.course_id = c.course_id
        GROUP BY e.student_id
    ) tf ON s.student_id = tf.student_id
    LEFT JOIN (
        SELECT fp.student_id, SUM(fp.amount_paid) AS total_paid
        FROM fees_payments fp
        GROUP BY fp.student_id
    ) ps ON s.student_id = ps.student_id
    GROUP BY s.student_id;

    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Call the function
SELECT calculate_outstanding_fees();

