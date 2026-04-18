# Library-Management-System-sql
A basic Library Management System built using SQL to manage book records efficiently. It allows storing, retrieving, and updating data such as book details, issue records, and returns. Ideal for beginners to understand database operations and queries.
📚 Library Management System (SQL)

📌 Overview

This project is a simple Library Management System built using SQL. It helps manage books, members, and book issue records efficiently using relational database concepts.

🛠️ Features

- Add and manage books
- Store member details
- Issue and return books
- Maintain relationships using foreign keys
- Track available copies of books

🗄️ Database Structure

1. Books Table

Stores information about books:

- Book ID
- Title
- Author
- Available Copies

2. Members Table

Stores member details:

- Member ID
- Name
- Join Date

3. Issue Books Table

Tracks issued books:

- Issue ID
- Book ID (Foreign Key)
- Member ID (Foreign Key)
- Issue Date
- Return Date

🔗 Relationships

- Each issued book is linked to a specific book and member
- Foreign keys ensure data consistency

🚀 Sample Data

The project includes sample records for:

- Books
- Members
- Issued books

📖 Learning Outcomes

- Understanding SQL table creation
- Using primary and foreign keys
- Managing relational databases
- Writing basic queries

▶️ How to Run

1. Open MySQL or any SQL tool
2. Run the provided SQL script
3. Database and tables will be created automatically
4. Sample data will be inserted

💡 Future Improvements

- Add fine calculation
- Add search functionality
- Create user interface (Python/Java)

---

✨ This project is perfect for beginners learning SQL and database design.
