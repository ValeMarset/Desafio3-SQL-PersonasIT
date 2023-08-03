SELECT subquery.hacker_id, h.name, SUM(max_score) AS total_score
FROM (
    SELECT s.hacker_id, s.challenge_id, MAX(s.score) AS max_score
    FROM Submissions AS s
    GROUP BY s.hacker_id, s.challenge_id
) AS subquery
INNER JOIN Hackers AS h ON subquery.hacker_id = h.hacker_id
GROUP BY subquery.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, subquery.hacker_id ASC