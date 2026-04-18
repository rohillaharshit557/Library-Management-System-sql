drop table issue_books;
drop table members;
drop table books;
-- Create Database
CREATE DATABASE library_db;
USE library_db;

-- Books Table
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(50),
    available_copies INT
);

-- Members Table
CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    join_date DATE
);

-- Issue Table
CREATE TABLE issue_books (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- Insert Data
INSERT INTO books (title, author, available_copies) VALUES
('Python Basics', 'John Doe', 5),
('SQL Mastery', 'Jane Smith', 3),
('Data Science 101', 'David Lee', 4);

INSERT INTO members (name, join_date) VALUES
('Rahul', '2024-01-10'),
('Aman', '2024-02-15'),
('Sneha', '2024-03-20');

INSERT INTO issue_books (book_id, member_id, issue_date, return_date) VALUES
(1, 1, '2024-04-01', '2024-04-10'),
(2, 2, '2024-04-05', NULL),
(3, 3, '2024-04-07', '2024-04-15');

show tables;
# kaunsi book kisne li
SELECT m.name, b.title, i.issue_date
FROM issue_books i
JOIN members m ON i.member_id = m.member_id
JOIN books b ON i.book_id = b.book_id;


# kaunsi books abhi return nhi hui

SELECT m.name, b.title
FROM issue_books i
JOIN members m ON i.member_id = m.member_id
JOIN books b ON i.book_id = b.book_id
WHERE i.return_date IS NULL;


 # total books count
 
 SELECT SUM(available_copies) AS total_books FROM books;
