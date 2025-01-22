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

### 2. Tools Used 

<img src="Code Outputs/my sql logo (1).png"/>

### 3. Loans
- **loan_id**: Unique identifier for each loan
- **book_id**: Reference to the book being loaned
- **patron_id**: Reference to the patron borrowing the book
- **loan_date**: Date the book was loaned
- **due_date**: Date the book is due back
- **return_date**: Date the book was returned

### 4. Patrons
- **patron_id**: Unique identifier for each patron
- **first_name**: Patron's first name
- **last_name**: Patron's last name
- **email**: Patron's email address

## Queries
1. check total copies of the book
   
<img src="Code Outputs/total copies of the book.png"/>

2. current total loans of the book

<img src="Code Outputs/current total loans of.png"/>

3. total available book

<img src="Code Outputs/total available books.png"/>

4. Check out Books

<img src="Code Outputs/check out books.png"/>

5. Check books for Due back generate a report of books due back on July 13, 2020 with patron contact information

<img src="Code Outputs/books for due back.png"/>

6. Encourage Patrons to check out books generate a report of showing 10 patrons who have checked out the fewest books.

<img src="Code Outputs/encrourage patrons .png"/>

7. Find books to feature for an event create a list of books from 1890s that are currently available

<img src="Code Outputs/books to feature for even.png"/>

8. Book Statistics create a report to show how many books were  published each year.

<img src="Code Outputs/book statistics.png"/>

9. create a report to show 5 most popular Books to check out

<img src="Code Outputs/create a report to show 5 most.png"/>

10. Find overdue loans

<img src="Code Outputs/find overdues loans.png"/>

11. Find all loans made by a specific patron

<img src="Code Outputs/all loans made by a specific patron.png"/>

12. List all patrons who have never borrowed a book

<img src="Code Outputs/list all patron who have never borrowed.png"/>

13. Find the most popular book (most loans)

<img src="Code Outputs/most popular books.png"/>

14. Retrieve all loans with their return status

<img src="Code Outputs/retrive all loans with their return.png"/>

15. List books with no loans

<img src="Code Outputs/list book with no loans.png"/>

16. Find loans that are due in the next 7 days

<img src="Code Outputs/find loans due in  7 days.png"/>

17. Retrieve all loans and their return dates, filtering for those that have been returned

<img src="Code Outputs/all loans and their return date.png"/>

18. Find the number of books loaned per year

<img src="Code Outputs/number of books loaned per year.png"/>

