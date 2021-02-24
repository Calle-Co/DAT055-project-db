/*DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    username TEXT PRIMARY KEY UNIQUE,
    password TEXT NOT NULL
);

DROP TABLE IF EXISTS Admin;
CREATE TABLE Admin (
    username TEXT PRIMARY KEY UNIQUE,
    password TEXT NOT NULL
);*/

DROP TABLE IF EXISTS Seats;
DROP TABLE IF EXISTS Flights;
DROP TABLE IF EXISTS Destinations;
DROP TABLE IF EXISTS Travelers;
DROP TABLE IF EXISTS Planes;

CREATE TABLE Destinations (
    destination TEXT PRIMARY KEY UNIQUE,
    abbreviation CHAR(3) NOT NULL
);

CREATE TABLE Travelers (
    fullname TEXT PRIMARY KEY,
    age INT NOT NULL
);

CREATE TABLE Planes (
    model TEXT PRIMARY KEY,
    seats INT
);

CREATE TABLE Flights (
    flight_id SERIAL PRIMARY KEY,
    from_d TEXT NOT NULL,
    to_d TEXT NOT NULL,
    date_of DATE NOT NULL,
    time_of TIME NOT NULL,
    model TEXT NOT NULL,
    FOREIGN KEY (model) REFERENCES Planes(model),
    FOREIGN KEY (from_d) REFERENCES Destinations(destination),
    FOREIGN KEY (to_d) REFERENCES Destinations(destination)
);

CREATE TABLE Seats (
    flight_id INT,
    seat CHAR(3),
    isBooked BOOL NOT NULL,
    PRIMARY KEY (flight_id, seat),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO carlcla;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgres;