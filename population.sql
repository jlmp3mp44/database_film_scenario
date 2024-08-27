
INSERT INTO actors (name, surname, date_birth, sex, phone_number) VALUES
('John', 'Doe', '1990-01-01', 'Male', '123-456-7890'),
('Jane', 'Doe', '1995-02-15', 'Female', '987-654-3210'),
('Bob', 'Smith', '1985-05-20', 'Male', '555-123-4567');


INSERT INTO roles (title, actor_id) VALUES
('Lead Actor', 1),
('Supporting Actor', 2),
('Extra', 3);


INSERT INTO employees (name, surname, num_of_hours, phone_number) VALUES
('Alice', 'Johnson', 40, '111-222-3333'),
('David', 'Williams', 35, '444-555-6666'),
('Eva', 'Brown', 30, '777-888-9999');


INSERT INTO make_up_actors (actor_id, employee_id) VALUES
(1, 1),
(2, 2),
(3, 3);


INSERT INTO locations (title, description, square, adress) VALUES
('Studio A', 'Large film studio', 1000, '123 Main St'),
('Outdoor Set', 'Open-air filming location', 500, '456 Oak St');


INSERT INTO location_settings (location_id, employee_id) VALUES
(1, 1),
(2, 2);


INSERT INTO producers (name, surname, phone_number) VALUES
('Michael', 'White', '111-111-1111'),
('Emily', 'Green', '222-222-2222');


INSERT INTO directors (name, surname, date_of_birth, phone_number) VALUES
('Christopher', 'Black', '1970-12-05', '333-333-3333'),
('Sophia', 'Smith', '1982-08-20', '444-444-4444');


INSERT INTO filmings (title, description, date, time, director_id) VALUES
('Action Movie', 'Exciting action film', '2023-03-15', '14:00:00', 1),
('Drama Film', 'Compelling drama', '2023-04-20', '16:30:00', 2);


INSERT INTO reports (title, description, date, filming_id) VALUES
('Action Movie Report', 'Report for action film', '2023-03-20', 1),
('Drama Film Report', 'Report for drama', '2023-05-01', 2);


INSERT INTO finances (title, filming_id, producer_id) VALUES
('Action Movie Budget', 1, 1),
('Drama Film Budget', 2, 2);


INSERT INTO process_filmings (filming_id, role_id) VALUES
(1, 1),
(2, 2),
(2, 3);


INSERT INTO decors (title, description, price, location_id, filming_id) VALUES
('City Street Set', 'Urban street set', 5000, 1, 1),
('Forest Set', 'Scenic forest set', 7000, 2, 2);


INSERT INTO transports (title, description, price) VALUES
('Action Movie Van', 'Transportation van', 1000),
('Drama Film Car', 'Film crew car', 800);


INSERT INTO transportings (location_id, transport_id) VALUES
(1, 1),
(2, 2);




INSERT INTO actors (name, surname, middle_name, date_birth, education, sex, phone_number)
VALUES ('Іван', 'Петров', 'Олександрович', '1990-05-15', 'Вища', 'Чоловіча', '+380991234567');

INSERT INTO actors (name, surname, middle_name, date_birth, education, sex, phone_number)
VALUES ('Марія', 'Іванова', 'Андріївна', '1985-12-10', 'Вища', 'Жіноча', '+380997654321');


INSERT INTO roles (title, actor_id)
VALUES ('Головна роль', 8);

INSERT INTO roles (title, actor_id)
VALUES ('Другорядна роль', 9);


INSERT INTO filmings (title, description, date, time, director_id)
VALUES ('Фільм 1', 'Це перший фільм', '2023-02-20', '12:00:00', 1);

INSERT INTO filmings (title, description, date, time, director_id)
VALUES ('Фільм 2', 'Це другий фільм', '2023-03-05', '15:30:00', 1);


INSERT INTO process_filmings (filming_id, role_id)
VALUES (1, 1);

INSERT INTO process_filmings (filming_id, role_id)
VALUES (1, 2);


INSERT INTO reports (title, description, date, filming_id)
VALUES ('Звіт 1', 'Опис звіту 1', '2023-02-21', 1);

INSERT INTO reports (title, description, date, filming_id)
VALUES ('Звіт 2', 'Опис звіту 2', '2023-03-06', 2);






INSERT INTO actors (name, surname, middle_name, date_birth, education, sex, phone_number)
VALUES ('Олена', 'Сидорова', 'Василівна', '1993-08-25', 'Вища', 'Жіноча', '+380991234567');

INSERT INTO actors (name, surname, middle_name, date_birth, education, sex, phone_number)
VALUES ('Андрій', 'Коваленко', 'Ігорович', '1988-04-12', 'Вища', 'Чоловіча', '+380997654321');

INSERT INTO actors (name, surname, middle_name, date_birth, education, sex, phone_number)
VALUES ('Ірина', 'Мельник', 'Андріївна', '1995-11-03', 'Середня', 'Жіноча', '+380993214567');


INSERT INTO roles (title, actor_id)
VALUES ('Третя роль', 10);

INSERT INTO roles (title, actor_id)
VALUES ('Додаткова роль', 11);

INSERT INTO roles (title, actor_id)
VALUES ('Роль без актора', NULL);


INSERT INTO filmings (title, description, date, time, director_id)
VALUES ('Фільм 3', 'Це третій фільм', '2023-04-10', '18:45:00', 2);

INSERT INTO filmings (title, description, date, time, director_id)
VALUES ('Фільм 4', 'Це четвертий фільм', '2023-05-02', '14:15:00', 2);

INSERT INTO filmings (title, description, date, time, director_id)
VALUES ('Фільм 5', 'Це пятий фільм', '2023-06-20', '20:00:00', 3);


INSERT INTO process_filmings (filming_id, role_id)
VALUES (2, 3);

INSERT INTO process_filmings (filming_id, role_id)
VALUES (3, 1);

INSERT INTO process_filmings (filming_id, role_id)
VALUES (3, 2);


INSERT INTO reports (title, description, date, filming_id)
VALUES ('Звіт 3', 'Опис звіту 3', '2023-04-12', 3);

INSERT INTO reports (title, description, date, filming_id)
VALUES ('Звіт 4', 'Опис звіту 4', '2023-05-25', 4);

INSERT INTO reports (title, description, date, filming_id)
VALUES ('Звіт 5', 'Опис звіту 5', '2023-06-22', 5);



UPDATE filmings
SET title = 'The Godfather'
WHERE id = 1;

UPDATE filmings
SET title = 'Schindler''s List'
WHERE id = 2;

UPDATE filmings
SET title = 'The Shawshank'
WHERE id = 3;

UPDATE filmings
SET title = 'The Lord'
WHERE id = 4;

UPDATE filmings
SET title = 'Titanic'
WHERE id = 5;


UPDATE filmings
SET title = 'Forrest Gump'
WHERE id = 7;

UPDATE filmings
SET title = 'The Matrix'
WHERE id = 8;

UPDATE filmings
SET title = 'Inception'
WHERE id = 9;

UPDATE filmings
SET title = 'The Dark Knight'
WHERE id = 10;


