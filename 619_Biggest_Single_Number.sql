SELECT
        MAX(num) AS num
FROM
(
        SELECT
                COUNT(num) AS count_num,
                num
        FROM
                mynumbers
        GROUP BY num
)AS SubQuery
WHERE SubQuery.count_num = 1;
