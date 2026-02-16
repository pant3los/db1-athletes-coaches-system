SELECT
  origin as country,
  AVG(coache_age) as average_age
FROM
  coaches
GROUP BY
  origin