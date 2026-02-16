SELECT
  athletes.athlete_name as "athlites",
  coaches.coache_name as "proponites"
FROM
  athletes,
  coaching,
  coaches
WHERE
  coaching.athlete_id = athletes.athlete_id
  AND coaching.coache_id = coaches.coache_id
  AND athletes.origin = "Greece"