SELECT
  C.coache_name,
  SUM(B.payment)
FROM
  coaching B,
  coaches C
WHERE
  B.coache_id = C.coache_id
GROUP BY
  C.coache_name
ORDER BY
  SUM(B.payment) DESC
LIMIT
  1