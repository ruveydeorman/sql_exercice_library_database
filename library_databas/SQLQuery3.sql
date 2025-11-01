USE library;
GO
INSERT INTO members(tc,name,surname,phone_number,email) VALUES
('12345678509','melisa','Orman','534-266-9926','melisaorman@gmail.com'),
('34567892031','zehra','orman', '567-893-9803','zehrormn@gmail.com'),
('12345678901', 'Ahmet', 'Yýlmaz', '555-111-2233', 'ahmet@email.com'),
('23456789012', 'Ayþe', 'Demir', '555-222-3344', 'ayse@email.com'),
('34567890123', 'Mehmet', 'Kaya', '555-333-4455', 'mehmet@email.com');

INSERT INTO books(isbn,book_name,author,publish_house,publish_year,stoc_count) VALUES
('978-605-123-456', 'Suç ve Ceza', 'Fyodor Dostoyevski', 'Ýþ Bankasý Kültür', 2020, 3),
('978-605-234-567', '1984', 'George Orwell', 'Can Yayýnlarý', 2019, 2),
('978-605-345-678', 'Küçük Prens', 'Antoine de Saint-Exupéry', 'Can Çocuk', 2021, 5);

INSERT INTO borrow(member_id,book_id,purchase_date,delivery_date) VALUES
(1, 1, '2024-01-15', '2024-02-15'),
(2, 2, '2024-01-20', '2024-02-20'),
(1, 3, '2024-01-25', '2024-02-25');