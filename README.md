[![HitCount](http://hits.dwyl.com/vvaezian/https://githubcom/vvaezian/Popularity-of-Programming-Languages.svg)](http://hits.dwyl.com/vvaezian/https://githubcom/vvaezian/Popularity-of-Programming-Languages)
[![Suggestions&BugReports_Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)](https://githubcom/vvaezian/Popularity-of-Programming-Languages/issues)

- ### How are the measures calculated?
  - **Average ViewCount:** For posts having relevant tags, each post's viewcount is divided by the number of days it has been posted, which results in average viewcount of that post. Then these numbers are averaged over the given granularity (Yearly, Quarterly, Monthly).
  - **Question Count:** The number of posts with the relevant tag is calculated. Then these numberes are summed over the given granularity (Yearly, Quarterly, Monthly).
  - **Average Daily Count of Distinct Users:** In each day the number of distinct users who have asked or answered a question in the relevant tags is calculated. Then it is averaged over the given granularity (Yearly, Quarterly, Monthly).
  - **Total Views:** Total number of views for the questions in the relevant tags (limited to the given timerange). The granularity filter doesn't apply to this card.
  - **Total Question:** Total number of questions with the relevant tags (limited to the given timerange). The granularity filter doesn't apply to this card.
  
- ### Which tags are used for each programming language?

### C
```sql
tags like '%<c>%'
```

### C++
```sql
tags like '%c++%'
```

### C#
```sql
tags like '%c#%'
```

### Clojure
```sql
tags like '%clojure%'
```

### CSS
```sql
tags like '%css%'
```


### DB - MySQL
```sql
tags like '%mysql%'
or tags like '%mariadb%'
```

### DB - Oracle
```sql
tags like '%oracle%'
or tags like '%plsql%'
```

### DB - PostgreSQL
```sql
tags like '%pgsql%' 
or tags like '%postgresql%'
```

### DB - SQL Server
```sql
tags like '%tsql%' 
or tags like '%sql-server%'
```

### DB - SQL (All)
```sql
(tags like '%sql%' 
or tags like '%oracle%'
or tags like '%mariadb%')
and tags not like '%nosql%'
```

### DB - NoSQL (All)
```sql
tags like '%nosql%'
or tags like '%mongodb%'
or tags like '%dynamodb%'
or tags like '%cassandra%'
or tags like '%redis%'
or tags like '%hbase%' -- captures '%couchbase%' as well
or tags like '%neo4j%'
or tags like '%arangodb%'
```

### Haskell
```sql
tags like '%haskell%'
```

### HTML
```sql
tags like '%html%'
```

### Java
```sql
(tags like '%java%' and tags not like '%javascript%')  -- java but not javascript
or (tags like '%javascript%' and tags like '%java[^s]%')  -- java and javascript
or tags like '%spring%'
or tags like '%jsf%'
or tags like '%gwt%'
or tags like '%vaadin%'
or tags like '%struts%'
or tags like '%hibernate%'
or tags like '%dropwizard%'
```

### Java (Mobile)
```sql
tags like '%java%' 
and tags like '%android%' 
and tags not like '%kotlin%'
```

### Javascript
```sql
tags like '%javascript%' 
or tags like '%jquery%' 
or tags like '%js>%' -- tag ends with js
or tags like '%extjs%'  -- includes extjs4 and others
```

### Julia
```sql
tags like '%julia%'
```

### Kotlin
```sql
tags like '%kotlin%'
```

### Objective-C
```sql
tags like '%objective-c%'
```

### Perl
```sql
tags like '%<perl%'  -- starts with perl (excluding hyPERLink, ...)
```

### PHP
```sql
tags like '%php%'
```

### Python
```sql
(tags like '%py%' and tags not like '%jupyter%' and tags not like '%copy%' and tags not like '%Capybara%' ) 
or (tags like '%py[^t]%' and tags like '%jupyter%')  -- i.e. it is not just jupyter, it has something else py-like as well
or (tags like '%py[^>-]%' and tags like '%copy%') 
or tags like '%pandas%'
or tags like '%keras%'
or tags like '%django%'
or tags like '%flask%'
```

### R
```sql
tags like '%<r>%'
or tags like '%rstudio%'
or tags like '%shiny%'
```

### Ruby
```sql
tags like '%ruby%'
```

### Scala
```sql
(tags like '%scala%' and tags not like '%scalability%') 
or (tags like '%scala%' and tags like '%scalability%')
```

### Swift
```sql
tags like '%swift%'
```

### VB.NET
```sql
tags like '%vb.net%'
```



