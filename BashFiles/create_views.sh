#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "yspatel/05182555@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
CREATE VIEW movie_info AS 
SELECT
  m.title AS movie_title,
  m.runtime,
  m.rating,
  m.movie_description,
  m.thecost AS Purchase_Cost,
  g.genre
FROM
  movie m
JOIN
  genre g ON m.genre_id = g.genre_id;

SELECT
  SUBSTR(m.title, 1,45) AS movie_title,
  m.runtime,
  m.rating,
  SUBSTR (m.movie_description, 1, 100) AS short_description,
  m.thecost AS Purchase_Cost,
  g.genre
FROM
  movie m
JOIN
  genre g ON m.genre_id = g.genre_id;

CREATE VIEW user_membership_status AS
SELECT
  u.username,
  u.current_points,
  CASE
    WHEN u.current_points >= 500 THEN 'Gold'
    WHEN u.current_points >= 300 THEN 'Silver'
    ELSE 'Bronze'
  END AS membership_status
FROM
  theUser u;

SELECT * FROM (
  SELECT
  SUBSTR (u.username, 1, 15) AS username,
  SUM(b.order_total) AS total_purchase_amount
  FROM theUser u
  JOIN billing b ON u.user_id = b.user_id
  GROUP BY u.username
  ORDER BY total_purchase_amount DESC
) WHERE ROWNUM <= 3;

SELECT
  SUBSTR(u.username, 1, 20) AS username,
  SUBSTR(TRUNC(MONTHS_BETWEEN(SYSDATE, u.date_of_birth)/12) + 1, 1, 10) AS age_range,
  AVG(b.order_total) AS average_purchase_amount
FROM theUser u
JOIN billing b ON u.user_id = b.user_id
GROUP BY u.username, TRUNC(MONTHS_BETWEEN(SYSDATE, u.date_of_birth)/12)
ORDER BY age_range;

CREATE VIEW top_rated_movies AS
SELECT
  m.title AS movie_title,
  m.rating
FROM
  movie m
WHERE
  m.rating >= 8.0;

SELECT *
FROM (
  SELECT
  SUBSTR (pc.company_name, 1, 20) AS production_company,
  AVG(m.rating) AS average_rating  
  FROM movie m
  JOIN productioncompany pc ON m. company_id = pc.company_id
  GROUP BY pc.company_name
  ORDER BY average_rating DESC
)
WHERE ROWNUM <= 1;

exit;