CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone CHAR(10) NOT NULL
);

CREATE TABLE Classes (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    schedule VARCHAR(200),
    user_id INT REFERENCES Users(id)
);

CREATE TABLE Filters (
    id SERIAL PRIMARY KEY,
    dance_type VARCHAR(50) NOT NULL,
    time CHAR(5),
    user_id INT REFERENCES Users(id)
);

CREATE TYPE application_status AS ENUM ('Подана', 'Розглядається', 'Затверджена', 'Відхилена');

CREATE TABLE ApplicationForms (
    id SERIAL PRIMARY KEY,
    status application_status NOT NULL,
    submission_date DATE NOT NULL,
    user_id INT REFERENCES Users(id),
    personal_data_id INT
);

CREATE TABLE PersonalData (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    contact_details VARCHAR(200) NOT NULL,
    application_form_id INT REFERENCES ApplicationForms(id)
);


CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone CHAR(10) NOT NULL
);

CREATE TABLE Classes (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    schedule VARCHAR(200),
    user_id INT REFERENCES Users(id)
);

CREATE TABLE Filters (
    id SERIAL PRIMARY KEY,
    dance_type VARCHAR(50) NOT NULL,
    time CHAR(5),
    user_id INT REFERENCES Users(id)
);

CREATE TYPE application_status AS ENUM ('Подана', 'Розглядається', 'Затверджена', 'Відхилена');

CREATE TABLE ApplicationForms (
    id SERIAL PRIMARY KEY,
    status application_status NOT NULL,
    submission_date DATE NOT NULL,
    user_id INT REFERENCES Users(id),
    personal_data_id INT
);

CREATE TABLE PersonalData (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    contact_details VARCHAR(200) NOT NULL,
    application_form_id INT REFERENCES ApplicationForms(id)
);
