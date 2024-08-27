CREATE DATABASE IF NOT EXISTS scenario;

CREATE TABLE IF NOT EXISTS actors(
	id SERIAL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(40)NOT NULL,
    middle_name VARCHAR(30),
    date_birth DATE NOT NULL,
    education TEXT,
    sex VARCHAR(10) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS roles(
	id 	SERIAL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    PRIMARY KEY(ID),
    actor_id BIGINT UNSIGNED,
    UNIQUE(actor_id),
    CONSTRAINT fk_role_actor FOREIGN KEY(actor_id) REFERENCES actors(id)
);
ALTER TABLE roles
	DROP INDEX fk_role_actor, 
	ADD UNIQUE KEY fk_role_actor (actor_id);
CREATE TABLE IF NOT EXISTS employees(
	id SERIAL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    middle_name VARCHAR(30),
    num_of_hours INT,
    phone_number VARCHAR(15)NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS make_up_actors(
	actor_id BIGINT UNSIGNED,
    employee_id BIGINT UNSIGNED,
    CONSTRAINT fk_make_up_actor FOREIGN KEY(actor_id) REFERENCES actors(id),
    CONSTRAINT fk_make_up_employee FOREIGN KEY(employee_id) REFERENCES employees(id)
);
CREATE TABLE IF NOT EXISTS locations(
	id SERIAL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    description TEXT,
    square INT,
    adress VARCHAR(20),
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS location_settings(
	location_id BIGINT UNSIGNED,
    employee_id BIGINT UNSIGNED,
    CONSTRAINT fk_location_settings_location FOREIGN KEY(location_id) REFERENCES locations(id),
    CONSTRAINT fk_location_settings_employee FOREIGN KEY (employee_id) REFERENCES employees(id)
);
CREATE TABLE IF NOT EXISTS producers(
	id SERIAL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    middle_name VARCHAR(30),
    phone_number VARCHAR(15)NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS directors(
	id SERIAL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    middle_name VARCHAR(30),
    date_of_birth DATE,
    phone_number VARCHAR(15)NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS filmings(
	id SERIAL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    description TEXT,
    date DATE NOT NULL,
    time TIME,
    PRIMARY KEY(id),
    director_id BIGINT UNSIGNED,
    CONSTRAINT fk_filming_director FOREIGN KEY(director_id) REFERENCES directors(id)
);

CREATE TABLE IF NOT EXISTS reports(
	id SERIAL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    description TEXT,
    date DATE NOT NULL,
    PRIMARY KEY(id),
    filming_id BIGINT UNSIGNED,
    CONSTRAINT fk_report_filming FOREIGN KEY(filming_id) REFERENCES filmings(id)
);
CREATE TABLE IF NOT EXISTS finances(
	id SERIAL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    filming_id BIGINT UNSIGNED,
    producer_id BIGINT UNSIGNED,
    CONSTRAINT fk_finance_filming FOREIGN KEY(filming_id) REFERENCES filmings(id),
	CONSTRAINT fk_finance_producer FOREIGN KEY(producer_id) REFERENCES producers(id)
);
CREATE TABLE IF NOT EXISTS process_filmings(
	id SERIAL AUTO_INCREMENT,
    PRIMARY KEY(id),
	filming_id BIGINT UNSIGNED,
    role_id BIGINT UNSIGNED,
    CONSTRAINT fk_process_filmings_filming FOREIGN KEY(filming_id) REFERENCES filmings(id),
    CONSTRAINT fk_process_filmings_role FOREIGN KEY (role_id) REFERENCES roles(id)
);
CREATE TABLE IF NOT EXISTS decors(
	id SERIAL AUTO_INCREMENT,
    PRIMARY KEY(id),
    title VARCHAR(15)NOT NULL,
    description TEXT,
    price INT NOT NULL ,
	location_id BIGINT UNSIGNED,
    filming_id BIGINT UNSIGNED,
    CONSTRAINT fk_decors_location FOREIGN KEY(location_id) REFERENCES locations(id),
    CONSTRAINT fk_decors_filming FOREIGN KEY (filming_id) REFERENCES filmings(id)
);
CREATE TABLE IF NOT EXISTS transports(
	id SERIAL AUTO_INCREMENT,
    title VARCHAR(20) NOT NULL,
    description TEXT,
    price INT,
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS transportings(
	location_id BIGINT UNSIGNED,
    transport_id BIGINT UNSIGNED,
    CONSTRAINT fk_transportings_location FOREIGN KEY(location_id) REFERENCES locations(id),
    CONSTRAINT fk_transportings_transport_id FOREIGN KEY (trasport_id) REFERENCES transports(id)
);








