SELECT
    pf.id AS process_filming_id,
    f.title AS filming_title,
    r.title AS role_title,
    a.name AS actor_name,
    a.surname AS actor_surname
FROM
    process_filmings pf
JOIN
    roles r ON pf.role_id = r.id
JOIN
    actors a ON r.actor_id = a.id
JOIN
    filmings f ON pf.filming_id = f.id
WHERE pf.id = 2;


SELECT
    f.id AS filming_id,
    f.title AS filming_title,
    f.description AS filming_description,
    f.date AS filming_date,
    f.time AS filming_time,
    d.name AS director_name,
    d.surname AS director_surname
FROM
    filmings f
JOIN
    directors d ON f.director_id = d.id
WHERE
    f.date >= '2023-05-01' 
ORDER BY
    f.date ASC, f.time ASC; 


SELECT
    d.id AS decor_id,
    d.title AS decor_title,
    d.description AS decor_description,
    d.price AS decor_price,
    l.title AS location_title,
    l.adress AS location_address,
    f.title AS filming_title,
    f.date AS filming_date
FROM decors d
JOIN locations l ON d.location_id = l.id
JOIN filmings f ON d.filming_id = f.id
WHERE f.date >= '2023-01-01'
ORDER BY f.date ASC;  



SELECT
    r.id AS role_id,
    r.title AS role_title,
    COUNT(pf.id) AS number_of_films
FROM roles r
JOIN process_filmings pf ON r.id = pf.role_id
GROUP BY r.id, r.title
HAVING COUNT(pf.id) >= 3
ORDER BY number_of_films DESC;



SELECT
    f.id AS filming_id,
    f.title AS filming_title,
    SUM(fi.price) AS total_budget,
    p.name AS producer_name,
    p.surname AS producer_surname
FROM filmings f
LEFT JOIN decors d ON f.id = d.filming_id
LEFT JOIN transportings t ON f.id = t.location_id
LEFT JOIN process_filmings pf ON f.id = pf.filming_id
LEFT JOIN finances fi ON f.id = fi.filming_id
LEFT JOIN producers p ON fi.producer_id = p.id
GROUP BY f.id, f.title, p.name, p.surname
ORDER BY total_budget ASC;


SELECT f.id AS filming_id, f.title AS filming_title, l.title AS location_title, 
			l.description AS location_description
FROM filmings f
LEFT JOIN decors d ON f.id = d.filming_id
LEFT JOIN transportings t ON f.id = t.location_id
LEFT JOIN process_filmings pf ON f.id = pf.filming_id
LEFT JOIN locations l ON t.location_id = l.id
GROUP BY f.id, f.title, l.title, l.description;

SELECT f.id AS filming_id, f.title AS filming_title, t.title AS transport_title, 
			t.description AS transport_description, t.price AS transport_price
FROM filmings f
JOIN transportings tr ON f.id = tr.location_id
JOIN transports t ON tr.transport_id = t.id
WHERE t.price > 1000; 


SELECT e.id AS employee_id, e.name AS employee_name, e.surname AS employee_surname, 
			a.id AS actor_id, a.name AS actor_name, a.surname AS actor_surname
FROM make_up_actors mu
JOIN employees e ON mu.employee_id = e.id
JOIN actors a ON mu.actor_id = a.id;


INSERT INTO actors (name, surname, date_birth, sex, phone_number) VALUES
('Іван', 'Іванов', '1990-01-15', 'Чоловіча', '1234567890'),
('Марія', 'Петрова', '1985-05-20', 'Жіноча', '9876543210'),
('Петро', 'Сидоров', '1988-11-08', 'Чоловіча', '5551122334');

INSERT INTO employees (name, surname, num_of_hours, phone_number) VALUES
('Ольга', 'Коваленко', 40, '1112233445'),
('Андрій', 'Лисенко', 30, '6789012345'),
('Тетяна', 'Савченко', 35, '4567890123');

INSERT INTO make_up_actors (actor_id, employee_id) VALUES
(1, 1),
(2, 2),
(3, 3);


INSERT INTO process_filmings (filming_id, role_id) VALUES
(1, 1), 
(1, 2), 
(1, 3); 



UPDATE decors
SET price = 1500
WHERE id = 2;

UPDATE filmings
SET date = '2023-01-01' 
WHERE title = 'Drama film'; 


UPDATE transportings
SET transport_id = 2 
WHERE location_id = 1;

DELETE reports
FROM reports
LEFT JOIN filmings ON reports.filming_id = filmings.id
WHERE filmings.title IS NULL;


DELETE roles
FROM roles
LEFT JOIN process_filmings ON roles.id = process_filmings.role_id
WHERE process_filmings.role_id IS NULL;
















