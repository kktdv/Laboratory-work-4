CREATE TABLE User (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL CHECK (name ~ '^[A-Za-z]{1,50}$'),
    email VARCHAR(100) NOT NULL CHECK (email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    phone CHAR(10) NOT NULL CHECK (phone ~ '^\d{10}$')
);

CREATE TABLE Class (
    id INT PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    schedule VARCHAR(200),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE Filter (
    id INT PRIMARY KEY,
    danceType VARCHAR(50) NOT NULL,
    time CHAR(5) CHECK (time ~ '^(?:[01]\d|2[0-3]):[0-5]\d$'),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE ApplicationForm (
    id INT PRIMARY KEY,
    status ENUM('Подана', 'Розглядається', 'Затверджена', 'Відхилена') NOT NULL,
    submissionDate DATE NOT NULL CHECK (submissionDate <= CURRENT_DATE),
    user_id INT,
    personalData_id INT,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (personalData_id) REFERENCES PersonalData(id)
);

CREATE TABLE PersonalData (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL CHECK (name ~ '^[A-Za-z]{1,50}$'),
    surname VARCHAR(50) NOT NULL CHECK (surname ~ '^[A-Za-z]{1,50}$'),
    contactDetails VARCHAR(200) NOT NULL,
    applicationForm_id INT,
    FOREIGN KEY (applicationForm_id) REFERENCES ApplicationForm(id)
);CREATE TABLE User (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL CHECK (name ~ '^[A-Za-z]{1,50}$'),
    email VARCHAR(100) NOT NULL CHECK (email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    phone CHAR(10) NOT NULL CHECK (phone ~ '^\d{10}$')
);

CREATE TABLE Class (
    id INT PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    schedule VARCHAR(200),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE Filter (
    id INT PRIMARY KEY,
    danceType VARCHAR(50) NOT NULL,
    time CHAR(5) CHECK (time ~ '^(?:[01]\d|2[0-3]):[0-5]\d$'),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE ApplicationForm (
    id INT PRIMARY KEY,
    status ENUM('Подана', 'Розглядається', 'Затверджена', 'Відхилена') NOT NULL,
    submissionDate DATE NOT NULL CHECK (submissionDate <= CURRENT_DATE),
    user_id INT,
    personalData_id INT,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (personalData_id) REFERENCES PersonalData(id)
);

CREATE TABLE PersonalData (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL CHECK (name ~ '^[A-Za-z]{1,50}$'),
    surname VARCHAR(50) NOT NULL CHECK (surname ~ '^[A-Za-z]{1,50}$'),
    contactDetails VARCHAR(200) NOT NULL,
    applicationForm_id INT,
    FOREIGN KEY (applicationForm_id) REFERENCES ApplicationForm(id)
);
