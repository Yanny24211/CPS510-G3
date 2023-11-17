#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "yspatel/05182555@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
SELECT
  SUBSTR(first_name, 1, 20) AS FIRST_NAME, 
  SUBSTR(last_name, 1, 20) AS LAST_NAME, 
  SUBSTR(nationality, 1, 20) AS NATIONALITY,
  SUBSTR(director_description, 1, 100) AS FILM_STYLE 
FROM 
  director d
WHERE nationality = 'American'
ORDER BY first_name;

SELECT
  SUBSTR(m.title, 1, 30) AS movie_title,
  SUBSTR(d.first_name || ' ' || d.last_name, 1, 30) AS director, 
  SUBSTR(g.genre, 1, 20) AS genre,
  SUBSTR(TO_CHAR (m.release_date, 'YYYY-MM-DD'),1,50) AS release
FROM
  movie m
JOIN
  director d ON m.director_id = d.director_id
JOIN
  genre g ON m.genre_id = g.genre_id
ORDER BY
  m.release_date;

SELECT
  SUBSTR(u.username,1,20) AS username,
  SUM(b.order_total) AS total_spent
FROM
  theUser u
JOIN 
  billing b ON u.user_id = b.user_id
GROUP BY
  u.username;
  
SELECT
  SUBSTR(d.first_name || ' ' || d.last_name, 1, 30) AS director,
  AVG(m.rating) AS avg_rating
FROM
  movie m
JOIN
  director d ON m.director_id = d.director_id
GROUP BY
  d.first_name, d.last_name
ORDER BY
  avg_rating DESC
  
SELECT
  SUBSTR(g.genre, 1, 20) AS genre,
  COUNT(*) AS movie_count,
  AVG(m.rating) AS avg_rating
FROM
  movie m
JOIN
  genre g ON m.genre_id = g.genre_id
GROUP BY
  g.genre;
  
SELECT
  SUBSTR(TO_CHAR(b.bill_date, "YYYY-MM-DD'),1,25) AS bill_date, 
  SUBSTR(u.username, 1, 20) AS username,
  SUBSTR(b.movies_pur, 1, 70) AS movies_purchased,
  SUBSTR(b.order_total, 1, 20) AS ORDER_TOTAL
FROM
  billing b
JOIN
  theUser ON b.user_id = u.user_id
ORDER BY
  b.bill_date DESC

SELECT
  SUBSTR(u.username, 1, 20) AS username,
  u.current_points,
  SUM(b.order_total) AS total_spent
FROM
  theUser u
JOIN
  billing b ON u.user_id = b.user_id
GROUP BY
  u.username, u.current_points
ORDER BY
  u.current_points DESC;

exit;