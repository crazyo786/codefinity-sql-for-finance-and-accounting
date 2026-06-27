-- Write your code here
SELECT transaction_date, amount, description,
    SUM(amount) OVER(ORDER BY transaction_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
    AS running_total
FROM transactions
WHERE category = 'Expense'
ORDER BY transaction_date 
