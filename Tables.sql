CREATE TABLE Customers (
    username TEXT PRIMARY KEY UNIQUE,
    password TEXT NOT NULL,
);

CREATE TABLE Admin (
    username TEXT PRIMARY KEY UNIQUE,
    password TEXT NOT NULL
);

CREATE TABLE Destinations (
    destination TEXT PRIMARY KEY
);

CREATE TABLE Travelers (
    fullname TEXT PRIMARY KEY,
    age INT NOT NULL
);

CREATE TABLE Planes (
    model TEXT PRIMARY KEY,
    seats INT NOT NULL
);