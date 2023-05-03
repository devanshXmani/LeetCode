SELECT u.name, SUM(t.amount) as balance
FROM Users u
INNER JOIN Transactions t
ON u.account = t.account
GROUP BY u.account
HAVING SUM(t.amount) > 10000;
