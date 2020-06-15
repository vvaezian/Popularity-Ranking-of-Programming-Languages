### Question Count
```sql
SELECT DATEADD(DAY, DATEDIFF(DAY, 0, creationdate), 0) date, 
  '{}' programming_language,
  SUM(CASE WHEN tags LIKE '%{}%' then 1 else 0 end) question_count
FROM posts 
WHERE posttypeid = 1
GROUP BY DATEADD(DAY, DATEDIFF(DAY, 0, creationdate), 0)
```

### View Count
```sql
SELECT DATEADD(DAY, DATEDIFF(DAY, 0, creationdate), 0) date
  , '{}' programming_language
  , SUM(viewcount/(DATEDIFF(HOUR, creationdate, [latest_timestamp]) / 24.0)) avg_viewcount
FROM posts
WHERE posttypeid = 1 
AND tags LIKE '%{}%'
AND creationdate < '2020-05-01'--DATEADD(DAY, DATEDIFF(DAY, 0, getdate()) - 1, 0)
GROUP BY DATEADD(DAY, DATEDIFF(DAY, 0, creationdate), 0)
