SELECT
  C.coache_name,
  B.payment,
  A.athlete_name
FROM
  coaching B,
  coaches C,
  athletes A
WHERE
  C.coache_name = (
    SELECT
      C.coache_name
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
  )
  AND B.athlete_id = A.athlete_id
  AND B.coache_id = C.coache_id