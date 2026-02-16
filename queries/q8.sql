SELECT
  coaches.coache_name,
  athletes.athlete_name,
  coaching.payment
FROM
  coaches,
  athletes,
  coaching
WHERE
  coaching.athlete_id = athletes.athlete_id
  AND coaching.coache_id = coaches.coache_id
ORDER BY
  payment DESC
LIMIT
  1