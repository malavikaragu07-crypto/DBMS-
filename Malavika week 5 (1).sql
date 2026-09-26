USE CLOTHING_STORE;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID)
);

INSERT INTO Payment VALUES
(601, 401, 'UPI', '2026-09-01', 1300, 'SUCCESS'),
(602, 402, 'CARD', '2026-09-02', 1299, 'SUCCESS'),
(603, 403, 'CASH', '2026-09-03', 1798, 'SUCCESS'),
(604, 404, 'UPI', '2026-09-04', 1499, 'FAILED'),
(605, 405, 'CARD', '2026-09-05', 1999, 'SUCCESS'),
(606, 406, 'CASH', '2026-09-06', 1598, 'SUCCESS'),
(607, 407, 'UPI', '2026-09-07', 1499, 'SUCCESS'),
(608, 408, 'CARD', '2026-09-08', 2398, 'FAILED'),
(609, 409, 'CASH', '2026-09-09', 899, 'SUCCESS'),
(610, 410, 'UPI', '2026-09-10', 798, 'SUCCESS'),
(611, 411, 'CARD', '2026-09-11', 699, 'SUCCESS'),
(612, 412, 'CASH', '2026-09-12', 1598, 'FAILED'),
(613, 413, 'UPI', '2026-09-13', 899, 'SUCCESS'),
(614, 414, 'CARD', '2026-09-14', 998, 'SUCCESS'),
(615, 415, 'CASH', '2026-09-15', 1999, 'SUCCESS'),
(616, 416, 'UPI', '2026-09-16', 2998, 'FAILED'),
(617, 417, 'CARD', '2026-09-17', 699, 'SUCCESS'),
(618, 418, 'CASH', '2026-09-18', 1799, 'SUCCESS'),
(619, 419, 'UPI', '2026-09-19', 798, 'SUCCESS'),
(620, 420, 'CARD', '2026-09-20', 1950, 'FAILED');

SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'SUCCESS'
WHERE PaymentID = 604;

SELECT * FROM Payment
WHERE PaymentID = 604;

SELECT *
FROM Payment
WHERE PaymentStatus = 'SUCCESS';

SELECT *
FROM Payment
WHERE PaymentStatus = 'FAILED';

SELECT *
FROM Payment
WHERE PaymentMode = 'UPI';

SELECT *
FROM Payment
WHERE PaymentMode = 'CARD';

SELECT *
FROM Payment
WHERE PaymentMode = 'CASH';

SELECT PaymentMode, COUNT(*) AS No_Of_Transactions
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode, SUM(PaymentAmount) AS Total_Amount_Received
FROM Payment
WHERE PaymentStatus = 'SUCCESS'
GROUP BY PaymentMode;