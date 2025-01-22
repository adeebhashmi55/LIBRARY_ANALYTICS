create schema library;

use library;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,                -- Unique ID for each book
    title VARCHAR(255) NOT NULL,            -- Title of the book
    author VARCHAR(255) NOT NULL,           -- Author's name
    publication_year INT NOT NULL,          -- Year of publication
    barcode VARCHAR(13) NOT NULL               -- ISBN number of the book
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,               -- Unique ID for each loan
    book_id INT NOT NULL,                  -- ID of the book being loaned
    patron_id INT NOT NULL,                -- ID of the patron borrowing the book
    loan_date DATE NOT NULL,               -- Date when the loan was initiated
    due_date DATE NOT NULL,                -- Due date for the loan
    return_date DATE                       -- Date when the book was returned (optional, can be NULL if not returned)
);

CREATE TABLE Patron (
    patron_id INT PRIMARY KEY,            -- Unique ID for each patron
    first_name VARCHAR(100) NOT NULL,     -- First name of the patron
    last_name VARCHAR(100) NOT NULL,      -- Last name of the patron
    email VARCHAR(255) NOT NULL           -- Email address of the patron
);

CREATE TABLE sqlite_sequence (
    name varchar(100) PRIMARY KEY,    -- Name of the table with AUTOINCREMENT
    seq INTEGER NOT NULL      -- Last used sequence number for the table
);

alter TABLE patron (
    first_name VARCHAR(100) NOT NULL,     -- First name of the patron
    last_name VARCHAR(100) NOT NULL,      -- Last name of the patron
    email VARCHAR(255) NOT NULL 
    patron_id INT PRIMARY KEY,
