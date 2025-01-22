--- check total copies of the book 
SELECT *, COUNT(book_id) AS TotalCopies
FROM books
WHERE title LIKE '%Dracula%'
group by book_id;

--- current total loans of the book 
SELECT *, COUNT(loan_id) AS TotalLoans
FROM Loans
WHERE book_id IN (
	SELECT book_id FROM Books WHERE Title LIKE '%Dracula%'
)
AND return_date IS NULL
group by loan_id;


--- total available book 

SELECT
	(SELECT COUNT(book_id) AS TotalCopies
	FROM Books
	WHERE Title LIKE '%Dracula%')
	-
	(SELECT COUNT(loan_id) AS TotalLoans
	FROM Loans
	WHERE book_id IN (
		SELECT book_id FROM Books WHERE Title LIKE '%Dracula%'
	)
	AND return_date IS NULL)
AS AvailableBooks;


--- Check out Books                                     


SELECT * FROM Loans
ORDER BY loan_id DESC
LIMIT 5;


--- Check books for Due back                             
--- generate a report of books due back on July 13, 2020 
--- with patron contact information                      

SELECT p.first_name, p.last_name, p.Email, b.Title, l.Loan_date, l.due_date
FROM Loans l
JOIN Books b ON l.book_id = b.book_id
JOIN Patron p ON l.patron_id = p.patron_id
WHERE l.due_date = '2020-07-13'
AND return_date IS NULL;



--- Return books to the library                         

SELECT * FROM Loans
WHERE book_id IN (SELECT book_id FROM Books
WHERE Barcode = 6435968624)
AND return_date IS NULL;

UPDATE Loans
SET return_date = '2020-07-05'
WHERE book_id IN 
	(SELECT book_id FROM Books WHERE Barcode = 6435968624)
AND return_date IS NULL;


--- Encourage Patrons to check out books                
--- generate a report of showing 10 patrons who have
--- checked out the fewest books. 
                         
SELECT p.First_name, p.Last_name, p.Email, COUNT(p.Patron_id) AS Total_Loans
FROM Patron p
LEFT JOIN Loans l
ON p.Patron_id = l.Patron_id
GROUP BY p.Patron_id
ORDER BY 4 ASC
LIMIT 10;



--- Find books to feature for an event                  
--- create a list of books from 1890s that are
--- currently available 
                                   
SELECT b.book_id, b.Title, b.Author, b.Publication_year, COUNT(b.book_id) AS TotalAvailableBooks
FROM Books b
LEFT JOIN Loans l
ON b.book_id = l.book_id
WHERE return_date IS NOT NULL
AND b.Publication_year BETWEEN 1890 AND 1899
GROUP BY b.book_id
ORDER BY b.book_id;


--- Book Statistics 
--- create a report to show how many books were 
--- published each year.
                                   
SELECT Publication_year, COUNT(DISTINCT(Title)) AS TotalNumberOfPublishedBooks
FROM Books
GROUP BY Publication_year
ORDER BY TotalNumberOfPublishedBooks DESC;



--- Book Statistics                                           
--- create a report to show 5 most popular Books to check out 

SELECT b.title,b.author,b.publication_year, COUNT(b.title) AS TotalTimesOfLoans
FROM books b
JOIN loans l 
ON b.book_id = l.book_id
GROUP BY b.title,b.author,b.publication_year
ORDER BY 4 DESC
LIMIT 5;

--- Find overdue loans 

SELECT l.loan_id, b.title, CONCAT(p.first_name, ' ', p.last_name) AS patron_name, l.due_date
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN patron p ON l.patron_id = p.patron_id
WHERE l.return_date IS NULL AND l.due_date < CURDATE();

--- Find all loans made by a specific patron

SELECT l.loan_id, b.title, l.loan_date, l.due_date
FROM loans l
JOIN books b ON l.book_id = b.book_id
WHERE l.patron_id = 1;  -- Replace 1 with the desired patron_id

--- List all patrons who have never borrowed a book 

SELECT p.first_name, p.last_name
FROM patron p
LEFT JOIN loans l ON p.patron_id = l.patron_id
WHERE l.loan_id IS NULL;

--- Find the most popular book (most loans)

SELECT b.title, COUNT(l.loan_id) AS total_loans
FROM books b
JOIN loans l ON b.book_id = l.book_id
GROUP BY b.title
ORDER BY total_loans DESC
LIMIT 1;

--- Retrieve all loans with their return status

SELECT l.loan_id, b.title, CONCAT(p.first_name, ' ', p.last_name) AS patron_name, 
       IF(l.return_date IS NULL, 'Not Returned', 'Returned') AS return_status
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN patron p ON l.patron_id = p.patron_id;

--- List books with no loans

SELECT b.title
FROM books b
LEFT JOIN loans l ON b.book_id = l.book_id
WHERE l.loan_id IS NULL;

--- Find loans that are due in the next 7 days

SELECT l.loan_id, b.title, CONCAT(p.first_name, ' ', p.last_name) AS patron_name, l.due_date
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN patron p ON l.patron_id = p.patron_id
WHERE l.due_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

--- Retrieve all loans and their return dates, filtering for those that have been returned

SELECT l.loan_id, b.title, CONCAT(p.first_name, ' ', p.last_name) AS patron_name, l.return_date
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN patron p ON l.patron_id = p.patron_id
WHERE l.return_date IS NOT NULL;

--- Find the number of books loaned per year

SELECT YEAR(loan_date) AS loan_year, COUNT(l.loan_id) AS total_loans
FROM loans l
GROUP BY loan_year
ORDER BY loan_year;

--- List all loans with associated book titles and patron names

SELECT l.loan_id, b.title, CONCAT(p.first_name, ' ', p.last_name) AS patron_name
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN patron p ON l.patron_id = p.patron_id;