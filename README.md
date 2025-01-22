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
   
   <img src="Code Outputs/total copies of the book.png"/>

3. current total loans of the book

4. total available book 

5. Check out Books

6. Check books for Due back generate a report of books due back on July 13, 2020 with patron contact information

7. Return books to the library

8. Encourage Patrons to check out books generate a report of showing 10 patrons who have checked out the fewest books.

9. Find books to feature for an event create a list of books from 1890s that are currently available

10. Book Statistics create a report to show how many books were  published each year.

11. create a report to show 5 most popular Books to check out

12. Find overdue loans

13. Find all loans made by a specific patron

14. List all patrons who have never borrowed a book

15. Find the most popular book (most loans)

16. Retrieve all loans with their return status

17. List books with no loans

18. Find loans that are due in the next 7 days

19. Retrieve all loans and their return dates, filtering for those that have been returned

20. Find the number of books loaned per year

21. List all loans with associated book titles and patron names 
   
