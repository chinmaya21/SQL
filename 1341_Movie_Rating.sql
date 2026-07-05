1341_Movie_Rating.sql

SELECT name AS results
FROM (
    SELECT
        u.name,
        COUNT(*) AS cnt
    FROM Users u
    JOIN MovieRating mr
        ON u.user_id = mr.user_id
    GROUP BY u.user_id, u.name
    ORDER BY cnt DESC, u.name
    LIMIT 1
) U

UNION ALL

SELECT title AS results
FROM (
    SELECT
        m.title,
        AVG(mr.rating) AS avg_rating
    FROM Movies m
    JOIN MovieRating mr
        ON m.movie_id = mr.movie_id
    WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
    GROUP BY m.movie_id, m.title
    ORDER BY avg_rating DESC, m.title
    LIMIT 1
) V