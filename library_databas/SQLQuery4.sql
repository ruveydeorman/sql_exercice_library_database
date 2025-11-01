USE library;
GO


SELECT * FROM members WHERE surname= 'orman';
SELECT book_name ,author,publish_year FROM books WHERE publish_year > 2020
SELECT book_name,stoc_count FROM books WHERE stoc_count > 2;
SELECT DISTINCT publish_house FROM books;
SELECT DISTINCT member_id FROM borrow;
SELECT member_id,book_id FROM borrow;