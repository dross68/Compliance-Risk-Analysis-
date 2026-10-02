SELECT *
FROM sample_transactions
WHERE transaction_type = 'Wire'
AND amount > 10000;
-- Query 2: Find transactions with disputes
SELECT *
FROM sample_transactions
WHERE dispute_flag = 'Yes';
-- Query 3: Find transactions with complaints
SELECT *
FROM sample_transactions
WHERE complaint_flag = 'Yes';
-- Query 4: Find customers with multiple transactions
SELECT customer_id, COUNT(*) AS transaction_count
FROM sample_transactions
GROUP BY customer_id
HAVING COUNT(*) > 1;
