-- Table: Login
CREATE TABLE Login (
    UserID INT PRIMARY KEY,
    Password VARCHAR(255) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES CreateAccount(UserID)
);

-- Table: Create Account
CREATE TABLE CreateAccount (
    UserID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

-- Table: Car
CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    CarName VARCHAR(100) NOT NULL,
    Make VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(50) NOT NULL,
    AvailabilityStatus VARCHAR(20) NOT NULL
);

-- Table: Customer
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    BookingTime TIME NOT NULL,
    BookingDate DATE NOT NULL,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES CreateAccount(UserID)
);
