SELECT
  coache_age as "young_coache_italy"
FROM
  coaches
WHERE
  origin = 'Italy'
ORDER BY
  coache_age ASC
LIMIT
  1