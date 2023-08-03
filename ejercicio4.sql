SELECT s.hacker_id, h.name
FROM Submissions AS s
INNER JOIN Challenges AS c ON s.challenge_id = c.challenge_id
INNER JOIN Difficulty AS d ON c.difficulty_level = d.difficulty_level
INNER JOIN Hackers AS h ON s.hacker_id = h.hacker_id
WHERE s.score = d.score --Acá me aseguro que se seleccionen solo los envíos que han alcanzado el puntaje máximo para su nivel de dificultad.
GROUP BY s.hacker_id, h.name
HAVING COUNT(s.challenge_id) > 1 --Acá me aseguro que el hacker haya tenido más de un challenge con puntaje máximo 
ORDER BY COUNT(s.challenge_id) DESC, s.hacker_id ASC --Acá ordeno de manera descendente por la cantidad de challenges enviados por lo hackers, si empatan en cantidad de challenges ordenará de manera ascendente.