SELECT
  origin,
  AVG(coache_age)
FROM
  coaches
GROUP BY
  origin
HAVING
  COUNT(origin) >= 2