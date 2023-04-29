SELECT stock_name, SUM(sell_price - buy_price) AS capital_gain_loss
FROM (
  SELECT stock_name, operation_day, price AS sell_price, 
         (
           SELECT price 
           FROM Stocks AS S2 
           WHERE S1.stock_name = S2.stock_name 
             AND S2.operation = 'Buy' 
             AND S2.operation_day < S1.operation_day 
           ORDER BY operation_day DESC 
           LIMIT 1
         ) AS buy_price
  FROM Stocks AS S1 
  WHERE operation = 'Sell'
) AS T
GROUP BY stock_name;
