SELECT *
FROM sample_transactions
WHERE transaction_type = 'Wire'
AND amount > 10000;
