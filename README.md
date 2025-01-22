# Library Analytics

## Overview
Library Analytics is a data analytics project aimed at analyzing library data using SQL. This project utilizes three main tables: **Books**, **Loans**, and **Patrons** to derive insights about library usage, book availability, and patron activity.

## Tables
### 1. Books
- **book_id**: Unique identifier for each book
- **title**: Title of the book
- **author**: Author of the book
- **publication_year**: Year the book was published
- **barcode**: Unique barcode for the book

### 2. Loans
- **loan_id**: Unique identifier for each loan
- **book_id**: Reference to the book being loaned
- **patron_id**: Reference to the patron borrowing the book
- **loan_date**: Date the book was loaned
- **due_date**: Date the book is due back
- **return_date**: Date the book was returned

### 3. Patrons
- **patron_id**: Unique identifier for each patron
- **first_name**: Patron's first name
- **last_name**: Patron's last name
- **email**: Patron's email address

## Queries
1. check total copies of the book 

2. current total loans of the book

3. total available book 

4. Check out Books

5. Check books for Due back generate a report of books due back on July 13, 2020 with patron contact information

6. Return books to the library

7. Encourage Patrons to check out books generate a report of showing 10 patrons who have checked out the fewest books.

8. Find books to feature for an event create a list of books from 1890s that are currently available

9. Book Statistics create a report to show how many books were  published each year.

10. create a report to show 5 most popular Books to check out

11. Find overdue loans

12. Find all loans made by a specific patron

13. List all patrons who have never borrowed a book

14. Find the most popular book (most loans)

15. Retrieve all loans with their return status

16. List books with no loans

17. Find loans that are due in the next 7 days

18. Retrieve all loans and their return dates, filtering for those that have been returned

19. Find the number of books loaned per year

20. List all loans with associated book titles and patron names 
   
