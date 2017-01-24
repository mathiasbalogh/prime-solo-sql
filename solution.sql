--1. Get all users from Chicago
SELECT * FROM syntax_practice
WHERE city = 'chicago';

--2. Get all users with usernames that contain the letter a.
SELECT * FROM syntax_practice
WHERE username LIKE '%a%';

--3.Update all records with an account balance of 0.00 and no transactions attempted with new 10.00 account balance.
UPDATE syntax_practice
SET account_balance = 10
WHERE account_balance = 0
AND transactions_attempted = 0;

--4. Select all users who have attempted 9 or more transactions.
SELECT * FROM syntax_practice
WHERE transactions_attempted >= 9;

--5. Get username and account_balance of users with 3 highest balances
SELECT * FROM syntax_practice
ORDER BY account_balance DESC LIMIT 3;

--6. Get username and account_balance of users with 3 lowest balances
SELECT * FROM syntax_practice
ORDER BY account_balance LIMIT 3;

--7. Get all users account_balance that are more than $100
SELECT * FROM syntax_practice
WHERE account_balance > 100;

--8. Add a new record
INSERT INTO syntax_practice(username, city, transactions_completed, transactions_attempted, account_balance)
 VALUES ('Mathias', 'St Paul', 7, 7, 1000000);

 --9. Delete users that reside in Miami OR Phoenix AND have completed fewer than 5 transactions
DELETE FROM syntax_practice
WHERE city = 'miami'
OR city = 'phoenix'
AND transactions_completed < 5;
