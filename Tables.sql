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
/*
DROP TABLE IF EXISTS Seats;
DROP TABLE IF EXISTS Flights;
DROP TABLE IF EXISTS Destinations;
DROP TABLE IF EXISTS Planes;

CREATE TABLE Destinations (
    destination TEXT PRIMARY KEY UNIQUE,
    abbreviation CHAR(3) NOT NULL
);
*/
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
    customer TEXT,
    seat CHAR(3),
    isBooked BOOL NOT NULL,
    traveler TEXT,
    age INT,
    PRIMARY KEY (flight_id, customer, seat),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (customer) REFERENCES Customers(username)
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO carlcla;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgres;