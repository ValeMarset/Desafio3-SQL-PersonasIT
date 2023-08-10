# Desafío 3 SQL

## Ejercicio 1:

Esta consulta SQL extrae los nombres de las ciudades en Estados Unidos con una población superior a 120,000 habitantes. La condición utilizada en la cláusula WHERE asegura que solo se seleccionen las ciudades cuyo código de país sea 'USA' y su población sea mayor a 120,000.

## Ejercicio 2:

Esta consulta SQL calcula el promedio de población de todas las ciudades en el distrito 'California'. La función AVG() se utiliza para calcular el valor promedio de la población de las ciudades que cumplen con la condición especificada en la cláusula WHERE. En este caso, se están considerando todas las ciudades que pertenecen al distrito 'California' para obtener el promedio de su población.

## Ejercicio 3:

Esta consulta SQL presentó un desafío considerable y me demandó un extenso período de tiempo y esfuerzo. Mi enfoque fue descomponer la consigna en fragmentos más manejables y abordar cada uno de manera incremental para entender y resolver cada componente.

Comencé con una subconsulta que tenía como objetivo principal obtener los IDs de los hackers y los IDs de los desafíos en la tabla "Submissions". Utilicé la función MAX() para determinar el puntaje máximo que un hacker había obtenido en cada desafío en particular. Este enfoque permitió tener una vista de los puntajes máximos por hacker y desafío, preparando el terreno para el cálculo del puntaje total en la consulta principal.

En la consulta principal, seleccioné el ID del hacker y su nombre al realizar un JOIN con la tabla "Hackers" utilizando la correspondencia entre los campos "hacker_id". Utilicé la función SUM() para agregar los puntajes máximos calculados en la subconsulta, lo que resultó en el puntaje total de cada hacker.

Siguiendo las instrucciones de la consigna, filtré los resultados utilizando la cláusula HAVING para mostrar solo los puntajes totales mayores a cero. Luego, ordené los resultados utilizando ORDER BY, primero por puntaje total en orden descendente y, en caso de empate, por ID de hacker en orden ascendente.

Durante el proceso de resolución, recurrí a diversos recursos para comprender las cláusulas y funciones utilizadas. Utilicé inteligencias artificiales, como ChatGPT, para obtener resúmenes de las cláusulas y ejemplos que aceleraron mi comprensión. También consulté con un amigo con experiencia en SQL, quien brindó orientación y asesoramiento a medida que avanzaba.

Este desafío fue gratificante, ya que pude llegar a una solución sin recurrir a la copia y pegado de soluciones existentes. Aunque recibí asistencia, logré entender cada paso y concepto involucrado en la consulta, lo que me dejó satisfecha con mi logro.

## Ejercicio 4:

Al abordar esta consulta, opté por comenzar seleccionando la tabla "Submissions" como la fuente principal (FROM), dado que contiene información crucial como el "challenge_id", necesario para acceder a los datos de puntuación en la tabla "Difficulty". Al establecer la relación entre "challenge_id" en "Submissions" y "challenge_id" en "Challenges", pude obtener detalles específicos del desafío que cada hacker realizó. Posteriormente, mediante una segunda relación con la tabla "Difficulty" a través de "difficulty_level" en "Challenges", accedí al nivel de dificultad correspondiente y su puntuación ("score").

La estrategia de resolución implicó la implementación de tres INNER JOIN para enlazar las tablas. Primero, relacioné "Submissions" con "Challenges" para acceder a los detalles del desafío en cuestión. Luego, utilicé la relación con "Difficulty" para obtener el nivel de dificultad y su puntuación. Por último, establecí una conexión entre "Submissions" y "Hackers" para acceder al nombre del hacker.

Una vez que reuní esta información, empleé la cláusula WHERE para filtrar las puntuaciones de "Submissions" que fueran iguales a la puntuación máxima en "Difficulty" (d.score). Esto aseguró que solo se seleccionaran las presentaciones que hubieran alcanzado la puntuación máxima para su nivel de dificultad.

Continuando, apliqué un filtro HAVING para mostrar únicamente los hackers que habían enviado más de un desafío con puntuación máxima. Mi enfoque se centró en aquellos hackers que habían logrado este éxito en múltiples desafíos.

Finalmente, procedí a la ordenación mediante la cláusula ORDER BY. Primero, ordené en función del "número total de desafíos" utilizando la función COUNT(s.challenge_id) para contar los desafíos de cada hacker. Esta elección fue respaldada por el filtro HAVING, que garantizaba que solo se consideraran hackers con más de un desafío. En caso de empates en el "número total de desafíos", la ordenación se realizó en función del "hacker_id" en orden ascendente.
