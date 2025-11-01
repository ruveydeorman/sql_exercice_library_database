USE library;
GO
SELECT 
     m.name AS member_name,
     m.surname AS member_surname,
     b.book_name,
     b.author,
     o.purchase_date,
     o.delivery_date
     FROM borrow o
INNER JOIN members m ON o.member_id = m.member_id
INNER JOIN books b ON o.book_id =  b.book_id;

SELECT 
      m.name,
      m.surname,
      b.book_name,
      o.purchase_date
FROM members m
LEFT JOIN borrow o ON m.member_id = o.member_id
LEFT JOIN books b ON o.book_id = b.book_id

