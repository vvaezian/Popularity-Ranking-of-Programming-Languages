---------------------------
---- Popularity Index  ----
---------------------------
-- Average of the following three measures.


------------------------
---- Question Count ----
------------------------
-- First we calculate question count for each programming language for each day
SELECT DATEADD(DAY, DATEDIFF(DAY, 0, CreationDate), 0) Date
  , '{}' Programming_Language
  , COUNT(*) Question_Count
FROM Posts 
WHERE PostTypeId = 1
AND Tags LIKE '%{}%'
GROUP BY DATEADD(DAY, DATEDIFF(DAY, 0, CreationDate), 0)

--Then we average over the given granularity (Yearly/Quarterly/Monthly) 


--------------------
---- View Count ----
--------------------
-- First we calculate the normalized view count for each programming language for each day
SELECT DATEADD(DAY, DATEDIFF(DAY, 0, CreationDate), 0) date
  , '{}' programming_language
  , SUM(ViewCount/(DATEDIFF(HOUR, creationdate, [latest_timestamp]) / 24.0)) Normalized_ViewCount
FROM Posts
WHERE PostTypeId = 1 
AND Tags LIKE '%{}%'
GROUP BY DATEADD(DAY, DATEDIFF(DAY, 0, CreationDate), 0)

--Then we average over the given granularity (Yearly/Quarterly/Monthly) 


------------------------------
---- Distinct Users Count ----
------------------------------
-- First we calculate number of distinct users for each programming language for each day
WITH users AS (
  -- users who asked a question with the given tag
  SELECT DATEADD(DAY, DATEDIFF(DAY, 0, creationdate), 0) date, OwnerUserId user_id
  FROM posts
  WHERE tags LIKE '%{}%'
  UNION ALL
  -- users who answered to the questions with the given tag
  SELECT DATEADD(DAY, DATEDIFF(DAY, 0, p2.creationdate), 0) date, p2.OwnerUserId user_id
  FROM posts p1 left join posts p2 on p1.id = p2.parentid
  WHERE p1.tags LIKE '%{}%'
  UNION ALL
  -- users who made an edit to the questions with the given tag
  SELECT DATEADD(DAY, DATEDIFF(DAY, 0, LastEditDate), 0) date, LastEditorUserId user_id
  FROM posts
  WHERE tags LIKE '%{}%'
  UNION ALL
  -- users who made an edit to the answers of questions with the given tag
  SELECT DATEADD(DAY, DATEDIFF(DAY, 0, p2.LastEditDate), 0) date, p2.LastEditorUserId user_id
  FROM posts p1 left join posts p2 on p1.id = p2.parentid
  WHERE p1.tags LIKE '%{}%'
  UNION ALL
  -- users who commented under questions with the given tag
  SELECT DATEADD(DAY, DATEDIFF(DAY, 0, c.creationdate), 0) date, c.userid user_id
  FROM posts p join comments c on p.id = c.postid 
  WHERE p.tags LIKE '%{}%'
  UNION ALL
  -- users who commented under answers to questions with the given tag
  SELECT DATEADD(DAY, DATEDIFF(DAY, 0, c.creationdate), 0) date, c.userid user_id
  FROM posts p2 right join posts p1 on p1.id = p2.parentid
                      join comments c on p2.id = c.postid 
  WHERE p1.tags LIKE '%{}%'
  )
SELECT date, '{}' programming_language, COUNT(DISTINCT user_id) distinct_users_count
FROM users
GROUP BY date

--Then we average over the given granularity (Yearly/Quarterly/Monthly) 
                                                 
