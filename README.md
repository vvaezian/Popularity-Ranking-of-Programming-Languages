## Logic

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

### Objective C
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

### VB.NET
```sql
tags like '%vb.net%'
```

## DB

### MySQL
```sql
tags like '%mysql%'
or tags like '%mariadb%'
```

### Oracle
```sql
tags like '%oracle%'
or tags like '%plsql%'
```

### PostgreSQL
```sql
tags like '%pgsql%' 
or tags like '%postgresql%'
```

### SQL Server
```sql
tags like '%tsql%' 
or tags like '%sql-server%'
```

### SQL (All)
```sql
tags like '%sql%' 
and tags not like '%nosql%'
```

### NoSQL (All)
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



