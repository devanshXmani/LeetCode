SELECT
  score,
  (SELECT COUNT(*) FROM (SELECT distinct score s FROM Scores) CTE WHERE s >= score) 'Rank'
FROM Scores
ORDER BY Score DESC
